open Printf
open Maps
open Resolute

(* Convert Listified RESOLUTE to AST RESOLUTE *)

let proof_var_of_cmd_ref (cmd_ref : cmd_ref) : string =
  match cmd_ref with
  | Premise name -> sprintf "prem_%s" name
  | Derived i -> sprintf "step_%d" i

let unlistify_cmd (cmd : cmd) : proof =
  match cmd with
  | Res (e1, cr0, cr1) ->
    let name0 = proof_var_of_cmd_ref cr0 in
    let name1 = proof_var_of_cmd_ref cr1 in
    Res (e1, ProofVar name0, ProofVar name1)
  | Axiom (name, elist) -> Axiom (name, elist)
  | AxiomInt (name, i, elist) -> AxiomInt (name, i, elist)

let rec unlistify_cmd_list
  (proof : proof)
  (rev_cmdlist : cmd list)
  (cur_idx : int)
  : proof =
  match rev_cmdlist with
  | [] -> proof
  | head :: tail ->
    let name = proof_var_of_cmd_ref (Derived cur_idx) in
    let proof = LetProof (name, unlistify_cmd head, proof) in
    unlistify_cmd_list proof tail (cur_idx - 1)

let rec unlistify_prem
  (proof : proof)
  (rev_prem : (string * expr) list)
  : proof =
  match rev_prem with
  | [] -> proof
  | (name, e) :: tail ->
    let name = proof_var_of_cmd_ref (Premise name) in
    let proof = LetProof (name, Assume e, proof) in
    unlistify_prem proof tail

let unlistify (prog : prog) : proof =
  let last_idx = List.length prog.cmd_list - 1 in
  unlistify_prem (unlistify_cmd_list (ProofVar (proof_var_of_cmd_ref (Derived
   last_idx))) (List.rev prog.cmd_list) last_idx) (List.rev (StrMap.bindings prog.premises))
