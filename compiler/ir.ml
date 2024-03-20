open Maps
open Printf

type expr =
  | Var of string
  | App of expr * expr
  | NaryApp of string * expr list
  | True
  | False
  | Eq of expr * expr
  | Impl of expr * expr
  (* Obsolete LFSC Xor *)
  | Xor of expr * expr
  (* Resolute n-ary XOR *)
  | Xor2 of expr list
  | Ite of expr * expr * expr
  | Not of expr
  | And of expr list
  | Or of expr list
  | Num of int
  | Flag of bool
  (* LIA *)
  | Add of expr list
  | Mul of int * expr
  | Lt of expr * expr
  | Leq of expr * expr
[@@deriving show]

(* Specifies how a clause was previously proven *)
type hyp_ref =
  | Premise of string
  | Derived of int
[@@deriving show]

(* A single step in the proof *)
type cmd = {
  name : string;
  expr_args : expr list;
  hyp_args : hyp_ref list;
  result : expr;
  backptr : int option;
}
[@@deriving show]

type prog = {
  vars : string list;
  premises : expr StrMap.t;
  cmd_list : cmd list;
}

(* Metrics *)
let metrics_cmd (m : Metrics.t) (cmd : cmd) : Metrics.t =
  match StrMap.find_opt cmd.name m with
  | Some i -> StrMap.add cmd.name (i+1) m
  | None -> StrMap.add cmd.name 1 m

let metrics (prog : prog) : Metrics.t =
  List.fold_left metrics_cmd StrMap.empty prog.cmd_list

(** Pretty Printing *)

(*
let a prog =
  prog.vars
  |> String.concat " "
  |> Printf.sprintf "vars: %s"
|> print_endline;
prog.premises
|> StrMap.bindings
|> List.map (fun (k, e) -> Printf.sprintf "%s: %s\n"
                k (show_expr e)
            )
|> String.concat ""
|> print_endline;
prog.cmd_list
|> List.map show_cmd
|> String.concat "\n"
|> print_endline *)

(* Tail recursive versions of List.map & List.map2 *)
let tr_map f l = List.rev (List.rev_map f l)
let tr_map2 f l1 l2 = List.rev (List.rev_map2 f l1 l2)
let rec tr_mapi' f l idx ans =
  match l with
  | [] -> List.rev ans
  | head :: tail ->
    tr_mapi' f tail (idx+1) ((f idx head) :: ans)
let tr_mapi f l = tr_mapi' f l 0 []

let rec str_of_expr e =
  match e with
  | Var s -> s
  | App (e1, e2) -> sprintf "(%s %s)" (str_of_expr e1) (str_of_expr e2)
  | NaryApp (name, expr_list) ->
    let str =
      expr_list
      |> tr_map str_of_expr
      |> String.concat " " in
    sprintf "(%s %s)" name str
  | True -> "true"
  | False -> "false"
  | Eq (e1, e2) -> sprintf "(= %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Impl (e1, e2) -> sprintf "(=> %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Xor (e1, e2) -> sprintf "(xor %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Xor2 expr_list ->
    let str =
      expr_list
      |> tr_map str_of_expr
      |> String.concat " " in
    sprintf "(xor %s)" str
  | Ite (e1, e2, e3) ->
    sprintf "(ite %s %s %s)" (str_of_expr e1) (str_of_expr e2) (str_of_expr e3)
  | Not e1 -> sprintf "(not %s)" (str_of_expr e1)
  | And expr_list ->
    let str =
      expr_list
      |> tr_map str_of_expr
      |> String.concat " " in
    sprintf "(and %s)" str
  | Or expr_list ->
    let str =
      expr_list
      |> tr_map str_of_expr
      |> String.concat " " in
    sprintf "(or %s)" str
  | Num i -> sprintf "%d" i
  | Flag true -> "tt"
  | Flag false -> "ff"
  | Add elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(+ %s)"
  | Mul (i, e1) -> sprintf "(* %d %s)" i (str_of_expr e1)
  | Lt (e1, e2) -> sprintf "(< %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Leq (e1, e2) -> sprintf "(<= %s %s)" (str_of_expr e1) (str_of_expr e2)

let str_of_expr_list expr_list =
  expr_list
  |> tr_map str_of_expr
  |> String.concat "; "
  |> sprintf "[%s]"

let str_of_hyp_ref h =
  match h with
  | Premise s -> sprintf "premise %s" s
  | Derived i -> sprintf "derived %d" i

let str_of_cmd i cmd =
  let num_str = sprintf "  derived clause number: %d\n" i in
  let rule_str = sprintf "  rule: %s\n" cmd.name in
  let expr_str =
    cmd.expr_args
    |> tr_map str_of_expr
    |> String.concat ", "
    |> sprintf "  expr args: [%s]\n" in
  let clause_str =
    cmd.hyp_args
    |> tr_map str_of_hyp_ref
    |> String.concat ", "
    |> sprintf "  clause args: [%s]\n" in
  let backptr_str =
    match cmd.backptr with
    | None -> "  backptr: nil\n"
    | Some i -> sprintf "  backptr: %d\n" i in
  let concl_str = sprintf "  conclusion: %s\n" (str_of_expr cmd.result) in
  sprintf "%s%s%s%s%s%s"
    num_str rule_str expr_str clause_str backptr_str concl_str

let str_of_prog prog =
  let var_str =
    prog.vars
    |> String.concat " "
    |> sprintf "vars: %s\n" in
  let premises_str =
    prog.premises
    |> StrMap.bindings
    |> tr_map (fun (k, e) -> sprintf "  %s: %s\n" k (str_of_expr e))
    |> String.concat ""
    |> sprintf "premises:\n%s" in
  let cmd_lst_str =
    prog.cmd_list
    |> tr_mapi str_of_cmd
    |> String.concat "\n"
    |> sprintf "steps:\n%s" in
  sprintf "%s%s%s"
    var_str premises_str cmd_lst_str

let fprint_cmd f i cmd =
  let num_str = sprintf "  derived clause number: %d\n" i in
  let rule_str = sprintf "  rule: %s\n" cmd.name in
  let expr_str =
    cmd.expr_args
    |> tr_map str_of_expr
    |> String.concat ", "
    |> sprintf "  expr args: [%s]\n" in
  let clause_str =
    cmd.hyp_args
    |> tr_map str_of_hyp_ref
    |> String.concat ", "
    |> sprintf "  clause args: [%s]\n" in
  let backptr_str =
    match cmd.backptr with
    | None -> "  backptr: nil\n"
    | Some i -> sprintf "  backptr: %d\n" i in
  let concl_str = sprintf "  conclusion: %s\n" (str_of_expr cmd.result) in
  let s = sprintf "%s%s%s%s%s%s"
      num_str rule_str expr_str clause_str backptr_str concl_str in
  fprintf f "%s" s

let rec get_max_list (cur_max : int) (cmd_list : cmd list) : unit =
  match cmd_list with
  | [] ->
    Printf.printf "max list %d\n" cur_max
  | cmd :: tail ->
    let l = match cmd.result with
      | Or elist -> List.length elist
      | _ -> 0 in
    if l > cur_max then
      Printf.printf "new max %d\n" l;
    let cur_max = max l cur_max in
    get_max_list cur_max tail

let fprint_prog f prog =
  let var_str =
    prog.vars
    |> String.concat " "
    |> sprintf "vars: %s\n" in
  fprintf f "%s" var_str;
  let premises_str =
    prog.premises
    |> StrMap.bindings
    |> tr_map (fun (k, e) -> sprintf "  %s: %s\n" k (str_of_expr e))
    |> String.concat ""
    |> sprintf "premises:\n%s" in
  fprintf f "%s" premises_str;
  fprintf f "steps:\n";
  List.iteri (fun i c ->
      fprint_cmd f i c;
      fprintf f "\n"
    ) prog.cmd_list
