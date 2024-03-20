open Maps
open Table
open Printf

(* Debug checking phase: reverse the layout phase for the expression table *)
(* only, and print the result. *)

exception ReverseLayoutException of string

(* Remove expr_id from old_table, calculate its expression, and add the result *)
(* to new_table. Recursively remove/add any id's required to complete this as well. *)
(* Return the expression & updated tables. *)
let rec add_expr
    (varmap : string IntMap.t)
    (list_table : (int list) IntMap.t)
    (expr_id : int)
    (old_table : expr_table_entry IntMap.t)
    (new_table : Ir.expr IntMap.t)
    : Ir.expr * expr_table_entry IntMap.t * Ir.expr IntMap.t =
  match
    IntMap.find_opt expr_id old_table, IntMap.find_opt expr_id new_table
  with
  | None, None -> raise (ReverseLayoutException "could not find expr id")
  | Some _, Some _ -> raise (ReverseLayoutException "expr id in both tables")
  | Some ete, None ->
    let new_expr, old_table, new_table =
      (match ete.oper_id with
       | 0 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         let e2, old_table, new_table = add_expr varmap list_table ete.arg2 old_table new_table in
         Ir.App (e1, e2), old_table, new_table
       | 1 ->
         Ir.Var (IntMap.find ete.var_id varmap), old_table, new_table
       | 2 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         let e2, old_table, new_table = add_expr varmap list_table ete.arg2 old_table new_table in
         Ir.Eq (e1, e2), old_table, new_table
       | 3 ->
         let id_list = IntMap.find ete.list_arg list_table in
         let rev_list, old_table, new_table =
           List.fold_left
             (fold_add_expr varmap list_table)
             ([], old_table, new_table) id_list in
         Ir.And (List.rev rev_list), old_table, new_table
       | 4 ->
         let id_list = IntMap.find ete.list_arg list_table in
         let rev_list, old_table, new_table =
           List.fold_left
             (fold_add_expr varmap list_table)
             ([], old_table, new_table) id_list in
         Ir.Or (List.rev rev_list), old_table, new_table
       | 5 ->
         Ir.True, old_table, new_table
       | 6 ->
         Ir.False, old_table, new_table
       | 7 ->
         let id_list = IntMap.find ete.list_arg list_table in
         let rev_list, old_table, new_table =
           List.fold_left
             (fold_add_expr varmap list_table)
             ([], old_table, new_table) id_list in
         Ir.Xor2 (List.rev rev_list), old_table, new_table
         (* Old binary xor *)
         (*
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         let e2, old_table, new_table = add_expr varmap list_table ete.arg2 old_table new_table in
         Ir.Xor (e1, e2), old_table, new_table *)
       | 8 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         let e2, old_table, new_table = add_expr varmap list_table ete.arg2 old_table new_table in
         Ir.Impl (e1, e2), old_table, new_table
       | 9 ->
         (match IntMap.find ete.list_arg list_table with
          | [id1; id2; id3] ->
            let e1, old_table, new_table = add_expr varmap list_table id1 old_table new_table in
            let e2, old_table, new_table = add_expr varmap list_table id2 old_table new_table in
            let e3, old_table, new_table = add_expr varmap list_table id3 old_table new_table in
            Ite (e1, e2, e3), old_table, new_table
          | _ -> raise (ReverseLayoutException "bad length for ite")
         )
       | 10 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         Ir.Not e1, old_table, new_table
       | 11 ->
         Ir.Num (ete.num_arg), old_table, new_table
         (* 12, Term/Ivar, is deprecated *)
       | 13 ->
         let id_list = IntMap.find ete.list_arg list_table in
         let rev_list, old_table, new_table =
           List.fold_left
             (fold_add_expr varmap list_table)
             ([], old_table, new_table) id_list in
         Ir.Add (List.rev rev_list), old_table, new_table
       | 14 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         Ir.Mul (ete.numerator, e1), old_table, new_table
       | 15 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         let e2, old_table, new_table = add_expr varmap list_table ete.arg2 old_table new_table in
         Ir.Leq (e1, e2), old_table, new_table
       | 17 ->
         let e1, old_table, new_table = add_expr varmap list_table ete.arg1 old_table new_table in
         let e2, old_table, new_table = add_expr varmap list_table ete.arg2 old_table new_table in
         Ir.Lt (e1, e2), old_table, new_table
       | 19 ->
         (* Actually default. Represent with empty Xor. *)
         Xor2 [], old_table, new_table
       | i ->
         let msg = sprintf "bad oper_id code %d" i in
         raise (ReverseLayoutException msg)
      ) in
    let old_table = IntMap.remove expr_id old_table in
    let new_table = IntMap.add expr_id new_expr new_table in
    new_expr, old_table, new_table
  | None, Some e ->
    e, old_table, new_table

(* fold_left friendly version of add_expr *)
and fold_add_expr
  (varmap : string IntMap.t)
  (list_table : (int list) IntMap.t)
  (a : (Ir.expr list) * expr_table_entry IntMap.t * Ir.expr IntMap.t)
  (expr_id : int)
  : (Ir.expr list) * expr_table_entry IntMap.t * Ir.expr IntMap.t =
  let rev_list, old_table, new_table = a in
  let e, old_table, new_table =
    add_expr varmap list_table expr_id old_table new_table in
  (e :: rev_list), old_table, new_table

let rec make_expr_table'
  (varmap : string IntMap.t)
  (list_table : (int list) IntMap.t)
  (old_table : expr_table_entry IntMap.t)
  (new_table : Ir.expr IntMap.t)
  : Ir.expr IntMap.t =
  match IntMap.min_binding_opt old_table with
  | Some (expr_id, _) ->
    let _, old_table, new_table =
      add_expr varmap list_table expr_id old_table new_table in
    make_expr_table' varmap list_table old_table new_table
  | None -> new_table

let make_expr_table
  (varmap : string IntMap.t)
  (list_table : (int list) list)
  (expr_table : expr_table_entry list)
  : Ir.expr IntMap.t =
  let old_table =
    expr_table
    |> List.mapi (fun i x -> (i, x))
    |> int_map_of_bindings in
  let list_table =
    list_table
    |> List.mapi (fun i x -> i, x)
    |> int_map_of_bindings in
  let new_table = IntMap.empty in
  make_expr_table' varmap list_table old_table new_table

let run_check
  (varlist : string list)
  (table : prog)
  : unit =
  let varmap =
    varlist
    |> List.mapi (fun i a -> i, a)
    |> int_map_of_bindings in
  let list_table = List.map (fun (_, _, entry) -> entry) (table.list_table) in
  let expr_table = make_expr_table varmap list_table table.expr_table in
  printf "recovered expr table\n\n";
  varmap
  |> IntMap.bindings
  |> List.iter (fun (i, s) -> printf "%d : %s\n" i s);
  printf "\n";
  expr_table
  |> IntMap.bindings
  |> List.iter (fun (i, e) -> printf "%d : %s\n" i (Ir.str_of_expr e))
