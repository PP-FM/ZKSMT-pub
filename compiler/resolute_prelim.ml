open Resolute_raw
open Maps

(* A collection of simple transformations over Resolute Raw. *)

exception ResolutePrelimErr of string

(** Zero_axiom: Resolve a parser ambiguity between axioms with 0 arguments & proof variables *)

let rec zero_axiom (p : proof) : proof =
  match p with
  | Let (name, e1, p1) -> Let (name, e1, zero_axiom p1)
  | LetProof (name, p1, p2) -> LetProof (name, zero_axiom p1, zero_axiom p2)
  | Res (e1, p1, p2) -> Res (e1, zero_axiom p1, zero_axiom p2)
  | Assume e1 -> Assume e1
  | Axiom (name, ilist, elist) -> Axiom (name, ilist, elist)
  | ProofVar "true+" -> Axiom ("true+", [], [])
  | ProofVar "false-" -> Axiom ("false-", [], [])
  | ProofVar name -> ProofVar name

(** Unfold_let: Unfolding let-exprs *)

let rec unfold_expr
  (expr_map : expr StrMap.t)
  (expr : expr)
  : expr =
  match expr with
  | LetExpr (name, e1, e2) ->
    unfold_expr (StrMap.add name (unfold_expr expr_map e1) expr_map) e2
  | True -> True
  | False -> False
  | Not e -> Not (unfold_expr expr_map e)
  | And elist -> And (List.map (unfold_expr expr_map) elist)
  | Or elist -> Or (List.map (unfold_expr expr_map) elist)
  | Impl (e1, e2) -> Impl (unfold_expr expr_map e1, unfold_expr expr_map e2)
  | Eq (e1, e2) -> Eq (unfold_expr expr_map e1, unfold_expr expr_map e2)
  | App (name, elist) -> App (name, List.map (unfold_expr expr_map) elist)
  | Distinct elist -> Distinct (List.map (unfold_expr expr_map) elist)
  | Xor elist -> Xor (List.map (unfold_expr expr_map) elist)
  | Ite (e1, e2, e3) ->
    Ite (unfold_expr expr_map e1, unfold_expr expr_map e2, unfold_expr expr_map e3)
  | Var name ->
    (match StrMap.find_opt name expr_map with
     | Some e -> e
     | None -> Var name
    )
  | Ivar s -> Ivar s (* TODO: Doesn't exist yet *)
  | Add elist -> Add (List.map (unfold_expr expr_map) elist)
  | Mul elist -> Mul (List.map (unfold_expr expr_map) elist)
  | Sub elist -> Sub (List.map (unfold_expr expr_map) elist)
  | Int i -> Int i
  | Lt (e1, e2) -> Lt (unfold_expr expr_map e1, unfold_expr expr_map e2)
  | Leq (e1, e2) -> Leq (unfold_expr expr_map e1, unfold_expr expr_map e2)
  | Gt (e1, e2) -> Gt (unfold_expr expr_map e1, unfold_expr expr_map e2)
  | Geq (e1, e2) -> Geq (unfold_expr expr_map e1, unfold_expr expr_map e2)

let rec unfold_proof (expr_map : expr StrMap.t) (proof : proof) : proof =
  match proof with
  | Let (name, e, p) ->
    unfold_proof (StrMap.add name (unfold_expr expr_map e) expr_map) p
  | LetProof (name, p1, p2) ->
    LetProof (name, unfold_proof expr_map p1, unfold_proof expr_map p2)
  | Res (e1, p1, p2) ->
    Res (unfold_expr expr_map e1,
         unfold_proof expr_map p1,
         unfold_proof expr_map p2)
  | Assume e -> Assume (unfold_expr expr_map e)
  | Axiom (name, ilist, elist) ->
    Axiom (name, ilist, List.map (unfold_expr expr_map) elist)
  | ProofVar name -> ProofVar name

(** Fudge: Overcome a discrepancy in how the actual RESOLUTE axioms are stored *)
(** and how the spec/VIPC wants them stored. *)
(** Example: not- has expr args [Not e] in actual RESOLUTE but we want [e]. *)

let xor_expr (el : expr list) : expr =
  match el with
  | [e] -> e
  | _ -> Xor el

let rec fudge (proof : proof) : proof =
  match proof with
  | Let _ -> raise (ResolutePrelimErr "let-expr in fudge")
  | LetProof (name, p1, p2) -> LetProof (name, fudge p1, fudge p2)
  | Res (e, p1, p2) -> Res (e, fudge p1, fudge p2)
  | Assume e -> Assume e
  | Axiom ("not-", [], [Not e]) ->
    Axiom ("not-", [], [e])
  | Axiom ("not+", [], [Not e]) ->
    Axiom ("not+", [], [e])
  | Axiom ("or-", [], [Or elist]) ->
    Axiom ("or-", [], elist)
  | Axiom ("or+", [i], [Or elist]) ->
    Axiom ("or+", [i], elist)
  | Axiom ("and-", [i], [And elist]) ->
    Axiom ("and-", [i], elist)
  | Axiom ("and+", [], [And elist]) ->
    Axiom ("and+", [], elist)
  | Axiom ("=+1", [], [Eq (e1, e2)]) ->
    Axiom ("=+1", [], [e1; e2])
  | Axiom ("=+2", [], [Eq (e1, e2)]) ->
    Axiom ("=+2", [], [e1; e2])
  | Axiom ("=-1", [], [Eq (e1, e2)]) ->
    Axiom ("=-1", [], [e1; e2])
  | Axiom ("=-2", [], [Eq (e1, e2)]) ->
    Axiom ("=-2", [], [e1; e2])
  | Axiom ("=>-", [], [Impl (e1, e2)]) ->
    Axiom ("=>-", [], [e1; e2])
  | Axiom ("=>+", [i], [Impl (e1, e2)]) ->
    Axiom ("=>+", [i], [e1; e2])
  | Axiom ("distinct-", [i1; i2], [Distinct elist]) ->
    Axiom ("distinct-", [i1; i2], elist)
  | Axiom ("distinct+", [], [Distinct elist]) ->
    Axiom ("distinct+", [], elist)
  | Axiom ("xor+", [], [Xor el1; Xor el2; Xor el3]) ->
    let e1 = xor_expr el1 in
    let e2 = xor_expr el2 in
    let e3 = xor_expr el3 in
    Axiom ("xor+", [], [e1; e2; e3])
  | Axiom ("xor-", [], [Xor el1; Xor el2; Xor el3]) ->
    let e1 = xor_expr el1 in
    let e2 = xor_expr el2 in
    let e3 = xor_expr el3 in
    Axiom ("xor-", [], [e1; e2; e3])
  | Axiom ("ite1", [], [Ite (e1, e2, e3)]) ->
    Axiom ("ite1", [], [e1; e2; e3])
  | Axiom ("ite2", [], [Ite (e1, e2, e3)]) ->
    Axiom ("ite2", [], [e1; e2; e3])
  | Axiom _ -> proof
  | ProofVar s -> ProofVar s

(** cong_minus: the - transformation messes with cong, note it for later. *)

let rec cong_minus (proof : proof) : proof =
  match proof with
  | Let _ -> raise (ResolutePrelimErr "let-expr in cong_minus")
  | LetProof (name, p1, p2) -> LetProof (name, cong_minus p1, cong_minus p2)
  | Res (e, p1, p2) -> Res (e, cong_minus p1, cong_minus p2)
  | Assume e -> Assume e
  | Axiom ("cong", [], [Sub elist1; Sub elist2]) ->
    Axiom ("-cong", [], [Sub elist1; Sub elist2])
  | Axiom _ -> proof
  | ProofVar s -> ProofVar s

(** Flatten xor: flatten all xor expressions. Seems to be required for some *)
(** Instances of xor+ proofs. *)

let rec flatten_xor_list (e : expr) : expr list =
  match e with
  | Xor elist ->
    elist
    |> List.map flatten_xor_list
    |> List.concat
  | _ -> [e]

let rec flatten_xor (e : expr) : expr =
  match e with
  | LetExpr _ -> raise (ResolutePrelimErr "LetExpr in flatten_xor")
  | True -> True
  | False -> False
  | Not e -> Not (flatten_xor e)
  | And elist -> And (List.map flatten_xor elist)
  | Or elist -> Or (List.map flatten_xor elist)
  | Impl (e1, e2) -> Impl (flatten_xor e1, flatten_xor e2)
  | Eq (e1, e2) -> Eq (flatten_xor e1, flatten_xor e2)
  | App (name, elist) -> App (name, List.map flatten_xor elist)
  | Distinct elist -> Distinct (List.map flatten_xor elist)
  | Xor elist ->
    let elist =
      elist
      |> List.map flatten_xor_list
      |> List.concat in
    Xor (List.map flatten_xor elist)
  | Ite (e1, e2, e3) -> Ite (flatten_xor e1, flatten_xor e2, flatten_xor e3)
  | Var name -> Var name
  | Ivar _ ->
    raise (ResolutePrelimErr "ivar deprecated")
  | Add elist ->
    Add (List.map flatten_xor elist)
  | Mul elist ->
    Mul (List.map flatten_xor elist)
  | Sub elist ->
    Sub (List.map flatten_xor elist)
  | Int i -> Int i
  | Lt (e1, e2) -> Lt (flatten_xor e1, flatten_xor e2)
  | Leq (e1, e2) -> Leq (flatten_xor e1, flatten_xor e2)
  | Gt (e1, e2) -> Gt (flatten_xor e1, flatten_xor e2)
  | Geq (e1, e2) -> Geq (flatten_xor e1, flatten_xor e2)

let rec flatten_xor_proof (p : proof) : proof =
  match p with
  | Let _ -> raise (ResolutePrelimErr "let in flatten xor")
  | LetProof (name, p1, p2) ->
    LetProof (name, flatten_xor_proof p1, flatten_xor_proof p2)
  | Res (e1, p1, p2) ->
    let e1 = flatten_xor e1 in
    let p1 = flatten_xor_proof p1 in
    let p2 = flatten_xor_proof p2 in
    Res (e1, p1, p2)
  | Assume e1 -> Assume (flatten_xor e1)
  | Axiom (name, ilist, elist) ->
    Axiom (name, ilist, List.map flatten_xor elist)
  | ProofVar name -> ProofVar name

let pass (p : proof) : proof =
  p
  |> zero_axiom
  |> unfold_proof (StrMap.empty)
  |> fudge
  |> cong_minus
  |> flatten_xor_proof
