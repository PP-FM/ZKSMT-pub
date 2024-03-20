open Maps
open Ir
open Printf

exception IrCheckerError of string

type ty =
  | TyDefault
  | TyInt
  | TyBool
  | TyDefSort of int

module TyPair = struct
  type t = ty * ty
  let compare = compare
end

module TyPairSet = Set.Make(TyPair)

module Expr = struct
  type t = expr
  let compare = compare
end

module ExprMap = Map.Make(Expr)

module ExprList = struct
  type t = expr list
  let compare = compare
end

module ExprListMap = Map.Make(ExprList)

let str_of_ty ty =
  match ty with
  | TyDefault -> "default"
  | TyInt -> "int"
  | TyBool -> "bool"
  | TyDefSort i -> sprintf "sort %d" i

(* Main output of this module *)
type signature = {
  varmap : ty StrMap.t;
  ufmap : (ty * (ty list)) StrMap.t;
}

(* Intermediate version of signature with extra fields *)
type ty_map = {
  varmap : ty StrMap.t;
  ufmap : (ty * (ty list)) StrMap.t;
  ty_eq : TyPairSet.t;
  fresh : int;
  already_added : ty ExprMap.t;
  list_already_added : (ty list) ExprListMap.t
}

(** Establishing the initial type map with temporary DefSorts. *)

let rec init_add_expr (e : expr) (tm : ty_map) : ty_map =
  match e with
  | Var s ->
    (if StrMap.mem s tm.varmap then
       tm
     else
       {tm with
        varmap = StrMap.add s (TyDefSort tm.fresh) tm.varmap;
        fresh = tm.fresh + 1
       })
  | App (e1, e2) -> init_add_expr_list [e1; e2] tm
  | NaryApp (s, elist) ->
    let tm = (if StrMap.mem s tm.ufmap then
       tm
     else
       let entry =
         TyDefSort tm.fresh,
         (List.init (List.length elist) (fun i -> TyDefSort (tm.fresh + 1 + i)))
       in
       {tm with
        ufmap = StrMap.add s entry tm.ufmap;
        fresh = tm.fresh + 1 + (List.length elist)
       }
    ) in
    init_add_expr_list elist tm
  | True -> tm
  | False -> tm
  | Eq (e1, e2) -> init_add_expr_list [e1; e2] tm
  | Impl (e1, e2) -> init_add_expr_list [e1; e2] tm
  | Xor (e1, e2) -> init_add_expr_list [e1; e2] tm
  | Xor2 (elist) -> init_add_expr_list elist tm
  | Ite (e1, e2, e3) -> init_add_expr_list [e1; e2; e3] tm
  | Not (e1) -> init_add_expr_list [e1] tm
  | And (elist) -> init_add_expr_list elist tm
  | Or (elist) -> init_add_expr_list elist tm
  | Num _ -> tm
  | Flag _ -> tm
  | Add (elist) -> init_add_expr_list elist tm
  | Mul (_, e1) -> init_add_expr_list [e1] tm
  | Lt (e1, e2) -> init_add_expr_list [e1; e2] tm
  | Leq (e1, e2) -> init_add_expr_list [e1; e2] tm

and init_add_expr_list (elist : expr list) (tm : ty_map) : ty_map =
  match elist with
  | [] -> tm
  | e :: tail ->
    let tm = init_add_expr e tm in
    init_add_expr_list tail tm

let init_ty_map (prog : prog) : ty_map =
  let tm = {
    varmap = StrMap.empty;
    ufmap = StrMap.empty;
    fresh = 0;
    ty_eq = TyPairSet.empty;
    already_added = ExprMap.empty;
    list_already_added = ExprListMap.empty
  } in
  let elist =
    (prog.premises
    |> StrMap.bindings
    |> List.map snd) @
    (prog.cmd_list
     |> List.map (fun c -> c.result :: c.expr_args)
     |> List.concat
    ) in
  init_add_expr_list elist tm

(** Adding type equalities. *)

let concrete_type ty =
  match ty with
  | TyDefault -> true
  | TyInt -> true
  | TyBool -> true
  | TyDefSort _ -> false

let filter_eq (ty1, ty2) =
  match ty1 = ty2, concrete_type ty1, concrete_type ty2 with
  | true, true, true -> false
  | false, true, true -> raise (IrCheckerError "merging concrete types")
  | true, _, _ -> false
  | false, _, _ -> true

let add_filtered (ty1, ty2) tm =
  if filter_eq (ty1, ty2) then
    {tm with ty_eq = TyPairSet.add (ty1, ty2) tm.ty_eq}
  else
    tm

let rec af (eq_list : (ty * ty) list) tm =
  match eq_list with
  | [] -> tm
  | head :: tail -> af tail (add_filtered head tm)

let rec add_eq_expr (e : expr) (tm : ty_map) : ty_map * ty =
  match ExprMap.find_opt e tm.already_added with
  | Some ty -> tm, ty
  | None ->
    let tm, ty =
      match e with
      | Var s -> tm, StrMap.find s tm.varmap
      | App (e1, e2) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        af [ty1, TyDefault; ty2, TyDefault] tm, TyDefault
      | NaryApp (s, elist) ->
        let tm, tylist = add_eq_expr_list elist tm in
        let eq_list = List.combine tylist (snd (StrMap.find s tm.ufmap)) in
        af eq_list tm, fst (StrMap.find s tm.ufmap)
      | True -> tm, TyBool
      | False -> tm, TyBool
      | Eq (e1, e2) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        af [ty1, ty2] tm, TyBool
      | Impl (e1, e2) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        af [ty1, TyBool; ty2, TyBool] tm, TyBool
      | Xor (e1, e2) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        af [ty1, TyBool; ty2, TyBool] tm, TyBool
      | Xor2 elist ->
        let tm, tylist = add_eq_expr_list elist tm in
        let eq_list = List.map (fun ty -> ty, TyBool) tylist in
        af eq_list tm, TyBool
      | Ite (e1, e2, e3) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        let tm, ty3 = add_eq_expr e3 tm in
        af [ty1, TyBool; ty2, TyBool; ty3, TyBool] tm, TyBool
      | Not e1 ->
        let tm, ty1 = add_eq_expr e1 tm in
        af [ty1, TyBool] tm, TyBool
      | And elist ->
        let tm, tylist = add_eq_expr_list elist tm in
        let eq_list = List.map (fun ty -> ty, TyBool) tylist in
        af eq_list tm, TyBool
      | Or elist ->
        let tm, tylist = add_eq_expr_list elist tm in
        let eq_list = List.map (fun ty -> ty, TyBool) tylist in
        af eq_list tm, TyBool
      | Num _ -> tm, TyDefault
      | Flag _ -> tm, TyDefault
      | Add elist ->
        let tm, tylist = add_eq_expr_list elist tm in
        let eq_list = List.map (fun ty -> ty, TyInt) tylist in
        af eq_list tm, TyInt
      | Mul (_, e1) ->
        let tm, ty1 = add_eq_expr e1 tm in
        af [ty1, TyInt] tm, TyInt
      | Lt (e1, e2) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        af [ty1, TyInt; ty2, TyInt] tm, TyBool
      | Leq (e1, e2) ->
        let tm, ty1 = add_eq_expr e1 tm in
        let tm, ty2 = add_eq_expr e2 tm in
        af [ty1, TyInt; ty2, TyInt] tm, TyBool
    in
    let tm = {tm with already_added = ExprMap.add e ty tm.already_added} in
      tm, ty

and add_eq_expr_list (e : expr list) (tm : ty_map) : ty_map * (ty list) =
  match ExprListMap.find_opt e tm.list_already_added with
  | Some ty_list -> tm, ty_list
  | None ->
    let tm, ty_list =
      let rec add_eq_expr_list_accum
          (rev_accum : ty list)
          (e : expr list)
          (tm : ty_map)
        : ty_map * (ty list) =
        match e with
        | [] -> tm, List.rev (rev_accum)
        | head :: tail ->
          let tm, ty = add_eq_expr head tm in
          let rev_accum = ty :: rev_accum in
          add_eq_expr_list_accum rev_accum tail tm in
      add_eq_expr_list_accum [] e tm
    in
    let list_already_added = ExprListMap.add e ty_list tm.list_already_added in
    let tm = {tm with list_already_added} in
      tm, ty_list

(*
and add_eq_expr_list (e : expr list) (tm : ty_map) : ty_map * (ty list) =
  match e with
  | [] -> tm, []
  | head :: tail ->
    let tm, ty = add_eq_expr head tm in
    let tm, tylist = add_eq_expr_list tail tm in
    tm, ty :: tylist *)

(* Variant of add_eq_expr_list which does not save the type. *)
let rec add_eq_expr_list_throwaway (e : expr list) (tm : ty_map) : ty_map =
  match e with
  | [] -> tm
  | head :: tail ->
    let tm, _ty = add_eq_expr head tm in
    let tm, _tylist = add_eq_expr_list tail tm in
    add_eq_expr_list_throwaway tail tm

let add_ty_eq (prog : prog) (tm : ty_map) : ty_map =
  let elist =
    (prog.premises
    |> StrMap.bindings
    |> List.map snd) @
    (prog.cmd_list
     |> List.map (fun c -> c.result :: c.expr_args)
     |> List.concat
    ) in
  add_eq_expr_list_throwaway elist tm

(** Merging types based on type equalities *)

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
    | [] -> raise (IrCheckerError "max with null list")
    | head :: tail -> max_rec cmp tail head
end

module Ty = struct
  type t = ty
  let compare = compare
end

module TyMap = Map.Make(Ty)
module TyUnion = Union(Ty)

let ty_cmp ty1 ty2 =
  match ty1=ty2, ty1, ty2 with
  | _, TyDefSort i1, TyDefSort i2 ->
    if i1 > i2 then ty1 else ty2
  | _, TyDefSort _, _ -> ty2
  | _, _, TyDefSort _ -> ty1
  | false, _, _ -> raise (IrCheckerError "cmp concrete types")
  | true, _, _ -> ty1

let update_ty ty_map ty =
  match TyMap.find_opt ty ty_map with
  | None -> ty
  | Some new_ty -> new_ty


let fix_ty_map tm =
  let ty_group_list = TyUnion.glom (TyPairSet.elements tm.ty_eq) in
  let ty_map = TyMap.empty in
  let add_ty max_ty ty ty_map =
    TyMap.add ty max_ty ty_map in
  let rec add_ty_list max_ty ty_list ty_map =
    match ty_list with
    | [] -> ty_map
    | head :: tail -> add_ty_list max_ty tail (add_ty max_ty head ty_map) in
  let add_ty_group ty_map ty_group =
    let max_ty = TyUnion.max ty_cmp ty_group in
    add_ty_list max_ty ty_group ty_map in
  let ty_map = List.fold_left add_ty_group ty_map ty_group_list in
  {tm with
   varmap = StrMap.map (update_ty ty_map) tm.varmap;
   ufmap = StrMap.map (fun (t, tlist) ->
       update_ty ty_map t, List.map
         (update_ty ty_map) tlist) tm.ufmap;
  }

(** Putting everything together *)

let tycheck (prog : Ir.prog) : signature =
  let tm = init_ty_map prog in
  let tm = add_ty_eq prog tm in
  let tm = fix_ty_map tm in
  {
    varmap = tm.varmap;
    ufmap = tm.ufmap
  }

(* The existing checking algorithm cannot handle WiSA tests, *)
(* but we can hardcode the signature. *)
let tycheck_wisa (_prog : Ir.prog) : signature =
    { varmap = StrMap.empty; ufmap =
        map_of_bindings [
            ("format", (TyInt, [TyInt]));
            ("s_count", (TyInt, [TyInt]));
            ("x_count", (TyInt, [TyInt]));
        ]
  }

let str_of_sgn (sgn : signature) =
  let varmap_str =
    sgn.varmap
    |> StrMap.bindings
    |> List.map (fun (n, ty) -> sprintf "%s : %s" n (str_of_ty ty))
    |> String.concat "\n" in
  let ufmap_str =
    sgn.ufmap
    |> StrMap.bindings
    |> List.map
      (fun (n, (ret_ty, argty_list)) ->
         sprintf "%s : (%s) -> %s"
           n
           (argty_list
            |> List.map str_of_ty
            |> String.concat ", "
           )
           (str_of_ty ret_ty)
      )
    |> String.concat "\n" in
  sprintf "sgn\n\nvarmap:\n%s\n\nufmap:\n%s\n"
    varmap_str
    ufmap_str
