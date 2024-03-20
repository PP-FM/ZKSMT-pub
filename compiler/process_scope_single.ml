open Raw_ast

exception ProcessSingleError of string

(* Debug check to see if scope_discharge is problematic *)
let rec has_or_form e =
  match e with
  | Atom "false" -> true
  | App ("or", [_; tail]) -> has_or_form tail
  | _ -> false

let rec mk_or_scope (e : expr) : expr =
  match e with
  | Scope (Hole, assm, name, e2) ->
    Scope (Hole, assm, name, mk_or_scope e2)
  | Scope _ ->
    raise (ProcessSingleError "bad scope form")
  | _ ->
    App ("or_single2", [Hole; e])

let rec detect (e : expr) : expr =
  match e with
  | Atom s -> Atom s
  | ScopeVar s -> ScopeVar s
  | Hole -> Hole
  | App ("process_scope", [Hole; Hole; suffix; e1]) ->
    if not (has_or_form suffix) then
      App (
        "implies_single",
        [
          Hole; Hole;
          App ("process_scope", [
              Hole; Hole;
              App ("or", [suffix; (Atom "false")]);
              detect (mk_or_scope e1)
            ])
        ]
      )
    else
      App ("process_scope", [Hole; Hole; detect suffix; detect e1])
  | App (name, expr_list) ->
    App (name, List.map detect expr_list)
  | Let (e1, e2, e3, name, e4) ->
    Let (
      detect e1,
      detect e2,
      detect e3,
      name,
      detect e4
    )
  | Scope (e1, e2, name, e3) ->
    Scope (
      detect e1,
      detect e2,
      name,
      detect e3
    )

let pass (prog : prog) : prog =
  {prog with derivation=detect prog.derivation}
