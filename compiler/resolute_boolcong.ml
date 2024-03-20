open Maps
open Resolute

exception ResoluteBoolcongError of string

(*
let compile_not_cong (a : expr) (b : expr) : cmd list =
  [
    Axiom ("=+1", [], [Not a; Not b]);
    Axiom ("not-", [], [a]);
    Res (Not a, Derived (-1), Derived (-2));
    Axiom ("not-", [], [b]);
    Res (Not b, Derived (-3), Derived (-4));
    Axiom ("=+2", [], [Not a; Not b]);
    Axiom ("not+", [], [a]);
    Res (Not a, Derived (-7), Derived (-6));
    Axiom ("not+", [], [b]);
    Res (Not b, Derived (-9), Derived (-8));
    Axiom ("=-1", [], [a; b]);
    Res (a, Derived (-11), Derived (-5));
    Axiom ("=-2", [], [a; b]);
    Res (b, Derived (-13), Derived (-5));
    Res (b, Derived (-10), Derived (-12));
    Res (a, Derived (-15), Derived (-14))
  ] *)

(*
let compile_impl_cong
    (a1 : expr) (a2 : expr) (b1 : expr) (b2 : expr) : cmd list =
  [
    Axiom ("=+1", [], [Impl (a1, a2); Impl (b1, b2)]);
    Axiom ("=>-", [], [a1; a2]);
    Res (Impl (a1, a2), Derived (-1), Derived (-2));
    Axiom ("=>-", [], [b1; b2]);
    Res (Impl (b1, b2), Derived (-3), Derived (-4));
    Axiom ("=+2", [], [Impl (a1, a2); Impl (b1, b2)]);
    Axiom ("=>+", [0], [a1; a2]);
    Res (Impl (a1, a2), Derived (-7), Derived (-6));
    Axiom ("=>+", [0], [b1; b2]);
    Res (Impl (b1, b2), Derived (-9), Derived (-8));
    Axiom ("=-1", [], [a1; b1]);
    Res (b1, Derived (-10), Derived (-11));
    Axiom ("=-2", [], [a1; b1]);
    Res (a1, Derived (-10), Derived (-13));
    Axiom ("=>+", [1], [a1; a2]);
    Res (Impl (a1, a2), Derived (-15), Derived (-6));
    Axiom ("=>+", [1], [b1; b2]);
    Res (Impl (b1, b2), Derived (-17), Derived (-16));
    Axiom ("=-1", [], [a2; b2]);
    Res (a2, Derived (-19), Derived (-18));
    Axiom ("=-2", [], [a2; b2]);
    Res (b2, Derived (-21), Derived (-18));
    Res (a1, Derived (-12), Derived (-5));
    Res (b1, Derived (-14), Derived (-23));
    Res (a2, Derived (-24), Derived (-22));
    Res (b2, Derived (-25), Derived (-20))
  ]
  *)

(*
let compile_and_cong (alist : expr list) (blist : expr list) : cmd list =
  let base =
    [
      Axiom ("=+1", [], [And alist; And blist]);
      Axiom ("=+2", [], [And alist; And blist]);
      Axiom ("and+", [], alist);
      Res (And alist, Derived (-3), Derived (-2));
      Axiom ("and+", [], blist);
      Res (And blist, Derived (-5), Derived (-4))
    ] in
  (**let blen = -6 in
     let klen = 10 in*)
  let parti old (a, b, i) =
    let base = - (List.length old) in
    if a = b then
      old @ [
        Axiom ("and-", [i], alist);
        Res (And alist, Derived (-1), Derived (base-1));
        Axiom ("and-", [i], blist);
        Res (And blist, Derived (base-2), Derived (base-3));
        Axiom ("or+", [0], [Eq (And alist, And blist); a; Not (Eq (a, a))]);
        Res (Eq (And alist, And blist),
             Derived (base-4), Derived (base-5));
        Axiom ("or+", [1], [Eq (And alist, And blist); a; Not (Eq (a, a))]);
        Res (a,
             Derived (base-6), Derived (base-7));
        Axiom ("or-", [], [Eq (And alist, And blist); a; Not (Eq (a, a))]);
        Res (Or [Eq (And alist, And blist); a; Not (Eq (a, a))],
             Derived (base-8), Derived (base-9));
        Axiom ("not-", [], [Eq (a, a)]);
        Res (Not (Eq (a, a)),
             Derived (base-10), Derived (base-11));
        Res (a,
             Derived (base-12), Derived (base-0));
      ]
    else
      old @ [
        Axiom ("and-", [i], alist);
        Res (And alist, Derived (-1), Derived (base-1));
        Axiom ("and-", [i], blist);
        Res (And blist, Derived (base-2), Derived (base-3));
        Axiom ("=-2", [], [a; b]);
        Res (a, Derived (base-4), Derived (base-5));
        Axiom ("=-1", [], [a; b]);
        Res (b, Derived (base-4), Derived (base-7));
        Res (a, Derived (base-8), Derived (base));
        Res (b, Derived (base-6), Derived (base-9))
      ] in
  let ablist = List.map2 (fun a b -> a, b) alist blist in
  let abilist = List.mapi (fun i (a, b) -> (a, b, i)) ablist in
  List.fold_left parti base abilist *)
(**base @ (List.concat (List.map parti abilist))*)

(* Has a proof of (lhs = rhs), with accompanying negated intermediate inequalities. *)
(* Converts to a proof that lhs equals the end of to_trans list (unless it is *)
(* empty, in which case it returns the lhs = rhs proof) *)
(* Precondition: no duplicates in lhs, rhs and to_trans. *)
(* Precondition: last arg of ans is the proof of (lhs = rhs) *)
let rec compile_trans_rec
  (lhs : expr)
  (rhs : expr)
  (to_trans : expr list)
  (ans : cmd Elist.t)
  : cmd Elist.t =
  match to_trans with
  | [] -> ans
  | head :: to_trans ->
    let base = - (Elist.length ans) in
    let part =
      [
        Axiom ("trans", [], [lhs; rhs; head]);
        Res (Eq (lhs, rhs), Derived base, Derived (base-1))
      ] in
    let ans = Elist.rev_app ans part in
    compile_trans_rec lhs head to_trans ans

(* Precondition: no duplicates in alist *)
let compile_trans (alist : expr list) : cmd list =
  match alist with
  | [] -> raise (ResoluteBoolcongError "0 args to trans")
  | [a] -> [Axiom ("refl", [], [a])]
  | [a; b] ->
    [
      Axiom ("not+", [], [Eq (a, b)]);
      Axiom ("not-", [], [Eq (a, b)]);
      Res (Not (Eq (a, b)), Derived (-1), Derived (-2));
    ]
  | a :: b :: c :: tail ->
    let base = Elist.from_list [Axiom ("trans", [], [a; b; c])] in
    Elist.to_list (compile_trans_rec a c tail base)

(*

(* TODO: assumes we don't have Pos (not a) and Neg (a) in the result. *)
(* Converts Neg a to Pos (Not a) for a in neg_list *)
let rec rm_neg
  (ans : cmd Elist.t)
  (neg_list : expr list)
  (last_rel_idx : int) (* relative index of the last command in ans *)
  : cmd Elist.t =
  match neg_list with
  | [] -> ans
  | head :: neg_list ->
    let part =
      [
        Axiom ("not+", [], [head]);
        Res (head, Derived (last_rel_idx - 1), Derived last_rel_idx)
      ] in
    let ans = Elist.rev_app ans part in
    rm_neg ans neg_list (last_rel_idx - 2)

(* Opposite of add_neg: converts Pos (not a) to Neg a for a in neg_list. *)
let rec add_neg
  (ans : cmd Elist.t)
  (neg_list : expr list)
  (last_rel_idx : int)
  : cmd Elist.t =
  match neg_list with
  | [] -> ans
  | head :: neg_list ->
    let part =
      [
        Axiom ("not-", [], [head]);
        Res (Not head, Derived last_rel_idx, Derived (last_rel_idx - 1))
      ] in
    let ans = Elist.rev_app ans part in
    add_neg ans neg_list (last_rel_idx - 2)

let rec indexof_rec (e : 'a) (list : 'a list) (idx : int) : int =
  match list with
  | [] -> raise (ResoluteBoolcongError "indexof failed")
  | head :: _ when e=head -> idx
  | _ :: tail -> indexof_rec e tail (idx+1)

let indexof (e : 'a) (list : 'a list) =
  indexof_rec e list 0

let rec mk_or
  (rm_list : expr list)
  (or_list : expr list)
  (ans : cmd Elist.t)
  : cmd Elist.t =
  match rm_list with
  | [] -> ans
  | head :: rm_list ->
    let last_rel_idx = - (Elist.length ans) in
    let part =
      [
        Axiom ("or+", [indexof head or_list], or_list);
        Res (head, Derived last_rel_idx, Derived (last_rel_idx - 1))
      ] in
    let ans = Elist.rev_app ans part in
    mk_or rm_list or_list ans

(* Takes a proof whose result is (positively) pos_or_list and (negatively) *)
(* neg_or_list, and weakens it to additionally include (negatively) add_list. *)
(* Precondition: pos_or_list and neg_or_list are disjoint. *)
(* Precondition: pos_or_list and add_list are disjoint. *)
(* Precondition: The last command of ans proves pos_or_list & neg_or_list *)
let weaken_neg
  (add_list : expr list)
  (pos_or_list : expr list)
  (neg_or_list : expr list)
  (ans : cmd Elist.t)
  : cmd Elist.t =
  let ans = rm_neg ans neg_or_list (- (Elist.length ans)) in
  let mapped_neg_or_list =
    List.map (fun e -> Not e) neg_or_list in
  let mapped_add_list =
    List.map (fun e -> Not e) add_list in
  let full_or_list = mapped_add_list @ pos_or_list @ mapped_neg_or_list in
  let ans =
    mk_or
      (pos_or_list @ mapped_neg_or_list)
      (full_or_list)
      ans in
  let ans =
    Elist.rev_app ans
    [
      Axiom ("or-", [], full_or_list);
      Res (Or full_or_list,
           Derived (- (Elist.length ans)),
           Derived (- (Elist.length ans) - 1))
    ] in
  let ans = add_neg ans (neg_or_list @ add_list) (- (Elist.length ans)) in
  ans

let rec compile_cong_rec
  (old_list : expr list)
  (orig_alist : expr list)
  (blist : expr list)
  (i : int)
  (rel_idx : int)
  (ans : cmd Elist.t)
  (f : string)
  : cmd Elist.t =
  match blist with
  | [] -> ans
  | b :: blist ->
    if (List.nth orig_alist i = b) then
      compile_cong_rec old_list orig_alist blist (i+1) rel_idx ans f
    else
      let new_list =
        old_list
        |> List.mapi (fun j x -> if j=i then b else x) in
      let part =
        [
          Axiom ("cong", [i], [b; App (f, old_list)]);
          Axiom ("trans", [],
                 [App (f, orig_alist); App (f, old_list); App (f, new_list)]);
          Res (Eq (App (f, orig_alist), App (f, old_list)),
               Derived rel_idx,
               Derived (rel_idx-2)
              );
          Res (Eq (App (f, old_list), App (f, new_list)),
               Derived (rel_idx-1),
               Derived (rel_idx-3)
              )
        ] in
      let ans = Elist.rev_app ans part in
      compile_cong_rec new_list orig_alist blist (i+1) (- (Elist.length ans)) ans f

let compile_cong (f : string) (alist : expr list) (blist : expr list) : cmd list =
  let base = [Axiom ("refl", [], [App (f, alist)])] in
  let ans =
    compile_cong_rec
      alist
      alist
      blist
      0
      (- (List.length base))
      (Elist.from_list base)
      f in
  let ablist = List.combine alist blist in
  let neg_or_list =
    ablist
    |> List.filter (fun (a, b) -> a <> b)
    |> List.map (fun (a, b) -> Eq (a, b)) in
  let pos_or_list = [Eq (App (f, alist), App (f, blist))] in
  let add_list =
    ablist
    |> List.filter (fun (a, b) -> a = b)
    |> List.map (fun (a, b) -> Eq (a, b)) in
  let ans = weaken_neg add_list pos_or_list neg_or_list ans in
  Elist.to_list ans *)

(* TODO: these 2 are for debugging purposes, remove *)
let str_of_list list =
  list
  |> String.concat "; "
  |> Printf.sprintf "[%s]"

let print_expr_list tag list =
  let s = list
          |> List.map (str_of_expr)
          |> str_of_list in
  Printf.printf "%s: %s\n" tag s

let compile_cmd cmd : cmd list =
  match cmd with
  | Axiom ("trans", [], alist) ->
    compile_trans alist
  | Axiom ("cong", [], [App (f, _); App (f2, _)]) when f=f2 ->
    (*
    compile_cong f alist blist *)
    [cmd]
  | Axiom ("cong", [], [App _; App _]) ->
    raise (ResoluteBoolcongError "cong between different functions")
  (*| Axiom ("cong", [], [And alist; And blist]) ->
    compile_and_cong alist blist
  | Axiom ("cong", [], [Not a; Not b]) ->
    compile_not_cong a b *)
(*  | Axiom ("cong", [], [Impl (a1, a2); Impl (b1, b2)]) ->
    compile_impl_cong a1 a2 b1 b2 *)
  (* Or case is being handled in resolute_lia_compile *)
  | Axiom _ -> [cmd]
  | Res _ -> [cmd]

let update_cmd_ref
    (old_map : int IntMap.t)
    (base : int)
    (cr : cmd_ref)
    : cmd_ref =
  match cr with
  | Premise s -> Premise s
  | Derived i when i<0 ->
    Derived (base - (i+1))
  | Derived i ->
    Derived (IntMap.find i old_map)

let update_cmd
    (old_map : int IntMap.t)
    (base : int)
    (cmd : cmd) : cmd =
  match cmd with
  | Res (p, cr0, cr1) ->
    Res (p, update_cmd_ref old_map base cr0, update_cmd_ref old_map base cr1)
  | _ -> cmd

let rec update_cmd_list
  (old_map : int IntMap.t)
  (orig_idx : int)
  (new_idx : int)
  (ans : cmd Elist.t)
  (to_convert : cmd list)
  : cmd list =
  match to_convert with
  | [] -> Elist.to_list ans
  | cmd :: to_convert ->
    let new_list = compile_cmd cmd in
    let new_list = List.map (update_cmd old_map new_idx) new_list in
    let ans = Elist.rev_app ans new_list in
    let old_map = IntMap.add orig_idx (Elist.length ans - 1) old_map in
    let new_idx = Elist.length ans in
    update_cmd_list old_map (orig_idx + 1) new_idx ans to_convert

let pass (prog : prog) : prog =
  let cmd_list = update_cmd_list IntMap.empty 0 0 Elist.nil prog.cmd_list in
  {prog with cmd_list}
