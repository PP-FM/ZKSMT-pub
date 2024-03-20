
open Raw_ast

exception BinaryTransError of string

let euf_cong_flag = ref false

(*
let rec fold_expr (f : expr -> expr) (e : expr) =
  match e with
  | Atom name -> f (Atom name)
  | Hole -> f (Hole)
  | App (name, expr_list) ->
    f (App (name, List.map (fold_expr f) expr_list))
  | Let (e1, e2, e3, name, e4) ->
    f (Let (fold_expr f e1, fold_expr f e2, fold_expr f e3, name, fold_expr f e4))

let mk_establish entry_list (changed_ref : bool ref) (expr : expr) =
  match Ast.dereference entry_list expr with
  | App ("cong", [
      Hole; Hole; Hole; Hole;
      App ("refl", [Atom "f_not"]);
      x
    ]) ->
    changed_ref := true;
    App ("not_est", [Hole; Hole; x])
  | App ("cong", [
      Hole; Hole; Hole; Hole;
      App ("cong", [
          Hole; Hole; Hole; Hole;
          App ("refl", [Atom "f_and"]);
          x
        ]
        );
      y
    ]) ->
    changed_ref := true;
    App ("and_est", [Hole; Hole; Hole; Hole; x; y])
  | App ("cong", [
      Hole; Hole; Hole; Hole;
      App ("cong", [
          Hole; Hole; Hole; Hole;
          App ("refl", [Atom "f_or"]);
          x
        ]
        );
      y
    ]) ->
    changed_ref := true;
    App ("or_est", [Hole; Hole; Hole; Hole; x; y])
  | App ("cong", [
      Hole; Hole; Hole; Hole;
      App ("cong", [
          Hole; Hole; Hole; Hole;
          App ("refl", [Atom "f_="]);
          x
        ]
        );
      y
    ]) ->
    changed_ref := true;
    App ("=_est", [Hole; Hole; Hole; Hole; x; y])
  | _ -> expr

let rec establish_pass' (entry_list : Ast.entry list) (expr : expr) : expr =
  let changed_ref = ref false in
  let expr = mk_establish entry_list changed_ref expr in
  if !changed_ref then
    establish_pass' entry_list expr
  else
    expr

let establish_pass (derive : derive) : derive =
  let derivation =
    fold_expr (establish_pass' derive.start_entry) derive.derivation in
  {derive with derivation}
  *)

(** Version 2. Assumes no variables. *)

let rec try_euf_cong' (expr : expr) : expr option =
  match expr with
  | App ("cong", [
      Hole; Hole; Hole; Hole;
      x;
      y
    ]) ->
    let inner = try_euf_cong' x in
    (match inner with
     | Some (App ("euf_cong", arg_lst)) ->
       Some (App ("euf_cong", arg_lst @ [y]))
     | Some _ -> raise (BinaryTransError "ill formed euf_cong")
     | None -> None
    )
  | App ("refl", [x]) ->
    (match x with
    | Atom "f_not" -> None
    | Atom "f_or" -> None
    | Atom "f_and" -> None
    | Atom "f_xor" -> None
    | Atom "f_ite" -> None
    | Atom "f_=" -> None
    | Atom "f_=>" -> None
    | _ ->
      Some (App ("euf_cong", [x])))
  | _ -> None

(* Ensure that (refl x) is not a 0-arg euf_cong *)
let try_euf_cong (expr : expr) : expr option =
  if !euf_cong_flag then
    match expr with
    | App ("cong", [Hole; Hole; Hole; Hole; _; _]) -> try_euf_cong' expr
    | _ -> None
  else
    None

(* Returns a converted establish term if possible, None otherwise. *)
let try_establish (expr : expr) : expr option =
  match try_euf_cong expr with
  | Some x -> Some x
  | None ->
    (match expr with
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("refl", [Atom "f_not"]);
         x
       ]) ->
       Some (App ("not_est", [Hole; Hole; x]))
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("cong", [
             Hole; Hole; Hole; Hole;
             App ("refl", [Atom "f_and"]);
             x
           ]
           );
         y
       ]) ->
       Some (App ("and_est", [Hole; Hole; Hole; Hole; x; y]))
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("cong", [
             Hole; Hole; Hole; Hole;
             App ("refl", [Atom "f_or"]);
             x
           ]
           );
         y
       ]) ->
       Some (App ("or_est", [Hole; Hole; Hole; Hole; x; y]))
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("cong", [
             Hole; Hole; Hole; Hole;
             App ("refl", [Atom "f_="]);
             x
           ]
           );
         y
       ]) ->
       Some (App ("=_est", [Hole; Hole; Hole; Hole; x; y]))
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("cong", [
             Hole; Hole; Hole; Hole;
             App ("refl", [Atom "f_=>"]);
             x
           ]
           );
         y
       ]) ->
       Some (App ("=>_est", [Hole; Hole; Hole; Hole; x; y]))
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("cong", [
             Hole; Hole; Hole; Hole;
             App ("refl", [Atom "f_xor"]);
             x
           ]
           );
         y
       ]) ->
       Some (App ("xor_est", [Hole; Hole; Hole; Hole; x; y]))
     | App ("cong", [
         Hole; Hole; Hole; Hole;
         App ("cong", [
             Hole; Hole; Hole; Hole;
             App ("cong", [
                 Hole; Hole; Hole; Hole;
                 App ("refl", [Atom "f_ite"]);
                 x
               ]
               );
             y
           ]
           );
         z
       ]) ->
       Some (App ("ite_est", [Hole; Hole; Hole; Hole; Hole; Hole; x; y; z]))
     | _ -> None)

let rec establish_expr e =
  let e =
    match try_establish e with
    | Some e -> e
    | None -> e in
  match e with
  | Atom s -> Atom s
  | ScopeVar s -> ScopeVar s
  | Hole -> Hole
  | App (appname, expr_list) ->
    App (appname, List.map establish_expr expr_list)
  | Let (e1, e2, e3, name, e4) ->
    Let (
      establish_expr e1,
      establish_expr e2,
      establish_expr e3,
      name,
      establish_expr e4
    )
  | Scope (e1, e2, name, e3) ->
    Scope (
      establish_expr e1,
      establish_expr e2,
      name,
      establish_expr e3
    )

let establish_pass (prog : prog) : prog =
  {prog with
   derivation = establish_expr prog.derivation
  }

(*
module StrSet = Set.Make(String)

let rec in_mem (name : string) (start_entry : entry list) : bool =
  match start_entry with
  | [] -> false
  | (name2, _) :: _ when name=name2 -> true
  | _ :: tail -> in_mem name tail

let rec mark_used (start_entry : entry list) (used : StrSet.t) (expr : expr) : StrSet.t =
  match expr with
  | Atom name when in_mem name start_entry ->
    StrSet.add name used
  | Atom _ -> used
  | Hole -> used
  | App (_name, expr_list) ->
    List.fold_left (mark_used start_entry) used expr_list
  | Let (e1, e2, e3, _, e4) ->
    List.fold_left (mark_used start_entry) used [e1; e2; e3; e4]

let deadcode_elim (derive : derive) : derive =
  let expr_list = List.concat [
      List.map snd derive.start_entry;
      List.map snd derive.premises;
      [derive.conclusion];
      [derive.derivation]
    ] in
  let used = List.fold_left (mark_used derive.start_entry) StrSet.empty expr_list in
  let start_entry =
    List.filter (fun (n, _) -> StrSet.mem n used) derive.start_entry in
  {derive with start_entry}
*)
