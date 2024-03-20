open Printf
open Maps
open Binary_untyped

exception AstConvert of string
exception TraceAstConvert

let rec pure_expr_convert (vars : string list) (old_e : Raw_ast.expr) : expr
   =
   match old_e with
   | Raw_ast.Atom s ->
     (match (List.exists ((=) s) vars) with
      | true -> Var s
      | false -> Constant s
     )
   | ScopeVar _ -> raise (AstConvert "scope var in pure expr")
   | Hole -> raise (AstConvert "hole in pure expr")
   | App ("apply", [a; b]) ->
     App (pure_expr_convert vars a, pure_expr_convert vars b)
   | App (name, lst) ->
     NaryApp (name, (List.map (pure_expr_convert vars) lst))
   | Let _ -> raise (AstConvert "let in pure expr")
   | Scope _ -> raise (AstConvert "scope in pure expr")

let get_backptr scope_list =
  match scope_list with
  | [] -> None
  | (_, i) :: _ -> Some i

let error_str_scope_list scope_list =
  scope_list
  |> List.map (fun (s, i) -> sprintf "%s:%d" s i)
  |> String.concat ", "
  |> sprintf "[%s]"

let rec find_scope_assumption
  (orig_list : (string * int) list)
  (scope_list : (string * int) list)
  (name : string)
  : int =
  match scope_list with
  | [] ->
    let msg =
      sprintf "could not find scopevar %s in listify. scope_list: %s"
        name (error_str_scope_list orig_list) in
    fprintf stderr "%s\n" msg;
    raise TraceAstConvert
  | (name2, i) :: _ when name2 = name -> i
  | _ :: tail -> find_scope_assumption orig_list tail name

let debug_stack_trace
  (bound_vars : int StrMap.t)
  (scope_list : (string * int) list)
  (old_e : Raw_ast.expr)
  : string =
  let bv_str =
    bound_vars
    |> StrMap.bindings
    |> List.map (fun (s, i) -> sprintf "%s:%d" s i)
    |> String.concat ", "
    |> sprintf "bv=[%s]" in
  let scope_list = sprintf "sl=%s" (error_str_scope_list scope_list) in
  let e_str =
    match old_e with
    | Atom s -> sprintf "e:(atom %s)" s
    | ScopeVar s -> sprintf "e:(sv %s)" s
    | Hole -> sprintf "e:hole"
    | App (name, _) -> sprintf "e:(app %s)" name
    | Let (_, _, _, name, _) -> sprintf "e:(let %s)" name
    | Scope (_, _, name, _) -> sprintf "e:(scope %s)" name in
  sprintf "%s ; %s ; %s" bv_str scope_list e_str

(*
Arguments:
- prog: what we have assembled of the program so far
- bound_vars: maps variables from let expressions to the clause number with
  the result of the let expression.
- scope_list: maps variables from scope expressions to the clause number with
  the assumption of the scope expression. Head is the innermost scope.
- old_e: an AST whose nodes will be traversed postorder and added as commands
  to prog.
 *)
let rec convert_cmd_expr
  (prog : prog)
  (prog_cmd_list_len : int) (* Explicitly stored for performance reasons *)
  (bound_vars : int StrMap.t)
  (scope_list : (string * int) list)
  (old_e : Raw_ast.expr)
  : prog * int * int =
  try
    match old_e with
    | Raw_ast.Atom name ->
      (match StrMap.find_opt name bound_vars with
       | None ->
         let msg =
           sprintf "atom name %s in cmd expr, not in bound vars" name in
         raise (AstConvert msg)
       | Some i -> prog, prog_cmd_list_len, i
      )
    | ScopeVar name ->
      prog, prog_cmd_list_len, find_scope_assumption scope_list scope_list name
    | Hole -> raise (AstConvert "hole in cmd expr")
    | App (name, expr_list) ->
      let rule_spec =
        (match name = "euf_cong", StrMap.find_opt name Expect.rule_args with
         | true, _ ->
           List.init (List.length expr_list) (fun i ->
               if i = 0 then
                 Expect.ArgExpr
               else
                 ArgHyp
             )
         | false, None -> raise (AstConvert (sprintf "command %s not found" name))
         | false, Some rs -> rs
        ) in
      let starting_cmd = {
        name;
        expr_args = [];
        hyp_args = [];
        backptr = get_backptr scope_list
      } in
      let prog, prog_cmd_list_len, cmd =
        dispatch_cmd_arg_list
          prog prog_cmd_list_len bound_vars scope_list expr_list rule_spec starting_cmd in
      let cmd_list = cmd :: prog.cmd_list in
      let prog_cmd_list_len = prog_cmd_list_len + 1 in
      let latest = prog_cmd_list_len - 1 in
      {prog with cmd_list}, prog_cmd_list_len, latest
    | Let (Hole, Hole, arg_expr, name, body_expr) ->
      if StrMap.mem name bound_vars then
        raise (AstConvert "plet causes variable name shadowing")
      else
        let prog, prog_cmd_list_len, latest =
          convert_cmd_expr prog prog_cmd_list_len bound_vars scope_list arg_expr in
        let bound_vars = StrMap.add name latest bound_vars in
        convert_cmd_expr prog prog_cmd_list_len bound_vars scope_list body_expr
    | Let _ ->
      raise (AstConvert "Ill formed let expression")
    | Scope (Hole, assumption, name, subproof) ->
      let assm_cmd = {
        name = "scope_assume";
        expr_args = [pure_expr_convert prog.vars assumption];
        hyp_args = [];
        backptr = get_backptr scope_list
      } in
      let prog = {prog with cmd_list = assm_cmd :: prog.cmd_list} in
      let prog_cmd_list_len = prog_cmd_list_len + 1 in
      let assn_num = prog_cmd_list_len - 1 in
      let inner_scope_list =
        (name, assn_num) :: scope_list in
      let prog, prog_cmd_list_len, latest =
        convert_cmd_expr prog prog_cmd_list_len bound_vars inner_scope_list subproof in
      let discharge_cmd = {
        name = "scope_discharge";
        expr_args = [];
        hyp_args = [Derived assn_num; Derived latest];
        backptr = get_backptr scope_list
      } in
      let cmd_list = discharge_cmd :: prog.cmd_list in
      let prog_cmd_list_len = prog_cmd_list_len + 1 in
      let latest = prog_cmd_list_len - 1 in
      {prog with cmd_list}, prog_cmd_list_len, latest
    | Scope _ ->
      raise (AstConvert "Ill formed scope expression")
  with
  | TraceAstConvert ->
    let stack_msg = debug_stack_trace bound_vars scope_list old_e in
    fprintf stderr "listify stack trace:\n  %s\n" stack_msg;
    raise TraceAstConvert

(*
(* Debug printing of parallel arguments *)
and prnt (args : Raw_ast.expr list) (arg_types : arg_type list) : unit =
  let a =
    args
    |> List.map Raw_ast.show_expr
    |> String.concat ", " in
  let b =
    arg_types
    |> List.map show_arg_type
    |> String.concat ", " in
  printf "flag:\n  %s\n  %s\n" a b *)

(*
Arguments:
- prog: what we have assembled of the program so far
- bound_vars: maps variables from let expressions to the clause number with
  the result of the let expression.
- scope_list: maps variables from scope expressions to the clause number with
  the assumption of the scope expression. Head is the innermost scope.
- args & arg_types: lists of arguments which still need to be processed and how
  to process them. If there are hypothesis arguments, they need to be traversed
  & added to prog. Once an arg is processed, it is added to cmd as well.
- cmd: a command we are currently assembling
    *)
and dispatch_cmd_arg_list
  (prog : prog)
  (prog_cmd_list_len : int) (* Explicitly stored for performance reasons *)
  (bound_vars : int StrMap.t)
  (scope_list : (string * int) list)
  (args : Raw_ast.expr list)
  (arg_types : Expect.arg_type list)
  (cur_cmd : cmd)
  : prog * int * cmd =
  match arg_types, args with
  | [], [] -> prog, prog_cmd_list_len, cur_cmd
  | [], _ ->
    let msg = sprintf "arg len mismatch: too many. cmd: %s" (show_cmd cur_cmd) in
    raise (AstConvert msg)
  | _, [] ->
    let msg = sprintf "arg len mismatch: too few. cmd: %s" (show_cmd cur_cmd) in
    raise (AstConvert msg)
  | (ArgHole :: argty_tail), (Hole :: arg_tail) ->
    dispatch_cmd_arg_list
      prog prog_cmd_list_len bound_vars scope_list arg_tail argty_tail cur_cmd
  | (ArgHole :: _), _ ->
    let msg = sprintf "Expected _, found expression in command %s" cur_cmd.name in
    raise (AstConvert msg)
  | (ArgExpr :: argty_tail), (old_e :: arg_tail) ->
    let expr = pure_expr_convert prog.vars old_e in
    let expr_args = cur_cmd.expr_args @ [expr] in
    let cur_cmd = {cur_cmd with expr_args} in
    dispatch_cmd_arg_list
      prog prog_cmd_list_len bound_vars scope_list arg_tail argty_tail cur_cmd
  | (ArgHyp :: argty_tail), (e :: arg_tail) ->
    (match e with
     | Atom name ->
       (match StrMap.find_opt name bound_vars, StrMap.mem name prog.premises with
        | Some hyp_num, false ->
          let hyp_args = cur_cmd.hyp_args @ [Derived hyp_num] in
          let cur_cmd = {cur_cmd with hyp_args} in
          dispatch_cmd_arg_list
            prog prog_cmd_list_len bound_vars scope_list arg_tail argty_tail cur_cmd
        | None, true ->
          let hyp_args = cur_cmd.hyp_args @ [Premise name] in
          let cur_cmd = {cur_cmd with hyp_args} in
          dispatch_cmd_arg_list
            prog prog_cmd_list_len bound_vars scope_list arg_tail argty_tail cur_cmd
        | None, false ->
          let msg =
            sprintf "cmd arg %s not found in premises or bound variables" name in
          raise (AstConvert msg)
        | Some _, true ->
          let msg =
            sprintf "cmd arg %s found in both premises and bound variables" name in
          raise (AstConvert msg)
       )
     | _ ->
       let prog, prog_cmd_list_len, latest =
         convert_cmd_expr prog prog_cmd_list_len bound_vars scope_list e in

       let hyp_args = cur_cmd.hyp_args @ [Derived latest] in
       let cur_cmd = {cur_cmd with hyp_args} in

       dispatch_cmd_arg_list
         prog prog_cmd_list_len bound_vars scope_list arg_tail argty_tail cur_cmd
    )

let fetch_backptr hyp_ref cmd_list =
  match hyp_ref with
  | Premise _ -> None
  | Derived i ->
    let cmd = Elist.nth cmd_list i in
    if cmd.name = "scope_assume" then
      Some i
    else
      cmd.backptr

(* Returns a hyp_ref with the same conclusion as the given hyp_ref, but ensured *)
(* to be in the ctx specified by backptr. If weakening commands are necessary *)
(* to make this so, return the list of them.*)
let rec backptrs2
  (cmd_list : cmd Elist.t) (* The program's command list *)
  (hyp_ref : hyp_ref) (* A clause which must be concluded in a specific context *)
  (backptr : int option) (* The ctx that hyp_ref needs to be valid in *)
  (next_cmd : int) (* If a command is to be added, it will have this number *)
  : (cmd list) * hyp_ref = (* The weaken steps to make it so, and the ref for
   the hypothesis in the correct ctx. *)
  let target_backptr = fetch_backptr hyp_ref cmd_list in
  match (target_backptr = backptr), backptr with
  | true, _ -> [], hyp_ref
  | false, None -> raise (AstConvert "cannot weaken into empty ctx")
  | false, Some i ->
    let cmd = Elist.nth cmd_list i in
    (if cmd.name <> "scope_assume" then
       raise (AstConvert "backpointer to non-assumption")
    );
    let weaken_steps, new_hyp_ref =
      backptrs2 cmd_list hyp_ref cmd.backptr next_cmd in
    let weaken_cmd = {
      name = "weaken_scope";
      expr_args = [];
      hyp_args = [new_hyp_ref];
      backptr = backptr
    } in
    let cmd_num = next_cmd + (List.length weaken_steps) in
    weaken_cmd :: weaken_steps, (Derived cmd_num)

let rec ensure_hyp_args
  (cmd_list : cmd Elist.t) (* The program's command list *)
  (hyp_ref_list : hyp_ref list) (* A list of hyp_refs, possibly with incorrect ctxs *)
  (backptr : int option) (* The current ctx *)
  (next_cmd : int) (* If a command will be added, this is its clauseid *)
  (* Returns: any newly added weakening steps, and hyp_ref_list where any
     elements with the wrong ctx have been replaced by versions with the correct ctx. *)
  : (cmd list) * (hyp_ref list) =
  match hyp_ref_list with
  | [] -> [], []
  | head :: tail ->
    let weaken_steps, hyp_ref = backptrs2 cmd_list head backptr next_cmd in
    let rest_cmd_list, rest_hyp_ref =
      ensure_hyp_args
        cmd_list tail backptr (next_cmd + (List.length weaken_steps)) in
    (rest_cmd_list @ weaken_steps), (hyp_ref :: rest_hyp_ref)

let update_hyp_ref (update_map : int IntMap.t) h : hyp_ref =
  match h with
  | Premise s -> Premise s
  | Derived i -> (**Derived (IntMap.find i update_map) *)
    match IntMap.find_opt i update_map with
    | None ->
      printf "couldn't find %d\n" i;
      printf "len bindings: %d\n" (List.length (IntMap.bindings update_map));
      update_map
      |> IntMap.bindings
      |> List.map (fun (k, b) -> sprintf "%d:%d\n" k b)
      |> String.concat "\n"
      |> print_endline;
      raise Not_found
    | Some x -> Derived x

let shift_cmd cmd (update_map : int IntMap.t) : cmd =
  {
    name = cmd.name;
    expr_args = cmd.expr_args;
    hyp_args = List.map (update_hyp_ref update_map) cmd.hyp_args;
    backptr =
      match cmd.backptr with
      | None -> None
      | Some i -> Some (IntMap.find i update_map)
  }

(* Insert weaken steps as necessary to have all hyp_args have correct back pointers. *)
let rec weakening
  (cmd_list : cmd Elist.t) (* Result so far *)
  (to_weaken : cmd list) (* Commands yet to be corrected *)
  (update_map : int IntMap.t) (* Old clauseids -> new clauseids *)
  (orig_num : int) (* Clauseid of the next command, pre-shift *)
  : cmd Elist.t =
  match to_weaken with
  | [] -> cmd_list
  | head :: tail ->
    (* Account for shifting first. *)
    let head = shift_cmd head update_map in

    (* Check if this command needs any weakening *)
    let weaken_steps, hyp_args =
      if head.name = "scope_discharge" then
        (* As a special case, scope_discharge never needs weakening. *)
        [], head.hyp_args
      else
        ensure_hyp_args
          cmd_list head.hyp_args head.backptr (Elist.length cmd_list) in
    let head = {head with hyp_args} in

    let cmd_list = Elist.rev_app cmd_list (List.rev weaken_steps @ [head]) in
    let to_weaken = tail in
    let update_map =
      IntMap.add orig_num ((Elist.length cmd_list) - 1) update_map in
    let orig_num = orig_num + 1 in
    weakening cmd_list to_weaken update_map orig_num

let listify (prog : Raw_ast.prog) : prog =
  (if prog.temps <> [] then
     fprintf stderr "warning: non-empty temps passed to listify\n"
  );

  (* Convert premises. *)
  let premises =
    prog.premises
    |> List.map (fun (name, e) -> name, pure_expr_convert prog.vars e)
    |> map_of_bindings in

  (* Confirm conclusion is false *)
  let conclusion_expr = pure_expr_convert prog.vars prog.conclusion in
  (match conclusion_expr with
  | Constant "false" -> ()
  | _ -> fprintf stderr "warning: conclusion is not false");

  let init_prog = {
    vars = prog.vars;
    premises;
    cmd_list = []
  } in
  let prog, _prog_cmd_list_len, latest =
    convert_cmd_expr
      init_prog (List.length init_prog.cmd_list) StrMap.empty [] prog.derivation in
  (* Correction: reverse the command list. *)
  let prog = {prog with cmd_list = List.rev prog.cmd_list} in
  (if latest <> (List.length prog.cmd_list)-1 then
     fprintf stderr "Warning: conclusion is not from last step in listify"
  );

  update_time "listify 50%";

  (* Make corrections for backpointers. *)
  let cmd_list = weakening Elist.nil prog.cmd_list IntMap.empty 0 in
  (* Correction: reverse the command list. *)
  let cmd_list = Elist.to_list cmd_list in
  {prog with cmd_list}
