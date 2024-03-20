open Printf
open Maps
open Ir

exception NaryException of string

(* Tail recursive versions of List.map & List.map2 *)
let tr_map f l = List.rev (List.rev_map f l)
let tr_map2 f l1 l2 = List.rev (List.rev_map2 f l1 l2)

let rec collect_or
    (e : Binary_untyped.expr)
    (expr_list : Binary_untyped.expr list)
  : Binary_untyped.expr list =
  match e with
  | Constant "false" -> expr_list
  | NaryApp ("or", [a; b]) ->
    collect_or b (expr_list @ [a])
  | _ -> raise (NaryException "collect_or failed")

let rec collect_and
    (e : Binary_untyped.expr)
    (expr_list : Binary_untyped.expr list)
  : Binary_untyped.expr list =
  match e with
  | Constant "true" -> expr_list
  | NaryApp ("and", [a; b]) ->
    collect_and b (expr_list @ [a])
  | _ ->
    let s = Binary_untyped.indent_str_of_expr 2 e in
    Printf.fprintf stderr "error:\n\n%s\n\n" s;
    raise (NaryException "collect_and failed")

let rec convert_expr (e : Binary_untyped.expr) : expr =
  match e with
  | Binary_untyped.Var s -> Var s
  | Constant "true" -> True
  | Constant "false" -> False
  | Constant "ff" -> Flag false
  | Constant "tt" -> Flag true
  | Constant s ->
    (match int_of_string_opt s with
     | Some n -> Num n
     | None -> raise (NaryException (sprintf "unknown constant %s" s))
    )
  | App (e1, e2) -> App (convert_expr e1, convert_expr e2)
  | NaryApp ("and", _) ->
    let expr_list = collect_and e [] in
    And (tr_map convert_expr expr_list)
  | NaryApp ("or", _) ->
    let expr_list = collect_or e [] in
    Or (tr_map convert_expr expr_list)
  | NaryApp ("not", [a]) ->
    Not (convert_expr a)
  | NaryApp ("=", [a; b]) ->
    Eq (convert_expr a, convert_expr b)
  | NaryApp ("xor", [a; b]) ->
    Xor(convert_expr a, convert_expr b)
  | NaryApp ("ite", [a; b; c]) ->
    Ite(convert_expr a, convert_expr b, convert_expr c)
  | NaryApp ("=>", [a; b]) ->
    Impl (convert_expr a, convert_expr b)
  | NaryApp (name, _) ->
    raise (NaryException (sprintf "malformed nary app %s" name))

let convert_hyp_ref h =
  match h with
  | Binary_untyped.Premise s -> Premise s
  | Derived i -> Derived i

let convert_cmd (c : Binary_untyped.cmd) (result : Binary_untyped.expr) : cmd =
  {
    name=c.name;
    expr_args = tr_map convert_expr c.expr_args;
    hyp_args = tr_map convert_hyp_ref c.hyp_args;
    result = convert_expr result;
    backptr = c.backptr
  }

let convert_prog
    (prog : Binary_untyped.prog)
    (hyp_results : Binary_untyped.expr list)
  : prog =
  {
    vars = prog.vars;
    premises = StrMap.map convert_expr prog.premises;
    cmd_list = tr_map2 convert_cmd prog.cmd_list hyp_results
  }
