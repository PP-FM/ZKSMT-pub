open Maps
open Printf
open Table

(* TODO: LEFTOFF: run on uf1. elte for args needs to add something to arg map; *)
(* otherwise it is empty. Also maybe modify temps to use ptrs. *)

exception TyException of string

type ptr =
  | PtrExprId of int
  | PtrUfRet of int
  | PtrUfArg of int * int

type ty =
  | TyDefault
  | TyInt
  | TyBool
  | TySort of int
  | TyUflist of int
  | TyTemp of ptr

let str_of_ptr ptr =
  match ptr with
  | PtrExprId i -> sprintf "ptr eid %d" i
  | PtrUfRet i -> sprintf "ptr uf ret %d" i
  | PtrUfArg (i1, i2) -> sprintf "ptr uf arg %d,%d" i1 i2

let str_of_ty ty =
  match ty with
  | TyDefault -> "default"
  | TyInt -> "int"
  | TyBool -> "bool"
  | TySort i -> sprintf "sort %d" i
  | TyTemp ptr -> sprintf "temp %s" (str_of_ptr ptr)
  | TyUflist i -> sprintf "uf list %d" i

module IntPair = struct
  type t = int * int
  let compare = compare
end

module IntPairMap = Map.Make(IntPair)

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

let oper_id_term    = 12
let oper_id_add     = 13
let oper_id_mul     = 14
let oper_id_leq     = 15
let oper_id_geq     = 16
let oper_id_lt      = 17
let oper_id_gt      = 18

let oper_id_default = 19

type wip_ty = {
  ete : ty IntMap.t;
  elte : ty IntMap.t;
  uf_ret_ty : ty IntMap.t;
  uf_arg_ty : ty IntPairMap.t;
  uf_len : int IntMap.t;
  ptr_eq : (ptr * ptr) list;
  ty_eq : (ty * ty) list;
}

let str_of_ty_int_map map =
  map
  |> IntMap.bindings
  |> List.map (fun (i, ty) -> sprintf "%d : %s" i (str_of_ty ty))
  |> String.concat "\n"

let str_of_ty_ipair_map map =
  map
  |> IntPairMap.bindings
  |> List.map (fun ((i1, i2), ty) -> sprintf "%d,%d : %s" i1 i2 (str_of_ty ty))
  |> String.concat "\n"

let str_of_ilen_map map =
  map
  |> IntMap.bindings
  |> List.map (fun (i, len) -> sprintf "%d : %d" i len)
  |> String.concat "\n"

let str_of_wip wip =
  sprintf
    "wip:\n\nete\n%s\n\nelte\n%s\n\nuf_ret\n%s\n\nuf_arg\n%s\n\nuf_len\n%s\nptr_eq\n%s\n\nty_eq\n%s"
    (str_of_ty_int_map wip.ete)
    (str_of_ty_int_map wip.elte)
    (str_of_ty_int_map wip.uf_ret_ty)
    (str_of_ty_ipair_map wip.uf_arg_ty)
    (str_of_ilen_map wip.uf_len)
    (
      wip.ptr_eq
      |> List.map (fun (p1, p2) -> sprintf "%s = %s" (str_of_ptr p1) (str_of_ptr p2))
      |> String.concat "\n"
    )
    (
      wip.ty_eq
      |> List.map (fun (t1, t2) -> sprintf "%s = %s" (str_of_ty t1) (str_of_ty t2))
      |> String.concat "\n"
    )


let add_ete i ty wip =
  match IntMap.find_opt i wip.ete with
  | Some ty2 ->
    Printf.printf "flag 1 %s:%s\n" (str_of_ty ty) (str_of_ty ty2);
    {wip with ty_eq = (ty, ty2) :: wip.ty_eq}
  | None ->
    {wip with
     ete = IntMap.add i ty wip.ete;
     ty_eq = (ty, TyTemp (PtrExprId i)) :: wip.ty_eq}

let add_elte i ty wip =
  match IntMap.find_opt i wip.elte with
  | Some ty2 ->
    Printf.printf "flag 2 %s:%s\n" (str_of_ty ty) (str_of_ty ty2);
    {wip with ty_eq = (ty, ty2) :: wip.ty_eq}
  | None ->
    {wip with elte = IntMap.add i ty wip.elte;}

let add_uf_ret_ty i ty wip =
  match IntMap.find_opt i wip.uf_ret_ty with
  | Some ty2 ->
    {wip with ty_eq = (ty, ty2) :: wip.ty_eq}
  | None ->
    {wip with uf_ret_ty = IntMap.add i ty wip.uf_ret_ty}

let add_uf_arg_ty ipair ty wip =
  match IntPairMap.find_opt ipair wip.uf_arg_ty with
  | Some ty2 ->
    {wip with ty_eq = (ty, ty2) :: wip.ty_eq}
  | None ->
    {wip with uf_arg_ty = IntPairMap.add ipair ty wip.uf_arg_ty}

let add_uf_len i len wip =
  match IntMap.find_opt i wip.uf_len with
  | Some len2 when len=len2 -> wip
  | Some _ -> raise (TyException "inconsistent lengths for uf")
  | None ->
    {wip with uf_len = IntMap.add i len wip.uf_len}

let add_ptr_eq p1 p2 wip =
  {wip with ptr_eq = (p1, p2) :: wip.ptr_eq}

let add_ty_eq t1 t2 wip =
  print_endline "flag3";
  {wip with ty_eq = (t1, t2) :: wip.ty_eq}

(* Integrate a single element of a single expr list *)
let integrate_list_element wip ty i expr_id =
  match ty with
  | TyUflist uf_id ->
    let wip = add_ptr_eq (PtrExprId expr_id) (PtrUfArg (uf_id, i)) wip in
    let wip = add_uf_arg_ty (uf_id, i) (TyTemp (PtrUfArg (uf_id, i))) wip in
    wip
  | TyTemp _ ->
    raise (TyException "list with temp typing")
  | _ ->
    add_ete expr_id ty wip

(* Integrate a single expr list. The expr list must already have a type. *)
let integrate_elte wip (i, list) =
  let ty = IntMap.find i wip.elte in
  let indexed_list = List.mapi (fun i a -> (i, a)) list in
  let rec helper wip list =
    match list with
    | [] -> wip
    | (i, expr_id) :: tail ->
      let wip = integrate_list_element wip ty i expr_id in
      helper wip tail in
  helper wip indexed_list

(* Integrate a single expr table entry. *)
let integrate_ete wip (i, ete) =
  if ete.oper_id = oper_id_var then
    add_ete i (TyTemp (PtrExprId i)) wip
  else if ete.oper_id = oper_id_eq then
    let wip = add_ete i TyBool wip in
    add_ptr_eq (PtrExprId ete.arg1) (PtrExprId ete.arg2) wip
  else if ete.oper_id = oper_id_and then
    let wip = add_ete i TyBool wip in
    print_endline "flag 5";
    add_elte ete.list_arg TyBool wip
  else if ete.oper_id = oper_id_or then
    let wip = add_ete i TyBool wip in
    print_endline "flag 6";
    add_elte ete.list_arg TyBool wip
  else if ete.oper_id = oper_id_true then
    add_ete i TyBool wip
  else if ete.oper_id = oper_id_false then
    add_ete i TyBool wip
  else if ete.oper_id = oper_id_xor then
    let wip = add_ete i TyBool wip in
    print_endline "flag 7";
    add_elte ete.list_arg TyBool wip
  else if ete.oper_id = oper_id_impl then
    let wip = add_ete i TyBool wip in
    let wip = add_ete ete.arg1 TyBool wip in
    add_ete ete.arg2 TyBool wip
  else if ete.oper_id = oper_id_ite then
    raise (TyException "ite not allowed with types")
  else if ete.oper_id = oper_id_not then
    let wip = add_ete i TyBool wip in
    add_ete ete.arg1 TyBool wip
  else if ete.oper_id = oper_id_naryapp then
    let wip = add_ete i (TyTemp (PtrExprId i)) wip in
    print_endline "flag 8";
    let wip = add_elte ete.list_arg (TyUflist ete.var_id) wip in
    let wip = add_uf_ret_ty ete.var_id (TyTemp (PtrExprId i)) wip in
    let wip = add_ptr_eq (PtrExprId i) (PtrUfRet ete.var_id) wip in
    wip
  else if ete.oper_id = oper_id_term then
    add_ete i TyInt wip
  else if ete.oper_id = oper_id_add then
    let wip = add_ete i TyInt wip in
    print_endline "flag 9";
    add_elte ete.list_arg TyInt wip
  else if ete.oper_id = oper_id_mul then
    let wip = add_ete i TyInt wip in
    let wip = add_ete ete.arg1 TyInt wip in
    add_ete ete.arg2 TyInt wip
  else if ete.oper_id = oper_id_leq then
    let wip = add_ete i TyBool wip in
    let wip = add_ete ete.arg1 TyInt wip in
    add_ete ete.arg2 TyInt wip
  else if ete.oper_id = oper_id_geq then
    let wip = add_ete i TyBool wip in
    let wip = add_ete ete.arg1 TyInt wip in
    add_ete ete.arg2 TyInt wip
  else if ete.oper_id = oper_id_lt then
    let wip = add_ete i TyBool wip in
    let wip = add_ete ete.arg1 TyInt wip in
    add_ete ete.arg2 TyInt wip
  else if ete.oper_id = oper_id_gt then
    let wip = add_ete i TyBool wip in
    let wip = add_ete ete.arg1 TyInt wip in
    add_ete ete.arg2 TyInt wip
  else if ete.oper_id = oper_id_default then
    add_ete i TyDefault wip
  else
    raise (TyException "unknown node id")

(* Allows combining a list of pairs into a list of lists, as well as finding *)
(* the max element of a list *)
module Union (Elt : Set.OrderedType) = struct
  module EltSet = Set.Make(Elt)

  let find (p : Elt.t) (map : EltSet.t IntMap.t) : int option =
    let rec helper idx_eltset_list =
      match idx_eltset_list with
      | [] -> None
      | (i, elt_set) :: _ when EltSet.mem p elt_set ->
        Some i
      | _ :: tail -> helper tail in
    helper (IntMap.bindings map)

  let mod_for_eq (p1 : Elt.t) (p2 : Elt.t) (map : EltSet.t IntMap.t)
      (next : int)
    : EltSet.t IntMap.t * int =
    match find p1 map, find p2 map with
    | None, None ->
      IntMap.add next (EltSet.of_list [p1; p2]) map, (next+1)
    | Some i, None ->
      let set = IntMap.find i map in
      let set = EltSet.add p2 set in
      IntMap.add i set map, next
    | None, Some i ->
      let set = IntMap.find i map in
      let set = EltSet.add p1 set in
      IntMap.add i set map, next
    | Some i1, Some i2 when i1=i2 -> map, next
    | Some i1, Some i2 ->
      let set1 = IntMap.find i1 map in
      let set2 = IntMap.find i2 map in
      let map = IntMap.remove i1 map in
      let map = IntMap.remove i2 map in
      let map = IntMap.add i1 (EltSet.union set1 set2) map in
      map, next

  let rec glom_rec
      (elt_eq_list : (Elt.t * Elt.t) list)
      (map : EltSet.t IntMap.t)
      (next : int)
    : (Elt.t list) list =
    match elt_eq_list with
    | [] ->
      map
      |> IntMap.bindings
      |> List.map snd
      |> List.map (EltSet.elements)
    | (p1, p2) :: elt_eq_list ->
      let map, next = mod_for_eq p1 p2 map next in
      glom_rec elt_eq_list map next

  let glom (elt_eq_list : (Elt.t * Elt.t) list) : (Elt.t list) list =
    glom_rec elt_eq_list IntMap.empty 0

  let rec max_rec
      (cmp : Elt.t -> Elt.t -> Elt.t)
      (list : Elt.t list)
      (cur : Elt.t)
    : Elt.t =
    match list with
    | [] -> cur
    | head :: tail ->
      max_rec cmp tail (cmp cur head)

  let max cmp list =
    match list with
    | [] -> raise (TyException "max with null list")
    | head :: tail -> max_rec cmp tail head
end

module Ptr = struct
  type t = ptr
  let compare = compare
end

module PtrUnion = Union(Ptr)

module Ty = struct
  type t = ty
  let compare = compare
end

module TyUnion = Union(Ty)

(* Goes through a list of type equalities, replacing temporary types if *)
(* possible, throwing errors on mismatches. *)

let is_temp_ty ty =
  match ty with
  | TyTemp _ -> true
  | _ -> false

module TySet = Set.Make(Ty)

let ptr_ord ptr1 ptr2 =
  match ptr1, ptr2 with
  | PtrExprId i1, PtrExprId i2 ->
    if i1 > i2 then ptr1 else ptr2
  | PtrExprId _, _ -> ptr1
  | _, PtrExprId _ -> ptr2
  | PtrUfRet i1, PtrUfRet i2 ->
    if i1 > i2 then ptr1 else ptr2
  | PtrUfRet _, _ -> ptr1
  | _, PtrUfRet _ -> ptr2
  | PtrUfArg (i1a, i1b), PtrUfArg (i2a, i2b) ->
    if i1a > i2a then
      ptr1
    else if i1a = i2a then
      if i1b > i2b then
        ptr1
      else
        ptr2
    else
      ptr2

let ty_cmp ty1 ty2 =
  match ty1, ty2 with
  | TyTemp ptr1, TyTemp ptr2 ->
    TyTemp (ptr_ord ptr1 ptr2)
  | _, TyTemp _ -> ty1
  | TyTemp _, _ -> ty2
  | _, _ -> raise (TyException "concrete types merged")

(* Reassign types based on type equalities *)
let fix_ty_eq wip =
  let ty_group_list = TyUnion.glom wip.ty_eq in
  let fix_group wip ty_group =
    let max_ty = TyUnion.max ty_cmp ty_group in
    let _temp_ty_list, perm_ty_list =
      List.partition is_temp_ty ty_group in
    (match perm_ty_list with
     | [max_ty2] when max_ty = max_ty2 -> ()
     | [] -> ()
     | _ ->
       raise (TyException "ty group with >1 permanent type")
    );
    let ty_set = TySet.of_list ty_group in
    let ete = IntMap.map
        (fun ty -> if TySet.mem ty ty_set then max_ty else ty) wip.ete in
    let elte = IntMap.map
        (fun ty -> if TySet.mem ty ty_set then max_ty else ty) wip.elte in
    let uf_ret_ty = IntMap.map
        (fun ty -> if TySet.mem ty ty_set then max_ty else ty) wip.uf_ret_ty in
    let uf_arg_ty = IntPairMap.map
        (fun ty -> if TySet.mem ty ty_set then max_ty else ty) wip.uf_arg_ty in
    {wip with ete; elte; uf_ret_ty; uf_arg_ty} in
  let wip = List.fold_left fix_group wip ty_group_list in
  wip

let get_ty wip ptr =
  match ptr with
  | PtrExprId i -> IntMap.find i wip.ete
  | PtrUfRet i -> IntMap.find i wip.uf_ret_ty
  | PtrUfArg (i1, i2) -> IntPairMap.find (i1, i2) wip.uf_arg_ty

let set_ty ty wip ptr =
  match ptr with
  | PtrExprId i ->
    {wip with ete = IntMap.add i ty wip.ete}
  | PtrUfRet i ->
    {wip with uf_ret_ty = IntMap.add i ty wip.uf_ret_ty}
  | PtrUfArg (i1, i2) ->
    {wip with uf_arg_ty = IntPairMap.add (i1, i2) ty wip.uf_arg_ty}

(*
(* Reassign types based on pointer equalities *)
let fix_ptr_eq wip =
  let ptr_group_list = PtrUnion.glom wip.ptr_eq in
  let ptr_cmp ptr1 ptr2 =
    let ty1 = get_ty wip ptr1 in
    let ty2 = get_ty wip ptr2 in
    if ty_cmp ty1 ty2 = ty1 then
      ptr1
    else
      ptr2 in
  let fix_group wip ptr_group =
    let max_ptr = PtrUnion.max ptr_cmp ptr_group in
    let max_ty = get_ty wip max_ptr in
    List.fold_left (set_ty max_ty) wip ptr_group in
  List.fold_left fix_group wip ptr_group_list *)

let fix_ptr_eq wip =
  let add_ptr_eq (wip : wip_ty) (ptr1, ptr2) =
    let ty1 = get_ty wip ptr1 in
    let ty2 = get_ty wip ptr2 in
    {wip with ty_eq = (ty1, ty2) :: wip.ty_eq} in
  List.fold_left add_ptr_eq wip wip.ptr_eq

let integrate prog =
  let wip = {
    ete = IntMap.empty;
    elte = IntMap.empty;
    uf_ret_ty = IntMap.empty;
    uf_arg_ty = IntPairMap.empty;
    uf_len = IntMap.empty;
    ptr_eq = [];
    ty_eq = []
  } in
  let wip =
    prog.expr_table
    |> List.mapi (fun i a -> i, a)
    |> List.fold_left integrate_ete wip in
  let wip =
    prog.list_table
    |> List.mapi (fun i a -> i, a)
    |> List.fold_left integrate_elte wip in
  print_endline (str_of_wip wip);
  let wip = fix_ptr_eq wip in
  (**let wip = fix_ty_eq wip in*)

  (* Debug printing *)
  let varmap =
    (* TODO: get a better map. *)
    List.init 25 (fun i -> i, string_of_int i)
    |>  int_map_of_bindings in
  let expr_table =
    Reverse_layout.make_expr_table varmap prog.list_table prog.expr_table in
  let str_of_entry i =
    Printf.sprintf "%3d : %9s : %s"
      i
      (str_of_ty (IntMap.find i wip.ete))
      (Ir.str_of_expr (IntMap.find i expr_table)) in
  List.init (List.length prog.expr_table) str_of_entry
  |> String.concat "\n"
  |> print_endline
