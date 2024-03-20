open Table
open Maps

(* Variable types are hardcoded to integer for WiSA tests. *)
let wisa = ref false

let oper_id_app     = 0
let oper_id_var     = 1
let oper_id_eq      = 2
let oper_id_and     = 3
let oper_id_or      = 4
let oper_id_true    = 5
let oper_id_false   = 6
let oper_id_xor     = 7
let oper_id_impl    = 8
let oper_id_ite     = 9
let oper_id_not     = 10

let oper_id_num     = 11 (* TODO: OBSOLETE FROM LFSC *)

let oper_id_naryapp = 11

let oper_id_term    = 12 (* TODO: deprecated *)
let oper_id_add     = 13
let oper_id_mul     = 14
let oper_id_leq     = 15
let oper_id_geq     = 16
let oper_id_lt      = 17
let oper_id_gt      = 18

let oper_id_default = 19

module Expr = struct
  type t = Ir.expr
  let compare x y = compare x y
end

module ExprMap = Map.Make(Expr)

module ExprListTy = struct
  type t = Ir.expr list * int
  let compare x y = compare x y
end

module ExprListTyMap = Map.Make(ExprListTy)

(* Contains extra information for in-progress conversion *)
type collection = {
  vmap : int StrMap.t;
  (* Index in uftable, ret_ty, arg ty list *)
  ufmap : (int * int * (int list)) StrMap.t;
  etable : (int * expr_table_entry) ExprMap.t;
  etable_len : int;
  (* idx, ty, height, elements *)
  ltable : (int * int * int * (int list)) ExprListTyMap.t;
  ltable_len : int;

  assn_map : (int * int) StrMap.t; (* result expr_id, clause_id *)
  clause_list : clause_entry Elist.t;
  step_list : step Elist.t
}

let default_entry = {
  oper_id = default;
  ty = ty_default;
  height = 0;
  arg1 = default;
  arg2 = default;
  var_id = default;
  list_arg = default;
  num_arg = default;
  numerator = 0;
  denominator = 1;
}

(* Assumes 63 (or at least >31) bit int, else beware overflow. *)
let int_of_ty (ty : Ir_checker.ty) : int =
  match ty with
  | TyDefault -> ty_default
  | TyInt -> ty_int
  | TyBool -> ty_bool
  | TyDefSort i -> ty_defsort_bit lor i

let get_height (child_height : int list) : int =
  match child_height with
  | [] -> 0
  | _ ->
    (1 + List.fold_left max 0 child_height)

(* Takes a variable map, an expression and in-progress expression & list tables.
   Returns tables updated to contain the expression along with the entry for the
   expression. Idempotent. *)
let rec add_expr
    (sgn : Ir_checker.signature)
    (e : Ir.expr)
    (col : collection)
    (* idx, height *)
  : int * int * collection
  =
  (* TODO: remove debugging code
  printf "add_expr started with %s\n" (Ir.str_of_expr e);
  col.etable
  |> ExprMap.bindings
  |> List.iter
    (fun (expr, (i, ete)) ->
       printf "%d : %s : %s\n"
         i
         (Ir.str_of_expr expr)
         (show_expr_table_entry ete)
    );
  print_endline ""; *)

  match ExprMap.find_opt e col.etable with
  | Some (ptr, entry) ->
    (**printf "^ was found: %d\n\n" ptr;*)
    ptr, entry.height, col
  | None ->
    let entry, col =
      match e with
      | Var s ->
        let ty =
          if not (!wisa) then
            StrMap.find s sgn.varmap
          else
            TyInt in
        let var_id = StrMap.find s col.vmap in
        let entry = {
          default_entry with
          ty = int_of_ty ty;
          height = 0;
          oper_id = oper_id_var;
          var_id = var_id;
        } in
        entry, col
      | App (e1, e2) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let arg2, h2, col = add_expr sgn e2 col in
        let entry = {
          default_entry with
          (* NOTE: incorrect for typing. *)
          ty = ty_default;
          height = get_height [h1; h2];
          oper_id = oper_id_app;
          arg1 = arg1;
          arg2 = arg2;
        } in
        entry, col
      | NaryApp (name, expr_list) ->
        let idx, ret_ty, _arg_tys = StrMap.find name col.ufmap in
        let applist_ty = ty_uf_bit lor idx in
        let list_arg, hl, col = add_expr_list sgn applist_ty expr_list col in
        let entry = {
          default_entry with
          oper_id = oper_id_naryapp;
          ty = ret_ty;
          height = get_height [hl];
          list_arg = list_arg;
          var_id = idx;
        } in
        entry, col
      | True ->
        let entry = {
          default_entry with
          oper_id = oper_id_true;
          ty = ty_bool;
          height = 0;
        } in
        entry, col
      | False ->
        let entry = {
          default_entry with
          oper_id = oper_id_false;
          ty = ty_bool;
          height = 0;
        } in
        entry, col
      | Eq (e1, e2) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let arg2, h2, col = add_expr sgn e2 col in
        let entry = {
          default_entry with
          oper_id = oper_id_eq;
          ty = ty_bool;
          height = get_height [h1; h2];
          arg1 = arg1;
          arg2 = arg2;
        } in
        entry, col
      | Impl (e1, e2) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let arg2, h2, col = add_expr sgn e2 col in
        let entry = {
          default_entry with
          oper_id = oper_id_impl;
          ty = ty_bool;
          height = get_height [h1; h2];
          arg1 = arg1;
          arg2 = arg2;
        } in
        entry, col
      | Xor (e1, e2) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let arg2, h2, col = add_expr sgn e2 col in
        let entry = {
          default_entry with
          oper_id = oper_id_xor;
          ty = ty_bool;
          height = get_height [h1; h2];
          arg1 = arg1;
          arg2 = arg2;
        } in
        entry, col
      | Xor2 expr_list ->
        let list_arg, hl, col = add_expr_list sgn ty_bool expr_list col in
        let entry = {
          default_entry with
          oper_id = oper_id_xor;
          ty = ty_bool;
          height = get_height [hl];
          list_arg = list_arg
        } in
        entry, col
      | Ite (e1, e2, e3) ->
        (* NOTE: not updated for types *)
        let list_arg, hl, col = add_expr_list sgn ty_default [e1; e2; e3] col in
        let entry = {
          default_entry with
          oper_id = oper_id_ite;
          ty = ty_bool;
          height = get_height [hl];
          list_arg = list_arg
        } in
        entry, col
      | Not e1 ->
        let arg1, h1, col = add_expr sgn e1 col in
        let entry = {
          default_entry with
          oper_id = oper_id_not;
          ty = ty_bool;
          height = get_height [h1];
          arg1 = arg1
        } in
        entry, col
      | And expr_list ->
        let list_arg, hl, col = add_expr_list sgn ty_bool expr_list col in
        let entry = {
          default_entry with
          oper_id = oper_id_and;
          ty = ty_bool;
          height = get_height [hl];
          list_arg = list_arg
        } in
        entry, col
      | Or expr_list ->
        let list_arg, hl, col = add_expr_list sgn ty_bool expr_list col in
        let entry = {
          default_entry with
          oper_id = oper_id_or;
          ty = ty_bool;
          height = get_height [hl];
          list_arg = list_arg
        } in
        entry, col
      | Num i ->
        let entry = {
          default_entry with
          oper_id = oper_id_num;
          ty = ty_default;
          height = 0;
          num_arg = i
        } in
        entry, col
      | Flag b ->
        let i = if b then 1 else 0 in
        let entry = {
          default_entry with
          oper_id = oper_id_num;
          ty = ty_default;
          height = 0;
          num_arg = i
        } in
        entry, col
      | Add expr_list ->
        let list_arg, hl, col = add_expr_list sgn ty_int expr_list col in
        let entry = {
          default_entry with
          oper_id = oper_id_add;
          ty = ty_int;
          height = get_height [hl];
          list_arg = list_arg
        } in
        entry, col
      | Mul (i, e1) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let entry = {
          default_entry with
          oper_id = oper_id_mul;
          ty = ty_int;
          height = get_height [h1];
          arg1 = arg1;
          numerator = i
        } in
        entry, col
      | Lt (e1, e2) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let arg2, h2, col = add_expr sgn e2 col in
        let entry = {
          default_entry with
          oper_id = oper_id_lt;
          ty = ty_bool;
          height = get_height [h1; h2];
          arg1 = arg1;
          arg2 = arg2;
        } in
        entry, col
      | Leq (e1, e2) ->
        let arg1, h1, col = add_expr sgn e1 col in
        let arg2, h2, col = add_expr sgn e2 col in
        let entry = {
          default_entry with
          oper_id = oper_id_leq;
          ty = ty_bool;
          height = get_height [h1; h2];
          arg1 = arg1;
          arg2 = arg2;
        } in
        entry, col
    in
    let ptr = col.etable_len in
    (*
  printf "add_expr ended with %s\n" (Ir.str_of_expr e);
  col.etable
  |> ExprMap.bindings
  |> List.iter
    (fun (expr, (i, ete)) ->
       printf "%d : %s : %s\n"
         i
         (Ir.str_of_expr expr)
         (show_expr_table_entry ete)
    );
  printf "return val: %d\n" ptr;
  print_endline ""; *)
    ptr, entry.height, {
      col with
      etable = ExprMap.add e (ptr, entry) col.etable;
      etable_len = col.etable_len + 1
    }

and add_expr_list
  (sgn : Ir_checker.signature)
  (ty : int)
  (expr_list : Ir.expr list)
  (col : collection)
  : int * int * collection =
  match ExprListTyMap.find_opt (expr_list, ty) col.ltable with
  | Some (ptr, _ty, height, _elements) -> ptr, height, col
  | None ->
    let ptr_list, height,  col =
      List.fold_left (add_expr_list' sgn) ([], 0, col) expr_list in
    let ptr = col.ltable_len in
    let ltable = ExprListTyMap.add (expr_list, ty) (ptr, ty, height, ptr_list) col.ltable in
    let ltable_len = col.ltable_len + 1 in
    let col = {col with ltable; ltable_len} in
    ptr, height, col

(* fold_left-friendly helper for add_expr_list *)
and add_expr_list'
  (sgn : Ir_checker.signature)
  (ptr_lst_height_col : (int list) * int * collection)
  (e : Ir.expr)
  : (int list) * int * collection =
  let ptr_lst, height, col = ptr_lst_height_col in
  let ptr, h2, col = add_expr sgn e col in
  (ptr_lst @ [ptr]), max height h2, col

(* Assumes all assumptions have been added. *)
let clauseid_of_hyp_ref
  (col : collection)
  (hyp_ref : Ir.hyp_ref)
  : int =
  match hyp_ref with
  | Premise s -> snd (StrMap.find s col.assn_map)
  | Derived i -> i + (StrMap.cardinal col.assn_map)

(* Adds the command (and any necessary exprs & expr lists) to the table. The *)
(* clause and step are added as the next entry in the clause & step table respectively. *)
(* If you want an out of order step table, shuffle it later. *)
let add_cmd
  (sgn : Ir_checker.signature)
  (rule_codes : int StrMap.t)
  (col : collection)
  (cmd : Ir.cmd)
  : collection =
  if not (StrMap.mem cmd.name rule_codes) then
    (Printf.printf "could not find code for rule %s\n" cmd.name;
     raise Not_found) else
  let rule_id = StrMap.find cmd.name rule_codes in
  let clauseid = Elist.length col.clause_list in
  let expr_args, _height, col =
    List.fold_left (add_expr_list' sgn) ([], 0, col) cmd.expr_args in
  let clause_args = List.map (clauseid_of_hyp_ref col) cmd.hyp_args in
  let result_ptr, _height, col = add_expr sgn cmd.result col in

  let step = {
    rule_id;
    expr_args;
    clause_args;
    clauseid
  } in

  let clause_entry = {
    result = result_ptr;
    is_assumption = cmd.name = "scope_assume";
    backptr =
      match cmd.backptr with
      | None -> clause_default
      | Some i -> i
  } in

  {col with
   clause_list = Elist.rev_cons col.clause_list clause_entry;
   step_list = Elist.rev_cons col.step_list step
  }

let rec add_assumptions
  (sgn : Ir_checker.signature)
  (idx : int) (* index of current assumption *)
  (prem_list : (string * Ir.expr) list)
  (col : collection)
  : collection =
  match prem_list with
  | [] -> col
  | (name, e) :: tail ->
    let ptr, _height, col = add_expr sgn e col in
    let col = {
      col with
      assn_map = StrMap.add name (ptr, idx) col.assn_map;
      clause_list = Elist.rev_cons col.clause_list {
          result = ptr;
          is_assumption = false;
          backptr = clause_default
        }
    } in
    add_assumptions sgn (idx + 1) tail col

let col_of_ir
  (rule_codes : int StrMap.t)
  (sgn : Ir_checker.signature)
     (prog : Ir.prog) : collection =
  (* Order is determined by order in prog. *)
  let vmap =
    prog.vars
    |> List.mapi (fun i a ->
        if a = Resolute.const_varname then a, const_var_code
        else a, (const_var_code + 1 + i)
        )
    |> map_of_bindings in
  let ufmap_list = ("uf default", (Ir_checker.TyDefault, [])) :: StrMap.bindings sgn.ufmap in
  let ufmap =
    ufmap_list
    |> List.mapi (fun i (name, (ret_ty, arg_ty)) ->
        name, (i, int_of_ty ret_ty, (List.map int_of_ty arg_ty))
      )
    |> map_of_bindings in
  (* Bogus Expr that won't be matched with anything *)
  let throwaway_expr = Ir.Eq (Mul (-3, Var "--"), False) in
  let col = {
    vmap;
    ufmap;
    etable = ExprMap.singleton throwaway_expr (0, {default_entry with oper_id = 19});
    etable_len = 1;
    ltable = ExprListTyMap.empty;
    ltable_len = 0;
    assn_map = StrMap.empty;
    clause_list = Elist.nil;
    step_list = Elist.nil
  } in
  let col = add_assumptions sgn 0 (StrMap.bindings prog.premises) col in
  let col = List.fold_left (add_cmd sgn rule_codes) col prog.cmd_list in
  col

let rec max_list default lst =
  match lst with
  | [] -> default
  | hd :: tail ->
    let new_max = max hd default in
    max_list new_max tail

let pass
    (rule_codes : int StrMap.t)
    (sgn : Ir_checker.signature)
    (prog : Ir.prog) : prog =
  let col = col_of_ir rule_codes sgn prog in
  let max_list_len =
    col.ltable
    |> ExprListTyMap.bindings
    |> tail_rec_map (fun ((_, _), (_, _, _, l)) -> l)
    |> tail_rec_map List.length
    |> max_list 0 in
  let expr_table =
    col.etable
    |> ExprMap.bindings
    |> List.sort (fun (_, (p1, _)) (_, (p2, _)) -> compare p1 p2)
    |> tail_rec_map (fun (_, (_, ete)) -> ete) in
  (*|> List.map (fun (_, (_, ptr)) -> ptr) in*)
  let list_table =
    col.ltable
    |> ExprListTyMap.bindings
    |> List.sort (fun ((_, _), (p1, _, _, _)) (_, (p2, _, _, _)) -> compare p1 p2)
    |> tail_rec_map (fun (_, (_, ty, height, entry)) -> ty, height, entry) in
  let uf_table =
    col.ufmap
    |> StrMap.bindings
    |> List.sort (fun (_, (i1, _, _)) (_, (i2, _, _)) -> compare i1 i2)
    |> tail_rec_map (fun (_name, (_i, ret_ty, arg_ty)) -> (ret_ty, arg_ty)) in
  let clause_list = Elist.to_list col.clause_list in
  {
    num_vars = StrMap.cardinal col.vmap;
    max_list_len;
    uf_table;
    expr_table;
    list_table;
    num_assumptions = StrMap.cardinal col.assn_map;
    clause_list;
    step_list = Elist.to_list col.step_list
  }
