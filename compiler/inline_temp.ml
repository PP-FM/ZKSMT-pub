open Maps
open Raw_ast

(* Removes all temporary variables from a Raw_ast.prog *)

let rec dereference (mem : expr StrMap.t) (expr : expr) : expr =
  match expr with
  | Atom s ->
    (match StrMap.find_opt s mem with
     | Some e -> e
     | None -> Atom s
    )
  | ScopeVar s -> ScopeVar s
  | Hole -> Hole
  | App (appname, expr_list) ->
    App (appname, List.map (dereference mem) expr_list)
  | Let (e1, e2, e3, name, e4) ->
    (if StrMap.mem name mem then
       Printf.fprintf stderr "Warning: let & variable name overlap, %s\n"  name
    );
    let mem = StrMap.remove name mem in
    Let (
      dereference mem e1,
      dereference mem e2,
      dereference mem e3,
      name,
      dereference mem e4
    )
  | Scope (e1, e2, name, e3) ->
    (if StrMap.mem name mem then
       Printf.fprintf stderr "Warning: scope & variable name overlap, %s\n" name
    );
    let mem = StrMap.remove name mem in
    Scope (
      dereference mem e1,
      dereference mem e2,
      name,
      dereference mem e3
    )

(* Removes internal pointers within the temporary variables. *)
let rec unrecurse_mem
    (entry_list : entry list)
    (mem : expr StrMap.t)
  : expr StrMap.t =
  match entry_list with
  | [] -> mem
  | (name, body) :: tail ->
    let mem = StrMap.add name (dereference mem body) mem in
    unrecurse_mem tail mem

let pass prog =
  let mem = unrecurse_mem prog.temps StrMap.empty in
  let premises =
    List.map (fun (name, e) -> name, dereference mem e) prog.premises in
  let conclusion = dereference mem prog.conclusion in
  let derivation = dereference mem prog.derivation in
  {prog with
   temps = [];
   premises;
   conclusion;
   derivation
  }
