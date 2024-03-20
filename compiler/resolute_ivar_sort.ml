open Maps
open Resolute_raw

exception ResIvarSortErr of string

(* Distinguish integer variables from variables. *)

(* Relevant info for distinguishing. *)
type info = {
  (* Currently recognized variables *)
  ivars : StrSet.t;

  (* If one is an ivar, the other must be as well. *)
  conditional_var : (string * string) list
}

let shallow_is_iexpr (e : expr) : bool =
  match e with
  | Ivar _ -> true
  | Add _ -> true
  | Mul _ -> true
  | Sub _ -> true
  | Int _ -> true
  | _ -> false

let rec sort_expr (is_iexpr : bool) (info : info) (e : expr) : info =
  match e with
  | True -> info
  | False -> info
  | Not e -> sort_expr is_iexpr info e
  | And elist ->
    List.fold_left (sort_expr is_iexpr) info elist
  | Or elist ->
    List.fold_left (sort_expr is_iexpr) info elist
  | Impl (e1, e2) ->
    let info = sort_expr is_iexpr info e1 in
    sort_expr is_iexpr info e2
  | Eq (e1, e2) ->
    let info = sort_expr is_iexpr info e1 in
    let info = sort_expr is_iexpr info e2 in
    (match shallow_is_iexpr e1, e1, shallow_is_iexpr e2, e2 with
     | true, _, false, Var name ->
       {info with ivars = StrSet.add name info.ivars}
     | false, Var name, true, _ ->
       {info with ivars = StrSet.add name info.ivars}
     | false, Var name1, false, Var name2 ->
       let conditional_var = (name1, name2) :: info.conditional_var in
       {info with conditional_var}
     | _, _, _, _ -> info
    )
  | App (_name, elist) ->
    List.fold_left (sort_expr is_iexpr) info elist
  | Distinct elist ->
    List.fold_left (sort_expr is_iexpr) info elist
  | Ite (e1, e2, e3) ->
    let info = sort_expr is_iexpr info e1 in
    let info = sort_expr is_iexpr info e2 in
    let info = sort_expr is_iexpr info e3 in
    (match shallow_is_iexpr e2, e2, shallow_is_iexpr e3, e3 with
     | true, _, false, Var name ->
       {info with ivars = StrSet.add name info.ivars}
     | false, Var name, true, _ ->
       {info with ivars = StrSet.add name info.ivars}
     | false, Var name1, false, Var name2 ->
       let conditional_var = (name1, name2) :: info.conditional_var in
       {info with conditional_var}
     | _, _, _, _ -> info
    )
  | Xor elist ->
    List.fold_left (sort_expr is_iexpr) info elist
  | Var name ->
    if is_iexpr then
      {info with ivars = StrSet.add name info.ivars}
    else
      info
  | Ivar _name -> info
  | Add elist ->
    List.fold_left (sort_expr true) info elist
  | Mul elist ->
    List.fold_left (sort_expr true) info elist
  | Sub elist ->
    List.fold_left (sort_expr true) info elist
  | Int _ -> info
  | Lt (e1, e2) ->
    let info = sort_expr true info e1 in
    let info = sort_expr true info e2 in
    info
  | Leq (e1, e2) ->
    let info = sort_expr true info e1 in
    let info = sort_expr true info e2 in
    info
  | Gt (e1, e2) ->
    let info = sort_expr true info e1 in
    let info = sort_expr true info e2 in
    info
  | Geq (e1, e2) ->
    let info = sort_expr true info e1 in
    let info = sort_expr true info e2 in
    info

let rec sort_proof (info : info) (p : proof) : info =
  match p with
  | Let _ -> raise (ResIvarSortErr "let-expr in ivar sort")
  | LetProof (_s, p1, p2) ->
    let info = sort_proof info p1 in
    let info = sort_proof info p2 in
    info
  | Res (e1, p1, p2) ->
    let info = sort_expr false info e1 in
    let info = sort_proof info p1 in
    let info = sort_proof info p2 in
    info
  | Assume e -> sort_expr false info e
  | Axiom (_, _, elist) ->
    List.fold_left (sort_expr false) info elist
  | ProofVar _ -> info

let rec infect_ivar
  (all_ivars : StrSet.t)
  (check_var : string)
  (edges : (string * string) list)
  : StrSet.t =
  match edges with
  | [] -> all_ivars
  | (s1, s2) :: tail when s1 = check_var || s2 = check_var ->
    let all_ivars = StrSet.add s1 all_ivars in
    let all_ivars = StrSet.add s2 all_ivars in
    infect_ivar all_ivars check_var tail
  | _ :: tail ->
    infect_ivar all_ivars check_var tail

(* Invariant: unchecked is a subset of all_ivars. *)
let rec sort_ivars
  (all_ivars : StrSet.t)
  (unchecked : StrSet.t)
  (edges : (string * string) list)
  : StrSet.t =
  match StrSet.min_elt_opt unchecked with
  | None -> all_ivars
  | Some s ->
    let old_all_ivars = all_ivars in
    let all_ivars = infect_ivar all_ivars s edges in
    let new_ivars = StrSet.diff all_ivars old_all_ivars in
    let unchecked = StrSet.remove s (StrSet.union unchecked new_ivars) in
    sort_ivars all_ivars unchecked edges

(* Decide the final set of ivars based on info. *)
let handle_info (info : info) : StrSet.t =
  sort_ivars info.ivars info.ivars info.conditional_var

(* Replace vars with ivars based on a known set *)
let rec replace_expr (set : StrSet.t) (e : expr) : expr =
  match e with
  | True -> True
  | False -> False
  | Not e -> Not (replace_expr set e)
  | And elist -> And (List.map (replace_expr set) elist)
  | Or elist -> Or (List.map (replace_expr set) elist)
  | Impl (e1, e2) -> Impl (replace_expr set e1, replace_expr set e2)
  | Eq (e1, e2) -> Eq (replace_expr set e1, replace_expr set e2)
  | App (name, elist) -> App (name, List.map (replace_expr set) elist)
  | Distinct elist -> Distinct (List.map (replace_expr set) elist)
  | Xor elist -> Xor (List.map (replace_expr set) elist)
  | Ite (e1, e2, e3) ->
    Ite (replace_expr set e1, replace_expr set e2, replace_expr set e3)
  | Var s when StrSet.mem s set -> Ivar s
  | Var s -> Var s
  | Ivar s -> Ivar s
  | Add elist -> Add (List.map (replace_expr set) elist)
  | Mul elist -> Mul (List.map (replace_expr set) elist)
  | Sub elist -> Sub (List.map (replace_expr set) elist)
  | Int i -> Int i
  | Lt (e1, e2) -> Lt (replace_expr set e1, replace_expr set e2)
  | Leq (e1, e2) -> Leq (replace_expr set e1, replace_expr set e2)
  | Gt (e1, e2) -> Gt (replace_expr set e1, replace_expr set e2)
  | Geq (e1, e2) -> Geq (replace_expr set e1, replace_expr set e2)

let rec replace_proof (set : StrSet.t) (p : proof) : proof =
  match p with
  | Let _ -> raise (ResIvarSortErr "let-expr in ivar sort")
  | LetProof (s, p1, p2) ->
    let p1 = replace_proof set p1 in
    let p2 = replace_proof set p2 in
    LetProof (s, p1, p2)
  | Res (e1, p1, p2) ->
    let e1 = replace_expr set e1 in
    let p1 = replace_proof set p1 in
    let p2 = replace_proof set p2 in
    Res (e1, p1, p2)
  | Assume e -> Assume (replace_expr set e)
  | Axiom (name, ilist, elist) ->
    Axiom (name, ilist, List.map (replace_expr set) elist)
  | ProofVar name -> ProofVar name

(* Put everything together. *)
let pass (proof : proof) : proof =
  let init_info = {
    ivars = StrSet.empty;
    conditional_var = []
  } in
  let info = sort_proof init_info proof in
  let ivar_set = handle_info info in
  replace_proof ivar_set proof
