open Printf
open Raw_ast
open Maps

(* Turn relevant atoms into ScopeVars. Assumes temps is empty. *)

let rec mk_scopevar strset expr =
  match expr with
  | Atom s ->
    if StrSet.mem s strset then
      ScopeVar s
    else
      Atom s
  | ScopeVar s -> ScopeVar s
  | Hole -> Hole
  | App (name, expr_list) ->
    App (name, List.map (mk_scopevar strset) expr_list)
  | Let (e1, e2, e3, name, e4) ->
    (if StrSet.mem name strset then
       fprintf stderr "plet/scope name shadowing: %s\n" name
    );
    Let (
      mk_scopevar strset e1,
      mk_scopevar strset e2,
      mk_scopevar strset e3,
      name,
      mk_scopevar strset e4
    )
  | Scope (e1, e2, name, e3) ->
    (if StrSet.mem name strset then
       fprintf stderr "scope name shadowing: %s\n" name
    );
    let inner_scope = StrSet.add name strset in
    Scope (
      mk_scopevar strset e1,
      mk_scopevar strset e2,
      name,
      mk_scopevar inner_scope e3
    )

let pass (prog : prog) : prog =
  let premises =
    List.map (fun (s, e) -> s, mk_scopevar StrSet.empty e) prog.premises in
  {
    vars = prog.vars;
    temps = prog.temps;
    premises;
    conclusion = mk_scopevar StrSet.empty prog.conclusion;
    derivation = mk_scopevar StrSet.empty prog.derivation
  }
