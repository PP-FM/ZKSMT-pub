open Printf

exception TableException of string

let default = 0
let clause_default = 99999
let const_var_code = 1

let max_expr_args = 3
let max_clause_args = 3

let ty_default = 0
let ty_bool = 1
let ty_int = 2
let ty_defsort_bit = 0x40000000
let ty_uf_bit = 0x80000000

type expr_table_entry = {
  oper_id : int;
  ty : int;
  height : int;
  arg1 : int;
  arg2 : int;
  var_id : int;
  list_arg : int;
  num_arg : int; (* Obsolete, not printed *)
  numerator : int;
  denominator : int;
}

type step = {
  rule_id : int;
  expr_args : int list;
  clause_args : int list;
  clauseid : int
}

type clause_entry = {
  result : int;
  is_assumption : bool;
  backptr : int
}

type prog = {
  num_vars : int;
  max_list_len : int;
  (*
  num_list_entries : int;
  num_steps : int; *)
  uf_table : (int * (int list)) list;
  expr_table : expr_table_entry list;
  (* ty, height, elements *)
  list_table : (int * int * (int list)) list;
  num_assumptions : int;
  clause_list : clause_entry list;
  step_list : step list
}

(* Text file output format - old version without types & height. *)

module NoType = struct
  let str_of_expr_table_entry ete =
    (* TODO: integrate number arg *)
    sprintf "%d %d %d %d %d %d %d\n"
      ete.oper_id ete.arg1 ete.arg2 ete.list_arg ete.var_id
      ete.numerator ete.denominator

  let str_of_expr_list list =
    let list_with_size = (List.length list) :: list in
    list_with_size
    |> List.map string_of_int
    |> String.concat " "
    |> sprintf "%s\n"

  let str_of_clause_entry ce =
    let int_of_assm = if ce.is_assumption then 1 else 0 in
    sprintf "%d %d %d\n" ce.result int_of_assm ce.backptr

  let str_of_step s =
    if
      List.length s.expr_args > max_expr_args ||
      List.length s.clause_args > max_clause_args then
      raise (TableException "too many expr or clause arguments")
    else
      let padded_expr_args = List.init max_expr_args
          (fun i ->
             match List.nth_opt s.expr_args i with
             | Some x -> x
             | None -> default
          ) in
      let padded_clause_args = List.init max_clause_args
          (fun i ->
             match List.nth_opt s.clause_args i with
             | Some x -> x
             | None -> clause_default
          ) in
      let expr_arg_str =
        padded_expr_args
        |> List.map string_of_int
        |> String.concat " " in
      let clause_arg_str =
        padded_clause_args
        |> List.map string_of_int
        |> String.concat " " in
      sprintf "%d %d %s %s\n" s.rule_id s.clauseid expr_arg_str clause_arg_str

  let str_of_prog prog =
    let expr_table_str =
      prog.expr_table
      |> List.map str_of_expr_table_entry
      |> String.concat "" in
    let list_table_str =
      prog.list_table
      |> List.map (fun (_, _, entry) -> entry)
      |> List.map str_of_expr_list
      |> String.concat "" in
    let clause_list_str =
      prog.clause_list
      |> List.map str_of_clause_entry
      |> String.concat "" in
    let step_list_str =
      prog.step_list
      |> List.map str_of_step
      |> String.concat "" in
    sprintf "%d %d %d %d %d %d\n\n%s\n%s\n%s\n%s"
      prog.num_vars
      (List.length prog.expr_table)
      prog.max_list_len
      (List.length prog.list_table)
      (List.length prog.clause_list)
      prog.num_assumptions
      expr_table_str
      list_table_str
      clause_list_str
      step_list_str
end

let notype_str_of_prog = NoType.str_of_prog

(* Pretty printing including types *)

let str_of_expr_table_entry ete =
  sprintf "%d %d %d %d %d %d %d %d %d\n"
    ete.oper_id ete.ty ete.height ete.arg1 ete.arg2 ete.list_arg ete.var_id
    ete.numerator ete.denominator

let str_of_expr_list (ty, height, list) =
  let list_with_size = ty :: height :: (List.length list) :: list in
  list_with_size
  |> List.map string_of_int
  |> String.concat " "
  |> sprintf "%s\n"

let str_of_clause_entry ce =
  let int_of_assm = if ce.is_assumption then 1 else 0 in
  sprintf "%d %d %d\n" ce.result int_of_assm ce.backptr

let str_of_step s =
  if
    List.length s.expr_args > max_expr_args ||
    List.length s.clause_args > max_clause_args then
    raise (TableException "too many expr or clause arguments")
  else
    let padded_expr_args = List.init max_expr_args
        (fun i ->
           match List.nth_opt s.expr_args i with
           | Some x -> x
           | None -> default
        ) in
    let padded_clause_args = List.init max_clause_args
        (fun i ->
           match List.nth_opt s.clause_args i with
           | Some x -> x
           | None -> clause_default
        ) in
    let expr_arg_str =
      padded_expr_args
      |> List.map string_of_int
      |> String.concat " " in
    let clause_arg_str =
      padded_clause_args
      |> List.map string_of_int
      |> String.concat " " in
    sprintf "%d %d %s %s\n" s.rule_id s.clauseid expr_arg_str clause_arg_str

let str_of_uf_entry (ty, args) =
  let args_with_size = ty :: (List.length args) :: args in
  args_with_size
  |> List.map string_of_int
  |> String.concat " "
  |> sprintf "%s\n"

let str_of_prog prog =
  let expr_table_str =
    prog.expr_table
    |> List.map str_of_expr_table_entry
    |> String.concat "" in
  let list_table_str =
    prog.list_table
    |> List.map str_of_expr_list
    |> String.concat "" in
  let clause_list_str =
    prog.clause_list
    |> List.map str_of_clause_entry
    |> String.concat "" in
  let step_list_str =
    prog.step_list
    |> List.map str_of_step
    |> String.concat "" in
  let uf_table_str =
    prog.uf_table
    |> List.map str_of_uf_entry
    |> String.concat "" in
  sprintf "%d %d %d %d %d %d %d\n\n%s\n%s\n%s\n%s\n%s"
    prog.num_vars
    (List.length prog.expr_table)
    prog.max_list_len
    (List.length prog.list_table)
    (List.length prog.clause_list)
    prog.num_assumptions
    (List.length prog.uf_table)
    expr_table_str
    list_table_str
    clause_list_str
    step_list_str
    uf_table_str

let fprint_prog f prog =
  let s = sprintf "%d %d %d %d %d %d %d\n"
    prog.num_vars
    (List.length prog.expr_table)
    prog.max_list_len
    (List.length prog.list_table)
    (List.length prog.clause_list)
    prog.num_assumptions
    (List.length prog.uf_table) in
  fprintf f "%s" s;

  fprintf f "\n";
  prog.expr_table
  |> List.iter (fun e -> fprintf f "%s" (str_of_expr_table_entry e));

  fprintf f "\n";
  prog.list_table
  |> List.iter (fun e -> fprintf f "%s" (str_of_expr_list e));

  fprintf f "\n";
  prog.clause_list
  |> List.iter (fun e -> fprintf f "%s" (str_of_clause_entry e));
  
  fprintf f "\n";
  prog.step_list
  |> List.iter (fun e -> fprintf f "%s" (str_of_step e));

  fprintf f "\n";
  prog.uf_table
  |> List.iter (fun e -> fprintf f "%s" (str_of_uf_entry e));

  fprintf f "\n"
