open Maps
open Resolute
open Printf

exception ResoluteListifyError of string

module Expr =
  struct
    type t = expr
    let compare = compare
  end
module ExprMap = Map.Make(Expr)

(* Convert AST RESOLUTE to Listified RESOLUTE *)

(* Intermediate Program *)
type iprog = {
  var_set : StrSet.t;
  premises : expr StrMap.t;
  rev_premises : string ExprMap.t;
  cmd_list : cmd Elist.t;
}

(* TODO: name shadowing if there are other variables *)
let assm_name premises : string =
  premises
  |> StrMap.bindings
  |> List.length
  |> Printf.sprintf "a%d"

let rec unfold_expr
  (expr_map : expr StrMap.t)
  (iprog : iprog)
  (expr : expr)
  : iprog * expr =
  match expr with
  | True -> iprog, True
  | False -> iprog, False
  | Not e1 ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    iprog, (Not e1)
  | And elist ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, And (List.rev revlist)
  | Or elist ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, Or (List.rev revlist)
  | Impl (e1, e2) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    iprog, Impl (e1, e2)
  | Eq (e1, e2) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    iprog, Eq (e1, e2)
  | App (name, elist) ->
    let var_set = StrSet.add name iprog.var_set in
    let iprog = {iprog with var_set} in
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, App (name, List.rev revlist)
  | Distinct elist ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, Distinct (List.rev revlist)
  | Xor elist ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, Xor (List.rev revlist)
  | Ite (e1, e2, e3) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    let iprog, e3 = unfold_expr expr_map iprog e3 in
    iprog, Ite (e1, e2, e3)
  | Var name ->
    (match StrMap.find_opt name expr_map with
     | Some e -> iprog, e
     | None ->
       let var_set = StrSet.add name iprog.var_set in
       {iprog with var_set}, Var name
    )
  | Add elist ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, Add (List.rev revlist)
  | Mul (i, e1) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    iprog, Mul (i, e1)
  | Sub elist ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    iprog, Sub (List.rev revlist)
  | Lt (e1, e2) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    iprog, Lt (e1, e2)
  | Leq (e1, e2) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    iprog, Leq (e1, e2)
  | Gt (e1, e2) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    iprog, Gt (e1, e2)
  | Geq (e1, e2) ->
    let iprog, e1 = unfold_expr expr_map iprog e1 in
    let iprog, e2 = unfold_expr expr_map iprog e2 in
    iprog, Geq (e1, e2)

and unfold_expr_list
  (expr_map : expr StrMap.t)
  (iprog_revlist : iprog * expr list)
  (expr : expr) =
  let iprog, revlist = iprog_revlist in
  let iprog, expr = unfold_expr expr_map iprog expr in
  iprog, (expr :: revlist)

let rec convert_proof
  (iprog : iprog)
  (expr_map : expr StrMap.t)
  (proof_map : cmd_ref StrMap.t)
  (proof : proof)
  : iprog * cmd_ref =
  match proof with
  | Let (name, e, p) ->
    let iprog, e = unfold_expr expr_map iprog e in
    let expr_map = StrMap.add name e expr_map in
    convert_proof iprog expr_map proof_map p
  | LetProof (name, p0, p1) ->
    let iprog, cmd_ref = convert_proof iprog expr_map proof_map p0 in
    let proof_map = StrMap.add name cmd_ref proof_map in
    convert_proof iprog expr_map proof_map p1
  | Res (pivot, p0, p1) ->
    let iprog, pivot = unfold_expr expr_map iprog pivot in
    let iprog, cr0 = convert_proof iprog expr_map proof_map p0 in
    let iprog, cr1 = convert_proof iprog expr_map proof_map p1 in
    let cmd_list = Elist.rev_cons iprog.cmd_list (Res (pivot, cr0, cr1)) in
    {iprog with cmd_list}, Derived (Elist.length cmd_list - 1)
  | Assume e ->
    let iprog, e = unfold_expr expr_map iprog e in
    (match ExprMap.find_opt e iprog.rev_premises with
     | Some name ->
       iprog, Premise name
     | None ->
       let name = assm_name iprog.premises in
       let premises = StrMap.add name e iprog.premises in
       let rev_premises = ExprMap.add e name iprog.rev_premises in
       {iprog with premises; rev_premises}, Premise name
    )
  | Axiom (name, ilist, elist) ->
    let iprog, revlist =
      List.fold_left (unfold_expr_list expr_map) (iprog, []) elist in
    let elist = List.rev revlist in
    let cmd_list = Elist.rev_cons iprog.cmd_list (Axiom (name, ilist, elist)) in
    {iprog with cmd_list}, Derived (Elist.length cmd_list - 1)
  | ProofVar name ->
    (match StrMap.find_opt name proof_map with
     | Some cmd_ref -> iprog, cmd_ref
     | None ->
       let msg = sprintf "could not find proof variable %s" name in
       raise (ResoluteListifyError msg)
    )

let listify (proof : proof) : prog =
  let iprog = {
    var_set = StrSet.empty;
    premises = StrMap.empty;
    rev_premises = ExprMap.empty;
    cmd_list = Elist.from_list []
  } in
  let iprog, cmd_ref = convert_proof iprog StrMap.empty StrMap.empty proof in
  (* TODO: handle weird case where the empty clause is not the last step *)
  (if cmd_ref <> Derived (Elist.length iprog.cmd_list - 1) then
     raise (ResoluteListifyError "empty clause is not at end of list resolute")
  );
  {
    vars = StrSet.elements iprog.var_set;
    premises = iprog.premises;
    cmd_list = Elist.to_list iprog.cmd_list
  }
