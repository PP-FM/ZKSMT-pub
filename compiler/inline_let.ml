open Printf
open Raw_ast
open Maps

let debug_print_shadowing = false

(* Inlines let expressions which would interfere with Binary_transform. *)

exception InlineException of string

let rec refl_arg_inline (inline_map : expr StrMap.t) (expr : expr) : bool =
  match expr with
  | Atom "f_and" -> true
  | Atom "f_or" -> true
  | Atom "f_not" -> true
  | Atom "f_=" -> true
  | Atom "f_=>" -> true
  | Atom "f_xor" -> true
  | Atom "f_ite" -> true
  | Atom s ->
    (match StrMap.find_opt s inline_map with
     | Some e -> refl_arg_inline inline_map e
     | None -> false
    )
  | _ -> false

(* Takes the argument of a let binding and determines whether or not to inline. *)
(*  We inline (refl f_* ) and cong + 1 refl arguments only. *)
let rec should_inline (inline_map : expr StrMap.t) (expr : expr) : bool =
  match expr with
  | Atom s ->
    (match StrMap.find_opt s inline_map with
     | Some e -> should_inline inline_map e
     | None -> false
    )
  | App ("refl", [e]) -> refl_arg_inline inline_map e
  | App ("cong", [Hole; Hole; Hole; Hole; e; _]) ->
    should_inline inline_map e
  | _ -> false

let rec inline_recurse (inline_map : expr StrMap.t) (expr : expr) : expr =
  match expr with
  | Atom s ->
    (match StrMap.find_opt s inline_map with
     | Some e -> e
     | None -> Atom s
    )
  | ScopeVar s -> ScopeVar s
  | Hole -> Hole
  | App (appname, expr_list) ->
    App (appname, List.map (inline_recurse inline_map) expr_list)
  | Let (Hole, Hole, arg, name, body) ->
    (if StrMap.mem name inline_map then
       ((if debug_print_shadowing then
          printf "let binding shadowing detected with %s" name)));
    if should_inline inline_map arg then
      (
        (* Uncomment for debug printing of which lets are inlined *)
        (* Printf.printf "eliminating %s\n" name; *)
        let inline_arg = inline_recurse inline_map arg in
        let inline_map = StrMap.add name inline_arg inline_map in
        inline_recurse inline_map body)
    else
      Let (
        Hole,
        Hole,
        inline_recurse inline_map arg,
        name,
        inline_recurse (StrMap.remove name inline_map) body
      )
  | Let _ -> raise (InlineException "unexpted form of let binding in inline_pass")
  | Scope (Hole, e1, name, e2) ->
    (if StrMap.mem name inline_map then
       ((if debug_print_shadowing then
          printf "let/scope binding shadowing detected with %s" name)));
    Scope (
      Hole,
      inline_recurse inline_map e1,
      name,
      inline_recurse (StrMap.remove name inline_map) e2
    )
  | Scope _ -> raise (InlineException "unexpected form of scope binding in inline_pass")

let pass (prog : prog) : prog =
  let derivation = inline_recurse StrMap.empty prog.derivation in
  {prog with derivation}
