open Binary_untyped
open Maps
open Rule_ast
open Printf

exception ExpectException of string

let rule_file_lst = [
  "boolean_rules.plf";
  "cnf_rules.plf";
  "equality_rules.plf";
  "extra_rules.plf"
]

type expect =
  | ExpConstant of string
  | ExpFiller of string
  | ExpApp of expect * expect
  | ExpNaryApp of string * (expect list)

type side_condition = {
  args : expect list;
  result_expect : expect;
  fn_name : string
}

type signature = {
  pure_args : expect list;
  hyp_args : expect list;
  sc_list : side_condition list;
  result : expect
}

type arg_type = ArgHole | ArgExpr | ArgHyp

(** Hardcode arguments to all rules *)

let rule_codes : int StrMap.t = map_of_bindings [
    "eq_resolve", 0;
    "trans", 1;
    "cong", 2;
    "refl", 3;
    "trust", 4;
    "and_elim", 5;
    "and_intro1", 6;
    "and_intro2", 7;
    "resolution", 8;
    "contra", 9;
    "cnf_and_pos", 10;
    "cnf_or_pos", 11;
    "reordering", 12;
    "factoring", 13;
    "neg_symm", 14;
    "symm", 15;

    "not_est", 16;
    "or_est", 17;
    "and_est", 18;
    "=_est", 19;

    "consistency", 20;

    "and_single", 21;
    "and_flatten", 22;
    "and_cons_true", 23;
    "and_cons_equiv", 24;

    "or_single", 25;
    "or_flatten", 26;
    "or_cons_false", 27;
    "or_cons_equiv", 28;

    "refl_equiv", 29;
    "eval_true", 30;
    "eval_false", 31;

    "true_intro", 32;
    "true_elim", 33;
    "false_intro", 34;
    "false_elim", 35;

    "not_and", 36;
    "not_and_rev", 37;

    "cnf_and_neg", 38;
    "=>_est", 39;

    "cnf_or_neg", 40;
    "cnf_implies_pos", 41;
    "cnf_implies_neg1", 42;
    "cnf_implies_neg2", 43;
    "cnf_equiv_pos1", 44;
    "cnf_equiv_pos2", 45;
    "cnf_equiv_neg1", 46;
    "cnf_equiv_neg2", 47;

    "split", 48;
    "modus_ponens", 49;
    "not_not_elim", 50;
    "not_or_elim", 51;
    "implies_elim", 52;
    "not_implies_elim1", 53;
    "not_implies_elim2", 54;

    "process_scope", 55;

    "scope_discharge", 56;
    "scope_assume", 57;
    "weaken_scope", 58;

    "or_single2", 59;
    "implies_single", 60;

    "eq_equiv", 61;

    "xor_est", 62;
    "ite_est", 63;
    "xor_eq_false1", 64;
    "xor_eq_false2", 65;
    "xor_eq_eq", 66;

    "cnf_ite_pos1", 67;
    "cnf_ite_pos2", 68;
    "cnf_ite_pos3", 69;
    "cnf_ite_neg1", 70;
    "cnf_ite_neg2", 71;
    "cnf_ite_neg3", 72;

    "equiv_elim1", 73;
    "equiv_elim2", 74;
    "not_equiv_elim1", 75;
    "not_equiv_elim2", 76;
    "xor_elim1", 77;
    "xor_elim2", 78;
    "not_xor_elim1", 79;
    "not_xor_elim2", 80;
    "ite_elim1", 81;
    "ite_elim2", 82;
    "not_ite_elim1", 83;
    "not_ite_elim2", 84;

    "equiv_not_false", 85;
    "ite_match", 86;

    "euf_cong", 87;

    "symm_equiv", 100;
    "todo_revand", 101;
    "todo_or_dup", 102;
    "or_true", 103;
    "todo_andnotrue", 104;
    "not_not_equiv", 105;
    "bool_discr_equiv", 106;
  ]

(* euf_cong is a special case as it takes an arg list. *)
let rule_args : (arg_type list) StrMap.t = map_of_bindings [
    "eq_resolve", [ArgHole; ArgHole; ArgHyp; ArgHyp];
    "trans", [ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];
    "cong", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];
    "refl", [ArgExpr];
    "trust", [ArgExpr];
    "and_elim", [ArgHole; ArgHole; ArgExpr; ArgHyp];
    "and_intro1", [ArgHole; ArgHyp];
    "and_intro2", [ArgHole; ArgHole; ArgHyp; ArgHyp];
    "resolution", [ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp; ArgExpr;
     ArgExpr];
    "contra", [ArgHole; ArgHyp; ArgHyp];
    "cnf_and_pos", [ArgHole; ArgExpr; ArgExpr];
    "cnf_or_pos", [ArgExpr];
    "reordering", [ArgHole; ArgExpr; ArgHyp];
    "factoring", [ArgHole; ArgHole; ArgHyp];
    "neg_symm", [ArgHole; ArgHole; ArgHyp];
    "symm", [ArgHole; ArgHole; ArgHyp];

    (* Added for establishing nary applications *)
    "not_est", [ArgHole; ArgHole; ArgHyp];
    "or_est", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];
    "and_est", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];
    "=_est", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];
    "=>_est", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];

    (*"consistency", [];
      "and_flatten", [ArgExpr; ArgExpr; ArgExpr]; *)

    "true_intro", [ArgHole; ArgHyp];
    "true_elim", [ArgHole; ArgHyp];
    "false_intro", [ArgHole; ArgHyp];
    "false_elim", [ArgHole; ArgHyp];

    "not_and", [ArgHole; ArgHole; ArgHyp];
    "not_and_rev", [ArgHole; ArgHole; ArgHyp];

    (* Should be able to not rely on this argument in later stages *)
    "cnf_and_neg", [ArgHole; ArgExpr];

    "cnf_or_neg", [ArgHole; ArgHole; ArgExpr];
    "cnf_implies_pos", [ArgExpr; ArgExpr];
    "cnf_implies_neg1", [ArgExpr; ArgExpr];
    "cnf_implies_neg2", [ArgExpr; ArgExpr];
    "cnf_equiv_pos1", [ArgExpr; ArgExpr];
    "cnf_equiv_pos2", [ArgExpr; ArgExpr];
    "cnf_equiv_neg1", [ArgExpr; ArgExpr];
    "cnf_equiv_neg2", [ArgExpr; ArgExpr];
    "cnf_xor_pos1", [ArgExpr; ArgExpr];
    "cnf_xor_pos2", [ArgExpr; ArgExpr];
    "cnf_xor_neg1", [ArgExpr; ArgExpr];
    "cnf_xor_neg2", [ArgExpr; ArgExpr];
    "cnf_ite_pos1", [ArgExpr; ArgExpr; ArgExpr];
    "cnf_ite_pos2", [ArgExpr; ArgExpr; ArgExpr];
    "cnf_ite_pos3", [ArgExpr; ArgExpr; ArgExpr];
    "cnf_ite_neg1", [ArgExpr; ArgExpr; ArgExpr];
    "cnf_ite_neg2", [ArgExpr; ArgExpr; ArgExpr];
    "cnf_ite_neg3", [ArgExpr; ArgExpr; ArgExpr];

    "split", [ArgHole];
    "modus_ponens", [ArgHole; ArgHole; ArgHyp; ArgHyp];
    "not_not_elim", [ArgHole; ArgHyp];
    "not_or_elim", [ArgHole; ArgHole; ArgExpr; ArgHyp];
    "implies_elim", [ArgHole; ArgHole; ArgHyp];
    "not_implies_elim1", [ArgHole; ArgHole; ArgHyp];
    "not_implies_elim2", [ArgHole; ArgHole; ArgHyp];

    "process_scope", [ArgHole; ArgHole; ArgExpr; ArgHyp];
    "or_single2", [ArgHole; ArgHyp];
    "implies_single", [ArgHole; ArgHole; ArgHyp];

    "xor_est", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHyp; ArgHyp];
    "ite_est", [ArgHole; ArgHole; ArgHole; ArgHole; ArgHole;
                ArgHole; ArgHyp; ArgHyp; ArgHyp];

    "equiv_elim1", [ArgHole; ArgHole; ArgHyp];
    "equiv_elim2", [ArgHole; ArgHole; ArgHyp];
    "not_equiv_elim1", [ArgHole; ArgHole; ArgHyp];
    "not_equiv_elim2", [ArgHole; ArgHole; ArgHyp];

    "xor_elim1", [ArgHole; ArgHole; ArgHyp];
    "xor_elim2", [ArgHole; ArgHole; ArgHyp];
    "not_xor_elim1", [ArgHole; ArgHole; ArgHyp];
    "not_xor_elim2", [ArgHole; ArgHole; ArgHyp];

    "ite_elim1", [ArgHole; ArgHole; ArgHole; ArgHyp];
    "ite_elim2", [ArgHole; ArgHole; ArgHole; ArgHyp];
    "not_ite_elim1", [ArgHole; ArgHole; ArgHole; ArgHyp];
    "not_ite_elim2", [ArgHole; ArgHole; ArgHole; ArgHyp];
  ]

let rec sort'
    (r : bool list * int)
    (arg_list : arg_type list)
  : (bool list * int) =
  let (pure_args, hyp_count) = r in
  match arg_list with
  | [] -> r
  | ArgHole :: tail ->
    let pure_args = pure_args @ [true] in
    sort' (pure_args, hyp_count) tail
  | ArgExpr :: tail ->
    let pure_args = pure_args @ [false] in
    sort' (pure_args, hyp_count) tail
  | ArgHyp :: tail ->
    let hyp_count = hyp_count + 1 in
    sort' (pure_args, hyp_count) tail

let sort (arg_list : arg_type list) : (bool list * int) =
  sort' ([], 0) arg_list

(** Transformation of a parsed rule_ty to a signature *)

let rec expect_of_term (var_set : StrSet.t) (t : term)
    : expect =
  match t with
  | Atom s ->
    if StrSet.mem s var_set then
      ExpFiller s
    else
      ExpConstant s
  | App (Atom "or" :: term_list) ->
    ExpNaryApp ("or", List.map (expect_of_term var_set) term_list)
  | App (Atom "and" :: term_list) ->
    ExpNaryApp ("and", List.map (expect_of_term var_set) term_list)
  | App (Atom "=" :: term_list) ->
    ExpNaryApp ("=", List.map (expect_of_term var_set) term_list)
  | App (Atom "=>" :: term_list) ->
    ExpNaryApp ("=>", List.map (expect_of_term var_set) term_list)
  | App (Atom "xor" :: term_list) ->
    ExpNaryApp ("xor", List.map (expect_of_term var_set) term_list)
  | App (Atom "ite" :: term_list) ->
    ExpNaryApp ("ite", List.map (expect_of_term var_set) term_list)
  | App [Atom "not"; term] ->
    ExpNaryApp ("not", [expect_of_term var_set term])
  | App [Atom "apply"; t1; t2] ->
    ExpApp (expect_of_term var_set t1, expect_of_term var_set t2)
  | App _ ->
    raise (ExpectException "unrecognized rule term in rule_ast")

let rec rule_parse0
    (rule : rule_ty)
    (cur_sgn : signature)
    (var_set : StrSet.t) : signature =
  match rule with
  | End (false, _) ->
    raise (ExpectException "rules not ending in holds term")
  | End (true, tm) ->
    let result = expect_of_term var_set tm in
    {cur_sgn with result}
  | SideCondition (_varname, fn_name, args, tm, cont) ->
    let result_expect = expect_of_term var_set tm in
    let args =
      args
      |> List.map (fun s -> Atom s)
      |> List.map (expect_of_term var_set) in
    let sc = {args; result_expect; fn_name} in
    let cur_sgn = {cur_sgn with sc_list=sc::cur_sgn.sc_list} in
    rule_parse0 cont cur_sgn var_set
  | Arg (varname, (false, _tm), cont) ->
    (* Non-holds term *)
    let var_set = StrSet.add varname var_set in
    let pure_args = cur_sgn.pure_args @ [ExpFiller varname] in
    let cur_sgn = {cur_sgn with pure_args} in
    rule_parse0 cont cur_sgn var_set
  | Arg (_varname, (true, tm), cont) ->
    let new_arg = expect_of_term var_set tm in
    let hyp_args = cur_sgn.hyp_args @ [new_arg] in
    let cur_sgn = {cur_sgn with hyp_args} in
    rule_parse0 cont cur_sgn var_set

(* Does not account for implied arguments *)
let rule_parse1 (rule : rule_ty) : signature =
  let base_sgn = {
    pure_args = [];
    hyp_args = [];
    sc_list = [];
    result = ExpConstant "placeholder"
  } in

  rule_parse0 rule base_sgn StrSet.empty

(* Accounts for implied rules *)
let rule_parse2 (name : string) (e : signature) : signature =
  let hole_lst, hyp_count = sort (
      match StrMap.find_opt name rule_args with
      | None ->
        let msg = sprintf "name not found in Expect.rule_parse2: %s" name in
        raise (ExpectException msg)
      | Some x -> x) in
  match
    List.length e.pure_args = List.length hole_lst,
    List.length e.hyp_args = hyp_count with
  | false, _ -> raise (ExpectException "pure argument length mismatch in expect")
  | _, false -> raise (ExpectException "hyp argument length mismatch in expect")
  | true, true ->
    let pure_args =
      List.combine hole_lst e.pure_args
      |> List.filter_map (fun (b, e) -> if b then None else Some e) in
    {e with pure_args}

let add_rule (map : signature StrMap.t) (name_rule : string * rule_ty)
  : signature StrMap.t =
  let name, rule = name_rule in
  let sgn = rule_parse1 rule in
  let sgn = rule_parse2 name sgn in
  StrMap.add name sgn map

let add_rule_file (map : signature StrMap.t) (fname : string)
    : signature StrMap.t =
  let nm_rule_list =
    fname
    |> open_in
    |> Lexing.from_channel
    |> Parser.rule_file2 Lexer.read in
  List.fold_left add_rule map nm_rule_list


let init_sgn_map () : signature StrMap.t =
  List.fold_left add_rule_file StrMap.empty rule_file_lst

(** Code for handling side conditions *)

(* NOTE: only written for and *)
let rec nary_extract (e : expr) n =
  (*printf "\n>>>>>>>\n%d\n\n%s\n\n<<<<<<\n" n (noindent_str_of_expr e);*)

  match e with
  | NaryApp (_, [a; b]) ->
    if n = 0 then
      a
    else
      nary_extract b (n-1)
  | _ ->
    raise (ExpectException "extraction failed")

let rec binary_to_list (e : expr) (halt : expr) (rev_args : expr list) =
  match e with
  | NaryApp (_, [a; b]) ->
    binary_to_list b halt (a :: rev_args)
  | e when e=halt ->
    List.rev rev_args
  | _ ->
    printf "binary_to_list error:\n%s\n%s\nlst:\n"
      (noindent_str_of_expr e)
      (noindent_str_of_expr halt);
    List.iter (fun e -> printf "%s\n" (noindent_str_of_expr e)) rev_args;
    raise (ExpectException "all_args failed")

let rec list_to_binary (list : expr list) (null : expr) (name : string) =
  match list with
  | [] -> null
  | head :: tail ->
    NaryApp (name, [head; list_to_binary tail null name])

let rec drop_dups lst already_appeared =
  match lst with
  | [] -> []
  | hd :: tl ->
    match List.find_opt ((=) hd) already_appeared with
    | None -> hd :: (drop_dups tl (hd :: already_appeared))
    | Some _ -> drop_dups tl already_appeared

let nary_drop_dups (name : string) (e : expr) (null : expr) =
  let list = binary_to_list e null [] in
  let dropped_list = drop_dups list [] in
  list_to_binary dropped_list null name

(* TODO: fix *)
let null_of_name n =
  match n with
  | "or" -> Constant "false"
  | "and" -> Constant "true"
  | s -> raise (ExpectException (sprintf "null_of_name called with %s" s))

let nary_is_subset (name : string) (e1 : expr) (e2 : expr) =
  let null = null_of_name name in
  let e1_list = binary_to_list e1 null [] in
  let e2_list = binary_to_list e2 null [] in
  List.for_all (fun n1 -> List.exists (fun n2 -> n1 = n2) e2_list) e1_list

(* NOTE: used when we expect nary_rm_first_or_self... *)
let rec nary_rm_first (_name : string) (list : expr list) (rm_e : expr) : expr list =
  match list with
  | [] -> raise (ExpectException "nary_rm_first failed")
  | head :: tail when head=rm_e ->
    tail
  | head :: tail ->
    head :: (nary_rm_first _name tail rm_e)

let nary_intro (name : string) (e : expr) : expr =
  match e with
  | NaryApp (n, [_; _]) when n=name -> e
  | _ ->
    let null = null_of_name name in
    NaryApp (name, [e; null])

let nary_elim (name : string) (e : expr) : expr =
  let null = null_of_name name in
  match e with
  | NaryApp (n, [a; b]) when n=name && b=null ->
    a
  | _ -> e

let resolution (e1 : expr) (e2 : expr) (switch : bool) (rm_e : expr) : expr =
  let e1 = nary_intro "or" e1 in
  let e2 = nary_intro "or" e2 in
  let e1_list = binary_to_list e1 (null_of_name "or") [] in
  let e2_list = binary_to_list e2 (null_of_name "or") [] in

  (* TODO: check, this was a 50-50 guess *)
  let rm_e1, rm_e2 =
    if not switch then
      (NaryApp ("not", [rm_e])), rm_e
    else
      rm_e, (NaryApp ("not", [rm_e])) in

  let e1_list = nary_rm_first "or" e1_list rm_e1 in
  let e2_list = nary_rm_first "or" e2_list rm_e2 in
  let e =
    list_to_binary (e1_list @ e2_list) (null_of_name "or") "or" in
  nary_elim "or" e

(* (and a b c) -> (or (not a) (not b) (not c)) *)
let not_and_rec (e1 : expr) : expr =
  let e1_list = binary_to_list e1 (null_of_name "and") [] in
  match e1_list with
  | [] -> raise (ExpectException "not_and unimplemented for null")
  | [_] -> raise (ExpectException "not_and unimplemented for singleton")
  | _ ->
    let e1_not_list = List.map (fun e -> NaryApp ("not", [e])) e1_list in
    list_to_binary e1_not_list (null_of_name "or") "or"

(* (and a b c) -> (not (or (not a) (not b) (not c))) *)
(* TODO: more accurately reflect nary_elim in this *)
let not_and (e1 : expr) : expr =
  not_and_rec e1

(* (or (not a) (not b) (not c)) -> (and a b c) *)
let not_and_rev (e1 : expr) =
  let e1_list = binary_to_list e1 (null_of_name "or") [] in
  match e1_list with
  | [] -> raise (ExpectException "not_and_rev unimplemented for null")
  | [_] -> raise (ExpectException "not_and_rev unimplemented for singleton")
  | _ ->
    let e1_invert_list = List.map (
        fun e -> match e with
          | NaryApp ("not", [e]) -> e
          | _ -> raise (ExpectException "non-not form during not_and_rev sc")
      ) e1_list in
    list_to_binary e1_invert_list (null_of_name "and") "and"

let rec list_truncate f c =
  match f, f=c with
  | _, true -> []
  | [], false -> raise (ExpectException "truncation failed")
  | hd :: tail, false ->
    hd :: (list_truncate tail c)

let nary_truncate (name : string) (f : expr) (c : expr) =
  let f_list = binary_to_list f (null_of_name name) [] in
  let c_list = binary_to_list c (null_of_name name) [] in
  let result_list = list_truncate f_list c_list in
  list_to_binary result_list (null_of_name name) name

let process_scope (t : expr) (c : expr) =
  let premise = not_and_rev (nary_truncate "or" t c) in
  match c with
  | Constant "false" -> NaryApp ("not", [premise])
  | _ -> NaryApp ("=>", [premise; c])

let binary_name n =
  match n with
  | "f_and" -> "and"
  | "f_or" -> "or"
  | _ -> raise (ExpectException "binary_name failed")

(** Actual side condition functions *)

let sc_nary_extract expr_list =
  match expr_list with
  | [Constant name; e; Constant n_string] ->
    let _name = binary_name name in
    let n = int_of_string n_string in
    nary_extract e n
  | _ -> raise (ExpectException "sc_nary_extract failed")

let sc_nary_is_subset expr_list =
  match expr_list with
  | [Constant name; e1; e2] ->
    let name = binary_name name in
    (match nary_is_subset name e1 e2 with
     | true -> Constant "tt"
     | false -> Constant "ff"
    )
  | _ -> raise (ExpectException "sc_nary_is_subset failed")

let sc_nary_drop_dups expr_list =
  match expr_list with
  | [Constant name; e1; null] ->
    let name = binary_name name in
    nary_drop_dups name e1 null
  | _ -> raise (ExpectException "sc_nary_drop_dups failed")

let sc_resolution expr_list =
  match expr_list with
  | [e1; e2; Constant flag; rm_e] ->
    let bool_flag =
      (match flag with
       | "tt" -> true
       | "ff" -> false
       | _ -> raise (ExpectException "non-boolean flag in sc_resolution")
      ) in
    resolution e1 e2 bool_flag rm_e
  | _ -> raise (ExpectException "sc_resolution failed")

let sc_not_and_rec expr_list =
  match expr_list with
  | [e1] ->
    not_and_rec e1
  | _ -> raise (ExpectException "sc_not_and failed")

let sc_not_and expr_list =
  match expr_list with
  | [e1] ->
    not_and e1
  | _ -> raise (ExpectException "sc_not_and failed")

let sc_not_and_rev expr_list =
  match expr_list with
  | [e1] ->
    not_and_rev e1
  | _ -> raise (ExpectException "sc_not_and_rev failed")

let sc_process_scope expr_list =
  match expr_list with
  | [e1; e2] ->
    process_scope e1 e2
  | _ -> raise (ExpectException "sc_process_scope failed")

let sc_eval_map = map_of_bindings [
    "nary_extract", sc_nary_extract;
    "nary_is_subset", sc_nary_is_subset;
    "nary_drop_dups", sc_nary_drop_dups;
    "sc_resolution", sc_resolution;
    "sc_not_and_rec", sc_not_and_rec;
    "sc_not_and", sc_not_and;
    "sc_not_and_rev", sc_not_and_rev;
    "sc_process_scope", sc_process_scope
  ]

(** Debug parser *)

let rec string_of_expect e =
  match e with
  | ExpConstant s -> sprintf "c_%s" s
  | ExpFiller s -> sprintf "f_%s" s
  | ExpApp (e1, e2) ->
    let s1 = string_of_expect e1 in
    let s2 = string_of_expect e2 in
    sprintf "(%s %s)" s1 s2
  | ExpNaryApp (name, expect_list) ->
    let s_list =
      expect_list
      |> List.map string_of_expect
      |> String.concat " " in
    sprintf "(n_%s %s)" name s_list

let string_of_side_condition sc =
  sprintf "    %s: %s -> %s\n"
    sc.fn_name
    (String.concat " " (List.map string_of_expect sc.args))
    (string_of_expect sc.result_expect)

let string_of_sgn sgn =
  let pure_str =
    sgn.pure_args
    |> List.map string_of_expect
    |> String.concat ",  "
    |> sprintf "  pure: %s\n" in
  let hyp_str =
    sgn.hyp_args
    |> List.map string_of_expect
    |> String.concat ", "
    |> sprintf "  hyp: %s\n" in
  let sc_str =
    sgn.sc_list
    |> List.map string_of_side_condition
    |> String.concat ""
    |> sprintf "  side_conditions:\n%s" in
  let result_str =
    sgn.result
    |> string_of_expect
    |> sprintf "  result: %s\n" in
  sprintf "%s%s%s%s" pure_str hyp_str sc_str result_str

let print_binding (name, sgn) =
  printf "%s:\n%s\n" name (string_of_sgn sgn)

let debug_test () =
  let sgn_map = init_sgn_map () in
  List.iter print_binding (StrMap.bindings sgn_map)
