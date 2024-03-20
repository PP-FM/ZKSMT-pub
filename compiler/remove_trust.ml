open Printf
open Ir
open Maps

module IntSet = Set.Make(Int)

exception RemoveTrustException of string

(* Debugging function: given a program & a step, print the step and all its *)
(* dependencies, recursively. *)

exception PrintDepsException of cmd

let rec find_first_instance_idx (l : 'a list) (x : 'a) : int =
  match l with
  | [] -> raise Not_found
  | head :: _ when head=x -> 0
  | _ :: tail -> 1 + (find_first_instance_idx tail x)

let is_user (cmd : cmd) (i : int) : bool =
  List.exists ((=) (Derived i)) cmd.hyp_args

(*
let find_users (prog : prog) (i : int) : int list =
  prog.cmd_list
  |> List.mapi (fun j cmd -> if is_user cmd i then Some j else None)
  |> List.filter_map (fun x -> x) *)

let rec find_users
  (cmd_list : cmd list)
  (cur_idx : int)
  (target : int)
  (ans : int Elist.t) : int list =
  match cmd_list with
  | [] -> Elist.to_list ans
  | head :: tail ->
    if is_user head target then
      find_users tail (cur_idx + 1) target (Elist.rev_cons ans cur_idx)
    else
      find_users tail (cur_idx + 1) target ans

let rec print_deps (prog : prog) (depth : int) (i : int) =
  if depth = 0 then
    print_endline "===\nterminating print_deps with depth 0\n"
  else
    let cmd = List.nth prog.cmd_list i in
    print_endline "===";
    Printf.printf "print_deps hit at depth %d\n" depth;
    Printf.printf "%s\n\n" (str_of_cmd i {cmd with result=True});
    if (cmd.name = "eq_resolve") then
      print_endline "terminating at eq_resolve"
    else
      let user_cmds = find_users prog.cmd_list 0 i Elist.nil in
      List.iter (print_deps prog (depth-1)) user_cmds

(*
let rec print_deps (prog : prog) (depth : int) (hyp_ref : hyp_ref) =
  match hyp_ref, depth with
  | _, 0 -> print_endline "===\nterminating print_deps with depth 0\n"
  | Premise _, _ -> print_endline "===\nterminating print_deps with premise\n"
  | Derived i, _ ->
    let cmd = List.nth prog.cmd_list i in
    print_deps_cmd prog depth cmd

and print_deps_cmd (prog : prog) (depth : int) (cmd : cmd) =
    print_endline "===";
    Printf.printf "print_deps hit at depth %d\n" depth;
    Printf.printf "%s\n\n" (str_of_cmd 0 cmd);
    List.iter (print_deps prog (depth-1)) cmd.hyp_args *)

let rec and_flatten_expr (a : expr) =
  match a with
  | And list -> flatten_and list
  | _ -> [a]

and flatten_and a_list =
  a_list
  |> List.map and_flatten_expr
  |> List.concat

let and_cons_check a_list b_list =
  match a_list with
  | (And head_list) :: tail ->
    let a_list = tail @ (flatten_and head_list) in
    a_list = b_list
  | _ ->
    false

module Expr = struct
  type t = expr
  let compare = compare
end
module ExprSet = Set.Make(Expr)

let and_notrue_check a_list b_list =
  let a_set = ExprSet.of_list a_list in
  let b_set = ExprSet.of_list b_list in
  let a_set = ExprSet.add True a_set in
  let b_set = ExprSet.add True b_set in
  ExprSet.equal a_set b_set

let or_dup_check a_list b_list =
  let a_set = ExprSet.of_list a_list in
  let b_set = ExprSet.of_list b_list in
  ExprSet.equal a_set b_set

let or_all_dup_check a_list b =
  let a_set = ExprSet.of_list a_list in
  let a_set = ExprSet.remove False a_set in
  ExprSet.cardinal a_set = 1 && ExprSet.mem b a_set

let or_one_way_true_check a_list b_list =
  let a_no_or = List.filter (fun a -> a <> True) a_list in
  a_no_or = b_list

(* Returns a series of commands showing a <-> b, where (at the top level) a & b *)
(* should be and statements. *)
(* Derived constructs in hyp_args are relative to this list and must be shifted. *)
let rec simplify_and (a : expr) (b : expr) (debug_msg : bool)
  (backptr : int option) : cmd list =
  match a = b, a with
  | true, _ ->
    (
      (if debug_msg then
        fprintf stderr "terminating simplify_and with refl\n");
      [{
        name = "refl";
        expr_args = [a];
        hyp_args = [];
        result = Eq (a, a);
        backptr
      }]
    )
  | false, (And [a_single]) when a_single = b ->
    (
      (if debug_msg then
        fprintf stderr "terminating simplify_and with singleton\n");
      [{
        name = "and_single";
        expr_args = [];
        hyp_args = [];
        result = Eq (And [a_single], a_single);
        backptr
      }]
    )
  | false, _ ->
    match a, b with
    | And [And a_lst], _ ->
      let a_lst_eq_b = simplify_and (And a_lst) b debug_msg backptr in
      let len = List.length a_lst_eq_b in
      let flatten = {
        name = "and_flatten";
        expr_args = [];
        hyp_args = [];
        result = Eq (And [And a_lst], (And a_lst));
        backptr
      } in
      let trans_cmd = {
        name = "trans";
        expr_args = [];
        hyp_args = [Derived len; Derived (len-1)];
        result = Eq (And [And a_lst], b);
        backptr
      } in
      (if debug_msg then
        fprintf stderr "adding and_flatten\n");
      a_lst_eq_b @ [flatten; trans_cmd]
    | And (True :: a2), _ ->
      let a2_eq_b = simplify_and (And a2) b debug_msg backptr in
      let len = List.length a2_eq_b in
      let cons_true =
        {
          name = "and_cons_true";
          expr_args = [];
          hyp_args = [];
          result = Eq (a, And a2);
          backptr
        } in
      let trans_cmd =
        {
          name = "trans";
          expr_args = [];
          hyp_args = [Derived (len-1); Derived len];
          result = Eq (a, b);
          backptr
        } in
      (if debug_msg then
        fprintf stderr "adding and_cons_true\n");
      a2_eq_b @ [cons_true; trans_cmd]
    | And [a_hd; And (lst_a)], And (a_hd2 :: lst_b) when a_hd = a_hd2 ->
      let lsta_eq_lstb = simplify_and (And lst_a) (And lst_b) debug_msg backptr in
      let len = List.length lsta_eq_lstb in
      let flatten = {
        name = "and_flatten";
        expr_args = [];
        hyp_args = [];
        result = Eq (And [And lst_a], And lst_a);
        backptr
      } in
      let trans = {
        name = "trans";
        expr_args = [];
        hyp_args = [Derived len; Derived (len-1)];
        result = Eq (And [And lst_a], And lst_b);
        backptr
      } in
      let and_cons = {
        name = "and_cons_equiv";
        expr_args = [a_hd];
        hyp_args = [Derived (len+1)];
        result = Eq (And [a_hd; And (lst_a)], And (a_hd :: lst_b));
        backptr
      } in
      (if debug_msg then
        fprintf stderr "adding and_flatten & and_cons_equiv\n");
      lsta_eq_lstb @ [flatten; trans; and_cons]
    | _ ->
      (match a, b with
       | And al, And bl ->
         if and_cons_check al bl then
           [{
             name = "todo_revand";
             expr_args = [a; b];
             hyp_args = [];
             result = Eq (a, b);
             backptr
           }]
         else if and_notrue_check al bl then
            [{
              name = "todo_andnotrue";
              expr_args = [a; b];
              hyp_args = [];
              result = Eq (a, b);
              backptr
            }]
         else
           raise (RemoveTrustException "check fail 0")
       | _ -> raise (RemoveTrustException "check fail 2")
      )
      (**(let explanation =
        sprintf "remove_trust error, simplify_and not eq:\n  %s\n  %s"
          (str_of_expr a)
          (str_of_expr b) in
       print_endline explanation;
       raise (RemoveTrustException "flatten failed, bad case for simplify_and")
         )*)

(* Returns a series of commands showing a <-> b, where (at the top level) a & b *)
(* should be or statements. *)
(* Derived constructs in hyp_args are relative to this list and must be shifted. *)
let rec simplify_or (a : expr) (b : expr) (debug_msg : bool)
    (backptr : int option)
  : cmd list =
  match a = b, a with
  | true, _ ->
    (
      (if debug_msg then
        fprintf stderr "terminating simplify_or with refl\n");
      [{
        name = "refl";
        expr_args = [a];
        hyp_args = [];
        result = Eq (a, a);
        backptr
      }]
    )
  | false, (Or [a_single]) when a_single = b ->
    (
      (if debug_msg then
        fprintf stderr "terminating simplify_or with singleton\n");
      [{
        name = "or_single";
        expr_args = [];
        hyp_args = [];
        result = Eq (Or [a_single], a_single);
        backptr
      }]
    )
  | false, _ ->
    match a, b with
    | Or a_lst, True ->
      (if debug_msg then
        fprintf stderr "adding or_rewrite_true\n");
      [{
        name = "or_true";
        expr_args = [Or a_lst];
        hyp_args = [];
        result = Eq (a, True);
        backptr
      }]
    | Or [Or a_lst], _ ->
      let a_lst_eq_b = simplify_or (Or a_lst) b debug_msg backptr in
      let len = List.length a_lst_eq_b in
      let flatten = {
        name = "or_flatten";
        expr_args = [];
        hyp_args = [];
        result = Eq (Or [Or a_lst], (Or a_lst));
        backptr
      } in
      let trans_cmd = {
        name = "trans";
        expr_args = [];
        hyp_args = [Derived len; Derived (len-1)];
        result = Eq (Or [Or a_lst], b);
        backptr
      } in
      (if debug_msg then
        fprintf stderr "adding or_flatten\n");
      a_lst_eq_b @ [flatten; trans_cmd]
    | Or (False :: a2), _ ->
      let a2_eq_b = simplify_or (Or a2) b debug_msg backptr in
      let len = List.length a2_eq_b in
      let cons_true =
        {
          name = "or_cons_false";
          expr_args = [];
          hyp_args = [];
          result = Eq (a, Or a2);
          backptr
        } in
      let trans_cmd =
        {
          name = "trans";
          expr_args = [];
          hyp_args = [Derived (len-1); Derived len];
          result = Eq (a, b);
          backptr
        } in
      (if debug_msg then
        fprintf stderr "adding or_cons_false\n");
      a2_eq_b @ [cons_true; trans_cmd]
    | Or [a_hd; Or (lst_a)], Or (a_hd2 :: lst_b) when a_hd = a_hd2 ->
      let lsta_eq_lstb = simplify_or (Or lst_a) (Or lst_b) debug_msg backptr in
      let len = List.length lsta_eq_lstb in
      let flatten = {
        name = "or_flatten";
        expr_args = [Or lst_a];
        hyp_args = [];
        result = Eq (Or [Or lst_a], Or lst_a);
        backptr
      } in
      let trans = {
        name = "trans";
        expr_args = [];
        hyp_args = [Derived len; Derived (len-1)];
        result = Eq (Or [Or lst_a], Or lst_b);
        backptr
      } in
      let or_cons = {
        name = "or_cons_equiv";
        expr_args = [a_hd];
        hyp_args = [Derived (len+1)];
        result = Eq (Or [a_hd; Or (lst_a)], Or (a_hd :: lst_b));
        backptr
      } in
      (if debug_msg then
        fprintf stderr "adding or_flatten & or_cons_equiv\n");
      lsta_eq_lstb @ [flatten; trans; or_cons]
    | Or a_list, Or b_list ->
      if or_dup_check a_list b_list then
        [{
          name = "todo_or_dup";
          expr_args = [];
          hyp_args = [];
          result = Eq (a, b);
          backptr
        }]
      (**else if (or_one_way_true_check a_list b_list) then
        (print_endline "passed oowtc";
        [{
          name = "rw_todo_or_owtc";
          expr_args = [];
          hyp_args = [];
          result = Eq (a, b);
          backptr
         }]) *)
      else
        raise (RemoveTrustException "or_dup_check")
    | Or a_list, _ ->
      if or_all_dup_check a_list b then
        [{
          name = "todo_or_dup";
          expr_args = [Or a_list; b];
          hyp_args = [];
          result = Eq (a, b);
          backptr
        }]
      else
        (let explanation =
           sprintf "remove_trust error, simplify_or dup_check_failed not eq:\n  %s\n  %s"
             (str_of_expr a)
             (str_of_expr b) in
         print_endline explanation;
         raise (RemoveTrustException "flatten failed, or_dup_check_failed")
        )
    | _ ->
      (let explanation =
        sprintf "remove_trust error, simplify_or not eq:\n  %s\n  %s"
          (str_of_expr a)
          (str_of_expr b) in
       print_endline explanation;
       raise (RemoveTrustException "flatten failed, bad case for simplify_or")
      )

(* Decide if the cmd is a trust rule and remove it (or fail) if so. Returns *)
(* None if the rule is fine as-is. *)
let dispatch_cmd
    (cmd : cmd)
    (debug_msg : bool)
    (strict : bool)
  : (cmd list option) =
  try
  match cmd.name, cmd.result with
  | "trust", (Eq (And a_lst, b)) ->
    Some (simplify_and (And a_lst) b debug_msg cmd.backptr)
  | "trust", (Eq (Or a_lst, b)) ->
    Some (simplify_or (Or a_lst) b debug_msg cmd.backptr)
  | "trust", Eq ((Not True), False) ->
    (if debug_msg then
       fprintf stderr "adding eval_not_true\n"
    );
    Some [
      {
        name = "eval_true";
        expr_args = [];
        hyp_args = [];
        result = Eq ((Not True), False);
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq ((Not False), True) ->
    (if debug_msg then
       fprintf stderr "adding eval_not_false\n"
    );
    Some [
      {
        name = "eval_false";
        expr_args = [];
        hyp_args = [];
        result = Eq ((Not False), True);
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq (Eq (a, True), b) when a = b ->
    (if debug_msg then
       fprintf stderr "adding eq_equiv\n"
    );
    Some [
      {
        name = "eq_equiv";
        expr_args = [];
        hyp_args = [];
        result = Eq (Eq (a, True), b);
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq (Eq (a, b), True) when a = b ->
    (if debug_msg then
       fprintf stderr "adding refl_equiv\n"
    );
    Some [
      {
        name = "refl_equiv";
        expr_args = [];
        hyp_args = [];
        result = Eq (Eq (a, b), True);
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq (Eq (a1, b1), Eq (b2, a2)) when a1=a2 && b1=b2 ->
    (if debug_msg then
       fprintf stderr "adding refl_equiv\n"
    );
    Some [
      {
        name = "symm_equiv";
        expr_args = [];
        hyp_args = [];
        result = cmd.result;
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq (Not (Not a1), a2) when a1=a2 ->
    (if debug_msg then
       fprintf stderr "adding not_not_equiv\n"
    );
    Some [
      {
        name = "not_not_equiv";
        expr_args = [];
        hyp_args = [];
        result = cmd.result;
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq (Eq (True, False), False) ->
    (if debug_msg then
       fprintf stderr "adding bool_discr_equiv\n"
    );
    Some [
      {
        name = "bool_discr_equiv";
        expr_args = [];
        hyp_args = [];
        result = cmd.result;
        backptr = cmd.backptr
      }
    ]
  | "trust", Eq (Xor (False, a1), a2) when a1 = a2 ->
    (if debug_msg then
       fprintf stderr "adding xor_eq_false1\n"
    );
    Some [{cmd with name="xor_eq_false1"}]
  | "trust", Eq (Xor (a1, False), a2) when a1 = a2 ->
    (if debug_msg then
       fprintf stderr "adding xor_eq_false2\n"
    );
    Some [{cmd with name="xor_eq_false2"}]
  | "trust", Eq (Xor (a1, a2), False) when a1 = a2 ->
    (if debug_msg then
       fprintf stderr "adding xor_eq_eq\n"
    );
    Some [{cmd with name="xor_eq_eq"}]
  | "trust", Eq (Eq (a1, False), (Not a2)) when a1 = a2 ->
    (if debug_msg then
       fprintf stderr "adding equiv_not_false\n"
    );
    Some [{cmd with name="equiv_not_false"}]
  | "trust", Eq (Ite (_, b1, b2), b3) when b1 = b2 && b2 = b3 ->
    (if debug_msg then
       fprintf stderr "adding ite_match\n"
    );
    Some [{cmd with name="ite_match"}]
  | "trust", a ->
    if strict then
      (Printf.printf "could not remove trust rule:\n  %s\n" (str_of_expr a);
      raise (RemoveTrustException "could not remove trust rule"))
    else if debug_msg then
      (printf "could not remove trust rule\n"; None)
    else
      None
  | _, _ -> None
  with
  | RemoveTrustException msg ->
    Printf.printf "!! command failure for:\n%s\n" (str_of_cmd 0 cmd);
    Printf.printf "message: %s\n" msg;
    raise (PrintDepsException cmd)
    (**raise (RemoveTrustException msg)*)

let shift_hyp_ref i n hyp_ref =
  match hyp_ref with
  | Premise s -> Premise s
  | Derived x when x >= i ->
    Derived (x + n)
  | Derived x -> Derived x

(* Shift hypothesis arguments in cmd to reflect the fact that n commands are *)
(*  being inserted before point i in the command list. *)
let shift_cmd i n cmd : cmd =
  let hyp_args = List.map (shift_hyp_ref i n) cmd.hyp_args in
  {cmd with hyp_args}

let update_hyp_ref idx_map hyp_ref =
  match hyp_ref with
  | Premise s -> Premise s
  | Derived x -> Derived (IntMap.find x idx_map)

let update_cmd idx_map cmd : cmd =
  let hyp_args = List.map (update_hyp_ref idx_map) cmd.hyp_args in
  {cmd with hyp_args}

let rec pass'
    (to_process : cmd list)
    (debug_msg : bool)
    (strict : bool)
    (i : int) (* Original index of the next command to process *)
    (idx_map : int IntMap.t) (* Map original indices to their new equivalent *)
    (ans : cmd Elist.t) (* Everything we have processed so far *)
  : cmd list =
  match to_process with
  | [] -> Elist.to_list ans
  | head :: tail ->
    match dispatch_cmd head debug_msg strict with
    | None ->
      let head = update_cmd idx_map head in
      let ans = Elist.rev_cons ans head in
      let idx_map = IntMap.add i (Elist.length ans - 1) idx_map in
      pass' tail debug_msg strict (i+1) idx_map ans
    | Some insert_lst ->
      let insert_lst = List.map (shift_cmd 0 (Elist.length ans)) insert_lst in
      let ans = Elist.rev_app ans insert_lst in
      let idx_map = IntMap.add i (Elist.length ans - 1) idx_map in
      pass' tail debug_msg strict (i+1) idx_map ans

(*
(* i: number of commands already processed *)
let rec pass'
    (cmd_list : cmd list)
    (debug_msg : bool)
    (strict : bool)
    (i : int)
  : cmd list =
  match cmd_list with
  | [] -> []
  | hd :: tail ->
    match dispatch_cmd hd debug_msg strict with
    | None -> hd :: (pass' tail debug_msg strict (i+1))
    | Some insert_lst ->
      let insert_lst = List.map (shift_cmd 0 i) insert_lst in
      let tail = List.map (shift_cmd i ((List.length insert_lst)-1)) tail in
      insert_lst @ (pass' tail debug_msg strict i) *)

(* Mark: identify all rewrite rules that must be made to use => instead of = *)
module Mark = struct
  let add_user user_idx map base_idx =
    let cur_list = IntMap.find base_idx map in
    IntMap.add base_idx (user_idx :: cur_list) map

  (* Maps proof steps to the proof steps that use their conclusion. *)
  let rec create_reverse_mapping'
      (cmd_list : cmd list)
      (cur_idx : int)
      (map : int list IntMap.t)
    : int list IntMap.t =
    match cmd_list with
    | [] -> map
    | head :: tail ->
      let used_args =
        head.hyp_args
        |> List.filter_map
          (fun h -> match h with Derived i -> Some i | _ -> None) in
      let map = List.fold_left (add_user cur_idx) map used_args in
      create_reverse_mapping' tail (cur_idx + 1) map

  let fwd_add_user user_idx map base_idx =
    let cur_list = IntMap.find user_idx map in
    IntMap.add base_idx (base_idx :: cur_list) map

  (* Maps proof steps to the proof steps they use. *)
  let rec create_forward_mapping'
      (cmd_list : cmd list)
      (cur_idx : int)
      (map : int list IntMap.t)
    : int list IntMap.t =
    match cmd_list with
    | [] -> map
    | head :: tail ->
      let used_args =
        head.hyp_args
        |> List.filter_map
          (fun h -> match h with Derived i -> Some i | _ -> None) in
      let map = List.fold_left (fwd_add_user cur_idx) map used_args in
      create_forward_mapping' tail (cur_idx + 1) map

  let rec init_mapping i map =
    if i < 0 then
      map
    else
      init_mapping (i-1) (IntMap.add i [] map)

  let create_forward_mapping
      (cmd_list : cmd list)
    : int list IntMap.t =
    let init_map = init_mapping (List.length cmd_list) IntMap.empty in
    create_forward_mapping' cmd_list 0 init_map

  let create_reverse_mapping
      (cmd_list : cmd list)
    : int list IntMap.t =
    let init_map = init_mapping (List.length cmd_list) IntMap.empty in
    create_reverse_mapping' cmd_list 0 init_map

  let must_replace = StrSet.of_list [
      "rw_todo_or_owtc";
      "or_true";
      "and_cons_true";
      "and_cons_equiv";
      "todo_revand";
      "todo_andnotrue";
      "or_single";
      "or_flatten";
      "or_cons_false";
      "or_cons_equiv";
      "todo_or_dup";
      "and_single";
      "and_flatten";
    ]

  let can_replace = StrSet.of_list [
      "refl";
      "trans";
      "=>_est";
      "=_est";
      "and_est";
      "or_est";
      "not_est"
    ]

  let terminate_replace = StrSet.of_list ["eq_resolve"]

  exception MakeRewriteException of int

  (* breadth first search through rules, halting at rules in terminate_replace,
   to mark rules to be replaced with their => equivalent. *)
  let rec flood_to_rewrite
    (cmd_list : cmd Elist.t)
    (forward_map : int list IntMap.t)
    (reverse_map : int list IntMap.t)
    (to_replace : IntSet.t)
    (queue : IntSet.t)
    : IntSet.t =
    match IntSet.min_elt_opt queue with
    | None -> to_replace
    | Some i ->
      let queue = IntSet.remove i queue in
      if IntSet.mem i to_replace then
        flood_to_rewrite cmd_list forward_map reverse_map to_replace queue
      else
        let to_replace = IntSet.add i to_replace in
        let name = (Elist.nth cmd_list i).name in
        let legal =
          StrSet.mem name must_replace ||
          StrSet.mem name can_replace ||
          StrSet.mem name terminate_replace in
        if not legal then
          raise (MakeRewriteException i)
        else
          let forward_elts = IntMap.find i forward_map in
          (* Do not add upward dependencies if a terminating rule *)
          let backward_elts =
            if StrSet.mem name terminate_replace then
              []
            else
              IntMap.find i reverse_map in
          let new_elts_set = IntSet.of_list (forward_elts @ backward_elts) in
          let queue = IntSet.union queue new_elts_set in
          flood_to_rewrite cmd_list forward_map reverse_map to_replace queue

  (* Scan for must-replace rules. When we find one, trigger a flood to mark all
     adjacent rules. *)
  let rec scan_for_rewrite
    (cmd_list : cmd Elist.t)
    (forward_map : int list IntMap.t)
    (reverse_map : int list IntMap.t)
    (to_replace : IntSet.t)
    (to_process : cmd list)
    (cur_idx : int)
    : IntSet.t =
    match to_process with
    | [] -> to_replace
    | head :: tail ->
      if StrSet.mem head.name must_replace then
        let to_replace =
          flood_to_rewrite
            cmd_list
            forward_map
            reverse_map
            to_replace
            (IntSet.singleton cur_idx) in
        scan_for_rewrite cmd_list forward_map reverse_map to_replace tail (cur_idx+1)
      else
        scan_for_rewrite cmd_list forward_map reverse_map to_replace tail (cur_idx+1)

  let all_rewrite_rules
      (cmd_list : cmd list)
    : IntSet.t =
    let cmd_elist = Elist.from_list cmd_list in
    let forward_mapping = create_forward_mapping cmd_list in
    let reverse_mapping = create_reverse_mapping cmd_list in
    scan_for_rewrite
      cmd_elist forward_mapping reverse_mapping IntSet.empty
      cmd_list 0

end

(* debug_msg: print debug messages *)
(* strict: fail if a trust rule cannot be removed *)
let pass (prog : prog) (debug_msg : bool) (strict : bool) : prog =
  try
  let cmd_list = pass' prog.cmd_list debug_msg strict 0 IntMap.empty Elist.nil in

  let _rewrite_set = Mark.all_rewrite_rules cmd_list in
  (*
  print_endline "Make rewrite:";
  rewrite_set
  |> IntSet.elements
  |> List.map string_of_int
  |> String.concat ", "
  |> print_endline;
  print_endline "End rewrite"; *)

  {prog with cmd_list}
  with
  | PrintDepsException cmd ->
    let i = find_first_instance_idx prog.cmd_list cmd in
    print_deps prog 4 i;
    raise (Failure "terminating rt for print deps")
