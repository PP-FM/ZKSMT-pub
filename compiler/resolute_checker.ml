open Resolute
open Maps
open Printf

let in_prog_print = ref false

exception ResoluteCheckError of string

(* Helper for conversions of sub. *)
let convert_single_sub e =
  Mul (-1, e)

let convert_sub_list (elist : expr list) : expr =
  match elist with
  | [] -> raise (ResoluteCheckError "convert_sub_list on empty")
  | a :: [] -> convert_single_sub a
  | head :: tail ->
    let tail' = List.map convert_single_sub tail in
    Add (head :: tail')

(* Helper for -cong *)
let neg_eq_with_sub (a, b) : lit =
  Neg (Eq (Mul (-1, a),
           Mul (-1, b)))

(* Checker for (a modified version of) RESOLUTE format. *)

let rec adj_pairs (list : 'a list) : ('a * 'a) list =
  match list with
  | [] -> []
  | _ :: [] -> []
  | a :: b :: tail ->
    (a, b) :: adj_pairs (b :: tail)

let rec pair_element (e : 'a) (list : 'a list) : ('a * 'a) list =
  match list with
  | [] -> []
  | head :: tail -> (e, head) :: pair_element e tail

let rec pairs' (list : 'a list) : ('a * 'a) list list =
  match list with
  | [] -> []
  | head :: tail -> (pair_element head tail) :: pairs' tail

let pairs (list : 'a list) : ('a * 'a) list =
  List.concat (pairs' list)

(* Setup to a helper for xors *)

(* MUST remove one instance of e *)
let rec remove e elist =
  match elist with
  | [] -> raise (ResoluteCheckError "removal failed")
  | e2 :: tail when e=e2 -> tail
  | e2 :: tail -> e2 :: (remove e tail)

(* Confirms all elements in elist occur an even number of times, or crashes. *)
let rec all_even elist =
  match elist with
  | [] -> ()
  | head :: tail -> all_even (remove head tail)

(* Main infer command function *)

let infer_cmd
  (get_res : cmd_ref -> LitSet.t)
  (cmd : cmd)
  : LitSet.t =
  match cmd with
  | Res (pivot, cr0, cr1) ->
    let result0 = get_res cr0 in
    let result1 = get_res cr1 in
    (match LitSet.mem (Pos pivot) result0, LitSet.mem (Neg pivot) result1 with
     | false, _ ->
       Printf.printf "%s\n%s\n%s\n"
         (str_of_expr pivot)
         (str_of_litset result0)
         (str_of_litset result1);
       raise (ResoluteCheckError "positive pivot not found")
     | true, false ->
       Printf.printf "%s\n%s\n%s\n"
         (str_of_expr pivot)
         (str_of_litset result0)
         (str_of_litset result1);
       raise (ResoluteCheckError "negative pivot not found")
     | true, true -> ()
    );
    LitSet.union
      (LitSet.remove (Pos pivot) result0)
      (LitSet.remove (Neg pivot) result1)
  (* Core Axioms *)
  | Axiom ("true+", [], []) ->
    LitSet.of_list [Pos True]
  | Axiom ("false-", [], []) ->
    LitSet.of_list [Neg False]
  | Axiom ("not+", [], [p0]) ->
    LitSet.of_list [Pos (Not p0); Pos p0]
      (* TODO: DELETEME
  | Axiom ("not-", [Not p0]) ->
    print_endline "kludge";
    LitSet.of_list [Neg (Not p0); Neg p0] *)
  | Axiom ("not-", [], [p0]) ->
    LitSet.of_list [Neg (Not p0); Neg p0]
  | Axiom ("and+", [], plist) ->
    let neg_lst = List.map (fun e -> Neg e) plist in
    LitSet.of_list (Pos (And plist) :: neg_lst)
  | Axiom ("and-", [i], plist) ->
    LitSet.of_list [Neg (And plist); Pos (List.nth plist i)]
  | Axiom ("or+", [i], plist) ->
    LitSet.of_list [Pos (Or plist); Neg (List.nth plist i)]
      (* TODO: DELTEME
  | Axiom ("or-", [Or plist]) ->
    print_endline "kludge";
    let pos_lst = List.map (fun e -> Pos e) plist in
    LitSet.of_list (Neg (Or plist) :: pos_lst) *)
  | Axiom ("or-", [], plist) ->
    let pos_lst = List.map (fun e -> Pos e) plist in
    LitSet.of_list (Neg (Or plist) :: pos_lst)
  | Axiom ("=>+", [0], [a; b]) ->
    LitSet.of_list [Pos (Impl (a, b)); Pos a]
  | Axiom ("=>+", [1], [a; b]) ->
    LitSet.of_list [Pos (Impl (a, b)); Neg b]
  | Axiom ("=>+", [_], [_; _]) ->
    raise (ResoluteCheckError "=>+ with non-0,1 idx")
  | Axiom ("=>-", [], [a; b]) ->
    LitSet.of_list [Neg (Impl (a, b)); Neg a; Pos b]
  | Axiom ("=+1", [], [p0; p1]) ->
    (*
    Printf.printf "%s\n" (str_of_expr p0);
    Printf.printf "%s\n" (str_of_expr p1); *)
    let a = LitSet.of_list [Pos (Eq (p0, p1)); Pos p0; Pos p1] in
    (*
    Printf.printf "%s\n" (str_of_litset a);
    Printf.printf "--\n"; *)
    a
  | Axiom ("=+2", [], [p0; p1]) ->
    LitSet.of_list [Pos (Eq (p0, p1)); Neg p0; Neg p1]
  | Axiom ("=-1", [], [p0; p1]) ->
    LitSet.of_list [Neg (Eq (p0, p1)); Pos p0; Neg p1]
  | Axiom ("=-2", [], [p0; p1]) ->
    LitSet.of_list [Neg (Eq (p0, p1)); Neg p0; Pos p1]
  | Axiom ("xor+", [], [e1; e2; e3]) ->
    let list_of_expr e =
      match e with
      | Xor elist -> elist
      | _ -> [e] in
    let el1 = list_of_expr e1 in
    let el2 = list_of_expr e2 in
    let el3 = list_of_expr e3 in
    all_even (el1 @ el2 @ el3);
    LitSet.of_list [Pos e1; Pos e2; Neg e3]
  | Axiom ("xor-", [], [e1; e2; e3]) ->
    let list_of_expr e =
      match e with
      | Xor elist -> elist
      | _ -> [e] in
    let el1 = list_of_expr e1 in
    let el2 = list_of_expr e2 in
    let el3 = list_of_expr e3 in
    all_even (el1 @ el2 @ el3);
    LitSet.of_list [Neg e1; Neg e2; Neg e3]
  | Axiom ("ite1", [], [e1; e2; e3]) ->
    LitSet.of_list [Pos (Eq (Ite (e1, e2, e3), e2)); Neg e1]
  | Axiom ("ite2", [], [e1; e2; e3]) ->
    LitSet.of_list [Pos (Eq (Ite (e1, e2, e3), e3)); Pos e1]
  (* EUF Axioms *)
  | Axiom ("refl", [], [t]) ->
    LitSet.of_list [Pos (Eq (t, t))]
  | Axiom ("symm", [], [t0; t1]) ->
    LitSet.of_list [Pos (Eq (t0, t1)); Neg (Eq (t1, t0))]
  | Axiom ("trans", [], [t0; t1; t2]) ->
    LitSet.of_list [Pos (Eq (t0, t2)); Neg (Eq (t0, t1)); Neg (Eq (t1, t2))]
  (* TODO: should be obsolete now *)
  | Axiom ("trans", [], elist) ->
    let step_eq (a, b) =
      Neg (Eq (a, b)) in
    let a = List.nth elist 0 in
    let b = List.nth elist (List.length elist - 1) in
    LitSet.of_list (Pos (Eq (a, b)) :: List.map step_eq (adj_pairs elist))
  | Axiom ("cong", [i], [b; App (f, oldlist)]) ->
    let newlist = List.mapi (fun j a -> if j=i then b else a) oldlist in
    let a = List.nth oldlist i in
    LitSet.of_list [
      Pos (Eq (App (f, oldlist), App (f, newlist)));
      Neg (Eq (a, b))
    ]
  (* TODO: these should be obsolete now *)
  (* TODO: FIXME this is not ideal *)
  | Axiom ("cong", [], [Not a; Not b]) ->
    LitSet.of_list (
      [
        Pos (Eq (Not a, Not b));
        Neg (Eq (a, b))
      ]
    )
  | Axiom ("cong", [], [And arglist0; And arglist1]) ->
    LitSet.of_list (
      (Pos (Eq (And arglist0, And arglist1))) ::
      (List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1)
    )
  | Axiom ("cong", [], [Or arglist0; Or arglist1]) ->
    LitSet.of_list (
      (Pos (Eq (Or arglist0, Or arglist1))) ::
      (List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1)
    )
  | Axiom ("cong", [], [App (f0, arglist0); App (f1, arglist1)]) when f0=f1 ->
    LitSet.of_list (
      (Pos (Eq (App (f0, arglist0), App (f1, arglist1)))) ::
      (List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1)
    )
  | Axiom ("cong", [], [Eq (a1, a2); Eq (b1, b2)]) ->
    LitSet.of_list (
      [
        Pos (Eq (Eq (a1, a2), Eq (b1, b2)));
        Neg (Eq (a1, b1));
        Neg (Eq (a2, b2))
      ]
    )
  | Axiom ("cong", [], [Impl (a1, a2); Impl (b1, b2)]) ->
    LitSet.of_list (
      [
        Pos (Eq (Impl (a1, a2), Impl (b1, b2)));
        Neg (Eq (a1, b1));
        Neg (Eq (a2, b2))
      ]
    )
  | Axiom ("cong", [], [Ite (a1, a2, a3); Ite (b1, b2, b3)]) ->
    LitSet.of_list (
      [
        Pos (Eq (Ite (a1, a2, a3), Ite (b1, b2, b3)));
        Neg (Eq (a1, b1));
        Neg (Eq (a2, b2));
        Neg (Eq (a3, b3))
      ]
    )
  | Axiom ("cong", [], [Lt (a1, a2); Lt (b1, b2)]) ->
    LitSet.of_list (
      [
        Pos (Eq (Lt (a1, a2), Lt (b1, b2)));
        Neg (Eq (a1, b1));
        Neg (Eq (a2, b2))
      ]
    )
  | Axiom ("cong", [], [Leq (a1, a2); Leq (b1, b2)]) ->
    LitSet.of_list (
      [
        Pos (Eq (Leq (a1, a2), Leq (b1, b2)));
        Neg (Eq (a1, b1));
        Neg (Eq (a2, b2))
      ]
    )
  | Axiom ("cong", [], [Mul (i1, a1); Mul (i2, b1)]) ->
    LitSet.of_list (
      [
        Pos (Eq (Mul (i1, a1), Mul (i2, b1)));
        Neg (Eq (Mul (i1, Var const_varname), Mul (i2, Var const_varname)));
        Neg (Eq (a1, b1))
      ]
    )
  | Axiom ("cong", [], [Add arglist0; Add arglist1]) ->
    LitSet.of_list (
      (Pos (Eq (Add arglist0, Add arglist1))) ::
      (List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1)
    )
  | Axiom ("cong", [], [Sub arglist0; Sub arglist1]) ->
    LitSet.of_list (
      (Pos (Eq (Sub arglist0, Sub arglist1))) ::
      (List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1)
    )
  | Axiom ("-cong", [], [Sub arglist0; Sub arglist1]) ->
    LitSet.of_list (
      (Pos (Eq (Sub arglist0, Sub arglist1))) ::
      (List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1)
    )
  | Axiom ("distinct+", [], elist) ->
    let step_eq (a, b) =
      Pos (Eq (a, b)) in
    LitSet.of_list (Pos (Distinct elist) :: List.map step_eq (pairs elist))
  | Axiom ("distinct-", [i1; i2], elist) ->
    let ei1 = List.nth elist i1 in
    let ei2 = List.nth elist i2 in
    LitSet.of_list [Neg (Distinct elist); Neg (Eq (ei1, ei2))]
  (* TODO: Temporary commands for debugging *)
  | Axiom ("placeholder", [], []) ->
    LitSet.of_list [Pos True]
  | Axiom ("trust", [], [And poslist; And neglist]) ->
    LitSet.of_list
      (
        List.map (fun e -> Pos e) poslist @
        List.map (fun e -> Neg e) neglist
      )
  (* LIA rules. TODO: no side condition checking, lax. *)
  | Axiom ("poly+", [], [e1; e2]) ->
    LitSet.of_list [Pos (Eq (e1, e2))]
  | Axiom ("poly*", [], [e1; e2]) ->
    LitSet.of_list [Pos (Eq (e1, e2))]
  | Axiom ("farkas", _, elist) ->
    elist
    |> List.map (fun eq -> Neg eq)
    |> LitSet.of_list
  | Axiom ("total", [], [e1; e2]) ->
    LitSet.of_list [Pos (Leq (e1, e2)); Pos (Lt (e2, e1))]
  | Axiom ("total-int", [], [e1; Mul (i, Var const)])
    when const=const_varname ->
    let plus_one = Mul (i+1, Var const) in
    LitSet.of_list [Pos (Leq (e1, Mul (i, Var const))); Pos (Leq (plus_one, e1))]
  | Axiom ("trichotomy", [], [e1; e2]) ->
    LitSet.of_list [Pos (Lt (e1, e2)); Pos (Eq (e1, e2)); Pos (Lt (e2, e1))]
  | Axiom ("-def", [], [e]) ->
    LitSet.of_list [Pos (Eq (Sub [e], convert_single_sub e))]
  | Axiom ("-def", [], (e :: elist)) ->
    LitSet.of_list [
      Pos (Eq (
        Sub (e :: elist),
        Add (e :: (List.map convert_single_sub elist))
      ))
    ]
  | Axiom (">def", [], [e1; e2]) ->
    LitSet.of_list [Pos (Eq (Gt (e1, e2), Lt (e2, e1)))]
  | Axiom (">=def", [], [e1; e2]) ->
    LitSet.of_list [Pos (Eq (Geq (e1, e2), Leq (e2, e1)))]
      (*
  | Axiom ("-def", [], elist) ->
    let conv_term = convert_sub_list elist in
    LitSet.of_list [Pos (Eq (conv_term, conv_term))]
  | Axiom ("-cong", [], [Add [a]; Add [b]]) ->
    LitSet.of_list [
      Pos (Eq (convert_sub_list [a], convert_sub_list [b]));
      neg_eq_with_sub (a, b)
    ]
  | Axiom ("-cong", [], [Add (a :: atail); Add (b :: btail)]) ->
    let asum = convert_sub_list (a :: atail) in
    let bsum = convert_sub_list (b :: btail) in
    let main_lit = Pos (Eq (asum, bsum)) in
    let head_lit = Neg (Eq (a, b)) in
    let tail_lit =
      (List.combine atail btail)
      |> List.map neg_eq_with_sub in
    LitSet.of_list (main_lit :: head_lit :: tail_lit) *)
  (* Debug messages on error *)
  | Axiom (n, _ilist, elist) ->
    elist
    |> List.map str_of_expr
    |> String.concat "\n"
    |> print_endline;
    let msg = sprintf "could not find axiom %s" n in
    raise (ResoluteCheckError msg)

let rec check_cmd_list
  (premises : expr StrMap.t)
  (results : LitSet.t IntMap.t)
  (to_check : cmd list)
  (cur_idx : int)
  (last_idx : int)
  : LitSet.t IntMap.t * int =
  match to_check with
  | [] -> results, last_idx
  | head :: tail ->
    let get_res (cr : cmd_ref) : LitSet.t =
      match cr with
      | Premise s ->
        (match StrMap.find_opt s premises with
         | Some e -> LitSet.of_list [Pos e]
         | None -> raise (ResoluteCheckError "get_res failed (premise)")
        )
      | Derived i ->
        (match IntMap.find_opt i results with
         | Some lits -> lits
         | None -> raise (ResoluteCheckError "get_res failed (derived)")
        ) in
    (if !in_prog_print then
       Printf.printf "c %d: %s\n" cur_idx (str_of_cmd head)
    );
    let result_list = infer_cmd get_res head in
    (if !in_prog_print then
       Printf.printf "s %d: %s\n\n" cur_idx (str_of_litset result_list);
    );
    let results = IntMap.add cur_idx result_list results in
    check_cmd_list premises results tail (cur_idx + 1) last_idx

let infer_prog (prog : prog) : LitSet.t list =
  let result_map, last_idx =
    check_cmd_list
      prog.premises
      IntMap.empty
      prog.cmd_list
      0
      (List.length prog.cmd_list - 1) in
  List.init (last_idx+1) (fun i -> IntMap.find i result_map)

let check (prog : prog) : unit =
  let result_map, last_idx =
    check_cmd_list
      prog.premises
      IntMap.empty
      prog.cmd_list
      0
      (List.length prog.cmd_list - 1) in
  let result = IntMap.find last_idx result_map in
  if LitSet.is_empty result then
    ()
  else
    raise (ResoluteCheckError "final conclusion not empty clause")

(*
type lit =
  | Pos of expr
  | Neg of expr

let infer_cmd
    (get_res : cmd_ref -> lit list)
    (cmd : cmd)
    : lit list =
  match cmd with
  | Res (pivot, cr0, cr1) ->
    let result_list0 = get_res cr0 in
    let result_list1 = get_res cr1 in
    (* TODO: should use set union, not list concat *)
    let result_list0 = List.filter (fun e -> e <> (Pos pivot)) result_list0 in
    let result_list1 = List.filter (fun e -> e <> (Neg pivot)) result_list1 in
    result_list0 @ result_list1
  (* Core Axioms *)
  | Axiom ("true+", []) ->
    [Pos True]
  | Axiom ("false-", []) ->
    [Neg False]
  | Axiom ("not+", [p0]) ->
    [Pos (Not p0); Pos p0]
  | Axiom ("not-", [p0]) ->
    [Neg (Not p0); Neg p0]
  | Axiom ("and+", plist) ->
    let neg_lst = List.map (fun e -> Neg e) plist in
    Pos (And plist) :: neg_lst
  | AxiomInt ("and-", i, plist) ->
    [Neg (And plist); Pos (List.nth plist i)]
  | AxiomInt ("or+", i, plist) ->
    [Pos (Or plist); Neg (List.nth plist i)]
  | Axiom ("or-", plist) ->
    let pos_lst = List.map (fun e -> Pos e) plist in
    Neg (Or plist) :: pos_lst
  (* TODO fillout *)
  | Axiom ("=-2", [p0; p1]) ->
    [Neg (Eq (p0, p1)); Neg p0; Pos p1]
  (* EUF Axioms *)
  | Axiom ("refl", [t]) ->
    [Pos (Eq (t, t))]
  | Axiom ("symm", [t0; t1]) ->
    [Pos (Eq (t0, t1)); Neg (Eq (t1, t0))]
  | Axiom ("trans", [t0; t1; t2]) ->
    [Pos (Eq (t0, t2)); Neg (Eq (t0, t1)); Neg (Eq (t1, t2))]
  | Axiom ("cong", [App (f0, arglist0); App (f1, arglist1)]) when f0=f1 ->
    Pos (Eq (App (f0, arglist0), App (f1, arglist1))) ::
    List.map2 (fun e1 e2 -> Neg (Eq (e1, e2))) arglist0 arglist1
  (* Debug messages on error *)
  | Axiom (n, _) ->
    let msg = sprintf "could not find axiom %s" n in
    raise (ResoluteCheckError msg)
  | AxiomInt (n, _, _) ->
    let msg = sprintf "could not find axiom %s" n in
    raise (ResoluteCheckError msg)

let rec check_cmd_list
  (premises : expr StrMap.t)
  (results : lit list IntMap.t)
  (to_check : cmd list)
  (cur_idx : int)
  (last_idx : int)
  : lit list =
  match to_check with
  | [] -> IntMap.find last_idx results
  | head :: tail ->
    let get_res (cr : cmd_ref) : lit list =
      match cr with
      | Premise s ->
        (match StrMap.find_opt s premises with
         | Some e -> [Pos e]
         | None -> raise (ResoluteCheckError "get_res failed (premise)")
        )
      | Derived i ->
        (match IntMap.find_opt i results with
         | Some lits -> lits
         | None -> raise (ResoluteCheckError "get_res failed (derived)")
        ) in
    let result_list = infer_cmd get_res head in
    let results = IntMap.add cur_idx result_list results in
    check_cmd_list premises results tail (cur_idx + 1) last_idx

let check (prog : prog) : unit =
  let result_list =
    check_cmd_list
      prog.premises
      IntMap.empty
      prog.cmd_list
      0
      (List.length prog.cmd_list - 1) in
  match result_list with
  | [] -> ()
  | _ :: _ -> raise (ResoluteCheckError "final conclusion not empty clause")
*)
