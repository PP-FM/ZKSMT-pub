open Binary_untyped
open Expect
open Maps
open Printf

(* Invariant: hyp_results (an in progress list of results of type inference) is *)
(* reversed for performance reasons: if you want to access element i, access *)
(* elment (len-1-i) instead. *)

exception InfException of string

let sgn_map = Expect.init_sgn_map ()

let rec infer
  (map : expr StrMap.t)
  (expect_expr : expect * expr)
  : expr StrMap.t =
  let expect, expr = expect_expr in
  match (expr, expect) with
  | Constant s1, ExpConstant s2 ->
    if s1 = s2 then
      map
    else
      raise (InfException "constant mismatch in infer")
  | _, ExpFiller s ->
    (match StrMap.find_opt s map with
     | None ->
       StrMap.add s expr map
     | Some e1 ->
       (if not (expr = e1) then
          let lhs_string = noindent_str_of_expr expr in
          let rhs_string = noindent_str_of_expr e1 in
          fprintf stderr "Warning: discover variable conflict between:\n  %s\n  %s\n"
            lhs_string rhs_string; raise Not_found

       );
       map
    )
  | App (expr1, expr2), ExpApp (expect1, expect2) ->
    let map = infer map (expect1, expr1) in
    let map = infer map (expect2, expr2) in
    map
  | NaryApp (s1, expr_list), ExpNaryApp (s2, expect_list) ->
    (if s1 <> s2 then
       fprintf stderr "Warning: function mismatch, %s vs %s\n" s1 s2
    );
    let expect_expr_list = List.combine expect_list expr_list in
    List.fold_left infer map expect_expr_list
  | _ ->
    raise (InfException "mismatch in infer")

let rec fillout
  (map : expr StrMap.t)
  (expect : expect)
  : expr =
  match expect with
  | ExpConstant s -> Constant s
  | ExpFiller s ->
    (match StrMap.find_opt s map with
     | Some e -> e
     | None -> raise (InfException (sprintf "unfilled variable %s" s))
    )
  | ExpApp (e1, e2) -> App (fillout map e1, fillout map e2)
  | ExpNaryApp (name, expect_list) ->
    NaryApp (name, List.map (fillout map) expect_list)

let expr_of_hyp_ref
    (premises : expr StrMap.t)
    (hyp_results : expr Elist.t)
    h : expr =
  try
  match h with
  | Premise s -> StrMap.find s premises
  | Derived i ->
    Elist.nth hyp_results i
  with
  | a ->
    Printf.printf "expr_of_hyp_ref failure: len %d\n" (Elist.length hyp_results);
    raise a

let infer_side_condition
    (map : expr StrMap.t)
    (sc : side_condition)
    : expr StrMap.t =
  let args = List.map (fillout map) sc.args in
  let fn = StrMap.find sc.fn_name Expect.sc_eval_map in
  let result = fn args in
  infer map (sc.result_expect, result)

(* Debug check to see if scope_discharge is problematic *)
let rec has_or_form e =
  match e with
  | Constant "false" -> true
  | NaryApp ("or", [_; tail]) -> has_or_form tail
  | _ -> false

let infer_cmd
    (premises : expr StrMap.t)
    (hyp_results : expr Elist.t)
    (cmd : cmd)
  : expr =
  (**try *)
  match cmd.name, cmd.expr_args, cmd.hyp_args with
  | "scope_assume", [e1], [] ->
    e1
  | "scope_assume", _, _ ->
    raise (InfException "scope_assume incorrect arguments")
  | "scope_discharge", [], [assn_ref; result_ref] ->
    let assn_expr = expr_of_hyp_ref premises hyp_results assn_ref in
    let result_expr = expr_of_hyp_ref premises hyp_results result_ref in
    (if not (has_or_form result_expr) then
       (print_endline "flag1";
        printf
          "Warning: non-or form in scope discharge:\n%s\n%s\n"
          (str_of_cmd cmd)
          (noindent_str_of_expr result_expr);
        ())
        (* (* Debugging snippet *)
        print_endline "flag";
        let _i_lst =
          List.filter_map
            (fun h -> match h with Derived i -> Some i | _ -> None) cmd.hyp_args in
        if true then
          (*raise (TempException i_lst)*)
          ()
        else ()) *)
    );
    NaryApp ("or", [NaryApp ("not", [assn_expr]); result_expr])
  | "scope_discharge", _, _ ->
    raise (InfException "scope_discharge incorrect arguments")
  | "weaken_scope", [], [hyp_ref] ->
    expr_of_hyp_ref premises hyp_results hyp_ref
  | "weaken_scope", _, _ ->
    raise (InfException "weaken_scope incorrect arguments")
  | "euf_cong", [Var name], hyp_args ->
    let hyp_exprs =
      List.map (expr_of_hyp_ref premises hyp_results) hyp_args in
    let fst_arg e =
      match e with
      | NaryApp ("=", [a; _]) -> a
      | _ -> raise (InfException "non-eq arg to euf_cong") in
    let snd_arg e =
      match e with
      | NaryApp ("=", [_; b]) -> b
      | _ -> raise (InfException "non-eq arg to euf_cong") in
    let arglist1 = List.map fst_arg hyp_exprs in
    let arglist2 = List.map snd_arg hyp_exprs in
    let rec curry lhs rhs =
      match rhs with
      | [] -> lhs
      | arg :: rhs -> curry (App (lhs, arg)) rhs in
    let arg1 = curry (Var name) arglist1 in
    let arg2 = curry (Var name) arglist2 in
    NaryApp ("=", [arg1; arg2])
  | "euf_cong", _, _ ->
    print_endline (str_of_cmd cmd);
    raise (InfException "ill-formed euf_cong")
  | _ ->
    let sgn =
      match StrMap.find_opt cmd.name sgn_map with
      | None ->
        let msg = sprintf "unknown rule %s\n" cmd.name in
        raise (InfException msg)
      | Some x -> x in
    let pure_exprs = cmd.expr_args in
    let hyp_exprs =
      List.map (expr_of_hyp_ref premises hyp_results) cmd.hyp_args in
    let expect_expr_list =
      (List.combine sgn.pure_args pure_exprs) @
      (List.combine sgn.hyp_args hyp_exprs) in
    let map = List.fold_left infer StrMap.empty expect_expr_list in
    let map = List.fold_left infer_side_condition map sgn.sc_list in
    fillout map sgn.result

(* (* Old debugging snippet *)
      printf "failed side condition\n";
      let i_lst = List.filter_map
          (fun h -> match h with Derived i -> Some i | _ -> None) cmd.hyp_args
      in
      raise (DeletemeException i_lst) *)

      (*
      with
      | Not_found ->
        let expr_str_of_hyp_ref hr =
          let e = expr_of_hyp_ref premises hyp_results len_hr hr in
          noindent_str_of_expr e
        in
        Printf.printf "bad cmd:\n%s\n" (str_of_cmd cmd);
        cmd.hyp_args
        |> List.map expr_str_of_hyp_ref
        |> List.map (fun s -> sprintf "  %s" s)
        |> String.concat "\n"
        |> print_endline;
        let bad_cmd_list =
          cmd.hyp_args
      |> List.filter_map (fun h -> match h with | Derived i -> Some i | _ ->
     None) in
        raise (DeletemeException bad_cmd_list) *)

(* TODO: confusing terminology: in infer_cmd hyp_results is arguments. Here it *)
(* what we have of inferences for the commands so far. *)
let full_infer_cmd
  (prog : prog)
  (hyp_results : expr Elist.t)
  (cmd : cmd)
  : expr Elist.t =
  (*
  printf "%d\n" (List.length hyp_results);
  print_endline (Final_ast.str_of_cmd cmd);
  let hyp_results2 = List.map (fun hr ->
      match hr with
      | Premise s ->
        (if not (List.exists ((=) s) prog.premises) then
           raise (InfException "premise not found")
        );
        StrMap.find s mem
      | Derived i -> List.nth hyp_results i
    ) cmd.hyp_args in

  hyp_results2
|> List.map (expand_expr mem)
|> List.map Final_ast.noindent_str_of_expr
|> String.concat "\n"
|> print_endline; *)

  Elist.rev_cons hyp_results (infer_cmd prog.premises hyp_results cmd)

(* (* Old debugging snippet *)
  with
  | TempException i_lst ->
    let hyp_results, _len_hr = hyp_results_len in
    Printf.printf "fail command:\n%s\n" (show_cmd cmd);
    let print_bad_cmd1 i =
      let cmd = List.nth prog.cmd_list i in
      Printf.printf "bad arg_1 %d:\n%s\n%s\n"
        i
        (str_of_cmd cmd)
        (noindent_str_of_expr (List.nth hyp_results i))
    in
    let print_bad_cmd i =
      let cmd = List.nth prog.cmd_list i in
      Printf.printf "bad arg %d:\n%s\n%s\n"
        i
        (str_of_cmd cmd)
        (noindent_str_of_expr (List.nth hyp_results i));
      List.iter (fun h -> match h with Derived i -> print_bad_cmd1 i | _ -> ())
     cmd.hyp_args in

    List.iter print_bad_cmd i_lst;
    raise Not_found *)

let infer_pass
    (prog : prog)
  : expr list =
  prog.cmd_list
  |> List.fold_left (full_infer_cmd prog) Elist.nil
  |> Elist.to_list
