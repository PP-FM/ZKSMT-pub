open Maps
open Printf

type expr =
  | Var of string
  | Constant of string
  | App of expr * expr
  | NaryApp of string * (expr list)
[@@deriving show]

type hyp_ref =
  | Premise of string
  | Derived of int
[@@deriving show]

(* All commands have a string, some memcell args, and some hypothesis list args. *)
type cmd = {
  name : string;
  expr_args : expr list;
  hyp_args : hyp_ref list;
  backptr : int option;
}
[@@deriving show]

type prog = {
  vars : string list;
  premises : expr StrMap.t;
  cmd_list : cmd list;
}

(** Debug printing *)

let show_mem_entry (name, expr) =
  sprintf "%s: %s" name (show_expr expr)

let show_prog prog =
  let var_str =
    prog.vars
    |> String.concat ", "
    |> sprintf "  vars: %s" in
  let premises_str =
    prog.premises
    |> StrMap.bindings
    |> List.map show_mem_entry
    |> String.concat ", "
    |> sprintf "  premises: %s" in
  let cmd_str =
    prog.cmd_list
    |> List.map show_cmd
    |> String.concat ", "
    |> sprintf "  cmds: %s" in
  sprintf "prog:\n%s\n%s\n%s"
    var_str premises_str cmd_str

(** Pretty printing *)

let one_line_limit = 6

let rec size expr =
  match expr with
  | Var _ -> 1
  | Constant _ -> 1
  | App (e1, e2) -> 1 + (size e1) + (size e2)
  | NaryApp (_, expr_list) ->
    expr_list
    |> List.map size
    |> List.fold_left (+) 1

let rec noindent_str_of_expr expr =
  match expr with
  | Var name -> sprintf "v_%s" name
  | Constant name -> sprintf "c_%s" name
  | App (e1, e2) ->
    sprintf "(%s %s)"
      (noindent_str_of_expr e1)
      (noindent_str_of_expr e2)
  | NaryApp (name, expr_list) ->
    let list_str =
      expr_list
      |> List.map noindent_str_of_expr
      |> String.concat " " in
    sprintf "(%s %s)" name list_str

let indent_str i = String.make i ' '

let rec indent_str_of_expr indent expr =
  match expr with
  | Var n ->
    sprintf "%sv_%s\n"
      (indent_str indent)
      n
  | Constant n ->
    sprintf "%sv_%s\n"
      (indent_str indent)
      n
  | App (e1, e2) ->
    let e1_str = str_of_expr (indent + 2) e1 in
    let e2_str = str_of_expr (indent + 2) e2 in
    sprintf "%s(\n%s%s%s)\n"
      (indent_str indent)
      e1_str
      e2_str
      (indent_str indent)
  | NaryApp (name, expr_list) ->
    let list_str =
      expr_list
      |> List.map (str_of_expr (indent + 2))
      |> String.concat "" in
    sprintf "%s(%s\n%s%s)\n"
      (indent_str indent)
      name
      list_str
      (indent_str indent)
and str_of_expr indent expr =
  if (size expr) > one_line_limit then
    indent_str_of_expr indent expr
  else
    sprintf "%s%s\n" (indent_str indent) (noindent_str_of_expr expr)

let str_of_premise_entry (name, expr) =
  sprintf "  %s:\n%s" name (str_of_expr 4 expr)

let str_of_premises mem =
  let bindings_str =
    mem
    |> StrMap.bindings
    |> List.map str_of_premise_entry
    |> String.concat "" in
  sprintf "premises:\n%s" bindings_str

let str_of_hyp_ref h =
  match h with
  | Premise n -> sprintf "p_%s" n
  | Derived i -> sprintf "d_%d" i

let str_of_cmd c =
  let expr_args_str =
    c.expr_args
    |> List.map noindent_str_of_expr
    |> String.concat ", "
    |> sprintf "(%s)" in
  let hyp_args_str =
    c.hyp_args
    |> List.map str_of_hyp_ref
    |> String.concat ", "
    |> sprintf "(%s)" in
  let backptr_str =
    match c.backptr with
    | None -> "nil"
    | Some i -> string_of_int i in
  sprintf "%s %s %s %s" c.name expr_args_str hyp_args_str backptr_str

let str_of_inferred_cmd c e =
  let expr_args_str =
    c.expr_args
    |> List.map noindent_str_of_expr
    |> String.concat ", "
    |> sprintf "(%s)" in
  let hyp_args_str =
    c.hyp_args
    |> List.map str_of_hyp_ref
    |> String.concat ", "
    |> sprintf "(%s)" in
  let expr_str = noindent_str_of_expr e in
  sprintf "%s %s %s\n  %s" c.name expr_args_str hyp_args_str expr_str

let expand_string name str_list =
  str_list
  |> List.map (sprintf "  %s\n")
  |> String.concat ""
  |> (sprintf "%s:\n%s" name)

let str_of_prog prog =
  sprintf "%s%s%s"
    (expand_string "vars" prog.vars)
    (str_of_premises prog.premises)
    (expand_string "cmd_list" (List.map str_of_cmd prog.cmd_list))

let str_of_inferred_prog prog hyp_results =
  sprintf "%s%s%s"
    (expand_string "vars" prog.vars)
    (str_of_premises prog.premises)
    (expand_string "cmd_list"
       (List.map2 str_of_inferred_cmd prog.cmd_list hyp_results))
