open Maps
open Resolute

(* Convert an LFSC-IR program into a RESOLUTE-IR program *)

exception ResoluteException of string

let placeholder_cmd = Axiom ("placeholder", [], [])
let temp n e =
  List.init (n-1) (fun _ -> placeholder_cmd) @
  [Axiom ("trust", [], [e])]

let turn_hyp_ref (irhr) =
  match irhr with
  | Ir.Premise n -> Premise n
  | Ir.Derived i -> Derived i

let rec turn_app (irexpr : Ir.expr) : expr =
  match irexpr with
  | Var n -> App (n, [])
  | App (lhs, rhs) ->
    (match turn_app lhs with
     | App (n, arglist) -> App (n, arglist @ [turn_expr rhs])
     | _ -> raise (ResoluteException "ill-formed turn_app result")
    )
  | _ -> raise (ResoluteException "ill-formed turn_app")

and turn_expr (irexpr : Ir.expr) : expr =
  match irexpr with
  | Var n -> Var n
  | App _ -> turn_app irexpr
  | NaryApp (name, elist) -> App (name, List.map turn_expr elist)
  | True -> True
  | False -> False
  | Eq (e1, e2) -> Eq (turn_expr e1, turn_expr e2)
  | Impl (e1, e2) -> Impl (turn_expr e1, turn_expr e2)
  | Xor (_, _) -> raise (ResoluteException "xor not implemented")
  | Xor2 _ -> raise (ResoluteException "xor not implemented")
  | Ite (_, _, _) -> raise (ResoluteException "ite not implemented")
  | Not e1 -> Not (turn_expr e1)
  | And (expr_list) -> And (List.map turn_expr expr_list)
  | Or (expr_list) -> Or (List.map turn_expr expr_list)
  | Num _ -> raise (ResoluteException "num cannot be converted")
  | Flag _ -> raise (ResoluteException "flag cannot be converted")
  | Add expr_list -> Add (List.map turn_expr expr_list)
  | Mul (_e1, _e2) ->
    raise (ResoluteException "binary mul deprecated")
  | Lt (e1, e2) -> Lt (turn_expr e1, turn_expr e2)
  | Leq (e1, e2) -> Leq (turn_expr e1, turn_expr e2)

module Expr =
  struct
    type t = expr
    let compare = compare
  end
module ExprSet = Set.Make(Expr)

(* Turns a proof of {a, b, c} into a proof of (or a b c), including accounting
   for duplicates, etc. The {a, b, c} proof should be at the end of block.*)
let est_or
  (block : cmd list)
  (alist : expr list)
  : cmd list =
  let base = List.length block in
  let find_idx b lst =
    let idx_opt =
      lst
      |> List.mapi (fun i a -> (i, a))
      |> List.find_opt (fun (_i, a) -> a=b) in
    (match idx_opt with
     | Some (i, _) -> i
     | None -> raise (ResoluteException "couldn't find arg in est_or")
    ) in
  let part_i i a =
    [
      Axiom ("or+", [find_idx a alist], alist);
      Res (a, Derived (-base - 2*i), Derived (-base -2*i - 1))
    ] in
  let a_nodup = ExprSet.elements (ExprSet.of_list alist) in
  block @ (List.concat (List.mapi part_i a_nodup))

let turn_res
  (block : cmd list)
  (ha0 : cmd_ref)
  (ha1 : cmd_ref)
  (lista : expr list)
  (listb : expr list)
  (result_list : expr list)
  (pivot : expr)
  : cmd list =
  (* Perform conversion & carry out main resolution *)
  let block_len = List.length block in
  let base =
    [
      Axiom ("or-", [], lista);
      Res (Or lista, ha0, Derived (-1 - block_len));
      Axiom ("or-", [], listb);
      Res (Or listb, ha1, Derived (-3 - block_len));
      Axiom ("not-", [], [pivot]);
      Res (Not pivot, Derived (-4 - block_len), Derived (-5 - block_len));
      (* Main resolution *)
      Res (pivot, Derived (-2 - block_len), Derived (-6 - block_len));
    ] in
  (* Convert {a, b, c} into (or a b c) *)
  est_or (block @ base) result_list
    (*
  let base_idx = -(List.length base) in
  let add_arg i arg =
    [
      AxiomInt ("or+", i, result_list);
      Res (arg, Derived (base_idx - 2*i), Derived (base_idx - 2*i - 1))
    ] in
  let convert = List.mapi add_arg result_list in
  base @ (List.concat convert) *)

let shift_cmd_ref base cmd_ref =
  match cmd_ref with
  | Premise s -> Premise s
  | Derived i when i<0 -> Derived (i - base)
  | Derived i -> Derived i

let shift_cmd base cmd =
  match cmd with
  | Axiom _ -> cmd
  | Res (pivot, cr0, cr1) ->
    Res (pivot, shift_cmd_ref base cr0, shift_cmd_ref base cr1)

(* subtract base from all negative Derived refs. *)
let shift base cmd_list =
  List.map (shift_cmd base) cmd_list

(* Prove a=b given not a, b & a, not b *)
(* lhs is the ref of not a, b *)
(* rhs is the ref of a, not b *)
(* Returns the original block with extra rules added. *)
(* a=b is the conclusion of the final rule. *)
(* Assumes a local block. *)
let est_equal
  (block : cmd list)
  (a : expr)
  (b : expr)
  (lhs : cmd_ref)
  (rhs : cmd_ref)
  : cmd list =
  let base = List.length block in
  let tail_block =
    [
      Axiom ("=+1", [], [a; b]);
      Res (a, Derived (-base - 1), lhs);
      Res (b, Derived (-base - 2), rhs);
      Axiom ("=+2", [], [a; b]);
      Res (a, Derived (-base - 3), Derived (-base - 4));
      Res (b, Derived (-base - 2), Derived (-base - 5));
    ] in
  block @ tail_block

(* Don't bother making well-formedness checks. *)
(* Return a block of commands. The result of the last command should be the *)
(* converted result of the input. This returns a list of commands in case the *)
(* IR command needs to be broken down into multiple commands. When referring to *)
(* commands in this local block, if Derived i is negative it refers to index *)
(* (-i - 1) *)
let rec turn_cmd
    (get_res : Ir.hyp_ref -> Ir.expr)
    (ircmd : Ir.cmd) : cmd list =
  match ircmd.name, ircmd.expr_args, ircmd.hyp_args, ircmd.result with
  | "refl", _, _, Eq (x, _) ->
    [Axiom ("refl", [], [turn_expr x])]
  | "symm", _, [ha], Eq (a, b) ->
    let a' = turn_expr a in
    let b' = turn_expr b in
    [
      Axiom ("symm", [], [b'; a']);
      Res (Eq (b', a'), turn_hyp_ref ha, Derived (-1))
    ]
  | "trans", _, [ha0; ha1], Eq (a, c) ->
    (match get_res ha0 with
     | Ir.Eq (_, b) ->
       let a' = turn_expr a in
       let b' = turn_expr b in
       let c' = turn_expr c in
       [
         Axiom ("trans", [], [a'; b'; c']);
         Res (Eq (a', b'), turn_hyp_ref ha0, Derived (-1));
         Res (Eq (b', c'), turn_hyp_ref ha1, Derived (-2))
       ]
     | _ -> raise (ResoluteException "issue in trans")
    )
  | "euf_cong", _, ha_list, Eq (app1, app2) ->
    let mk_res i ha =
      (match get_res ha with
       | e -> Res (turn_expr e, turn_hyp_ref ha, Derived (-(i+1)))
      ) in
    Axiom ("cong", [], [turn_expr app1; turn_expr app2]) :: (List.mapi mk_res ha_list)
  | "eq_resolve", _, [ha0; ha1], b ->
    let a = get_res ha0 in
    [
      Axiom ("=-2", [], [turn_expr a; turn_expr b]);
      Res (turn_expr (get_res ha1), turn_hyp_ref ha1, Derived (-1));
      Res (turn_expr a, turn_hyp_ref ha0, Derived (-2))
    ]
  (* Special case when proving false. *)
  | "resolution", [Flag true; _], [ha0; ha1], False ->
    (* NOTE: could add a check to enture ha0 & ha1 are inverses *)
    let a_expr = get_res ha0 in
    let a' = turn_expr a_expr in
    [
      Axiom ("or+", [0], [a'; False]);
      Res (a', turn_hyp_ref ha0, Derived (-1));
      Axiom ("or-", [], [a'; False]);
      Res (Or [a'; False], Derived (-2), Derived (-3));
      Axiom ("not-", [], [a']);
      Res (Not a', turn_hyp_ref ha1, Derived (-5));
      Res (a', Derived (-4), Derived (-6))
    ]
  | "resolution", [Flag true; pivot], [ha0; ha1], result ->
    (* Convert ha0 from a to (or a) if necessary *)
    let block0, ref0, lista =
      (match get_res ha0 with
       | Or l -> [], ha0, l
       | a ->
         [
           Axiom ("or+", [0], [turn_expr a]);
           Res (turn_expr a, turn_hyp_ref ha0, Derived (-1))
         ], Derived (-2), [a]
      ) in
    (* Convert ha1 from a to (or a) if necessary *)
    let block1, ref1, listb =
      (match get_res ha1 with
       | Or l -> [], ha1, l
       | a ->
         [
           Axiom ("or+", [0], [turn_expr a]);
           Res (turn_expr a, turn_hyp_ref ha1, Derived (-1 - List.length block0))
         ], Derived (-2 - List.length block0), [a]
      ) in
    let result_list =
      match result with
      | Or rl -> rl
      | _ -> [result] in
    let cmd_list =
      turn_res
        (block0 @ block1)
        (turn_hyp_ref ref0)
        (turn_hyp_ref ref1)
        (List.map turn_expr lista)
        (List.map turn_expr listb)
        (List.map turn_expr result_list)
        (turn_expr pivot) in
    (* Convert result from (or a) to a if necessary *)
    (match result with
    | Or _ -> cmd_list
    | _ ->
      let end_block =
        [
          Axiom ("or-", [], [turn_expr result]);
          Res (Or [turn_expr result],
               Derived (-(List.length cmd_list)),
               Derived (-(List.length cmd_list) - 1)
              )
        ] in
      cmd_list @ end_block)
  (* If flag is false, pivot convention is reversed between LFSC and RESOLUTE *)
  | "resolution", [Flag false; a], [ha0; ha1], _ ->
    let ircmd = {
      ircmd with
      expr_args = [Flag true; a];
      hyp_args = [ha1; ha0]
    } in
    turn_cmd get_res ircmd
  | "and_flatten", _, _, result ->
    temp 7 (turn_expr result)
  | "and_cons_equiv", _, [ha0], (Eq (And [a; And alist], And (_a2 :: blist))) ->
    (* Part 0: (Not (And [a; And A])), And (a :: B) *)
    let a = turn_expr a in
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let part0_base =
      [
        Axiom ("and+", [], a :: blist);
        (*
        Axiom ("=-1", [And alist; And blist]);
        Res (Eq (And alist, And blist), turn_hyp_ref ha0, Derived (-2)); *)
        Axiom ("=-2", [], [And alist; And blist]);
        Res (Eq (And alist, And blist), turn_hyp_ref ha0, Derived (-2));
        Axiom ("and-", [0], [a; And alist]);
        Axiom ("and-", [1], [a; And alist]);
        Res (And alist, Derived (-5), Derived (-3));
        Res (a, Derived (-4), Derived (-1))
      ]
    in
    let part0_i i b =
      [
        Axiom ("and-", [i], blist);
        Res (And blist, Derived (-6), Derived (-7 - 3*i));
        Res (b, Derived (-7 - 3*i - 1), Derived (-7 - 3*i + 1))
      ] in
    let part0 = part0_base @ (List.concat (List.mapi part0_i blist)) in
    (* Part 1: (And [a; And A]), (Not (And (a :: B))) *)
    let part1_base =
      [
        Axiom ("=-1", [], [And alist; And blist]);
        Res (Eq (And alist, And blist), turn_hyp_ref ha0, Derived (-1));
        Axiom ("and+", [], [a; And alist]);
        Res (Eq (And alist, And blist), Derived (-2), Derived (-3));
        Axiom ("and+", [], blist);
      ] in
    let base = List.length part1_base in
    let part1_i i b =
      [
        Axiom ("and-", [i+1], a::blist);
        Res (b, Derived (base - (2*i) - 1), Derived (base - (2*i)))
      ] in
    let part1_0 = part1_base @ (List.concat (List.mapi part1_i blist)) in
    let base = List.length part1_0 in
    let part1 =
      [
        Res (And blist, Derived (-base), Derived (-4));
        Axiom ("and-", [0], a::blist);
        Res (a, Derived (-base - 2), Derived (-base - 1))
      ] in
    let part1 = shift (List.length part0) part1 in
    (* Put everything together *)
    let part0_ref = Derived (- (List.length part0)) in
    let part1_ref = Derived (- (List.length part0 + List.length part1)) in
    let base = List.length part0 + List.length part1 in
    let part2 =
      [
        Axiom ("=+1", [], [And [a; And alist]; And (a :: blist)]);
        Res (And [a; And alist], Derived (-1 - base), part0_ref);
        Axiom ("=+2", [], [And [a; And alist]; And (a :: blist)]);
        Res (And [a; And alist], part1_ref, Derived (-3 - base));
        Res (And (a :: blist), Derived (-2 - base), Derived (-4 - base))
      ] in
    part0 @ part1 @ part2
  | "or_flatten", _, [], (Eq (Or [Or _], Or alist)) ->
    let alist = List.map turn_expr alist in
    let block =
      [
        Axiom ("or-", [], [Or alist]);
        Axiom ("or+", [0], [Or alist])
      ] in
    est_equal block (Or [Or alist]) (Or alist) (Derived (-1)) (Derived (-2))
  | "or_cons_equiv", _, [_ha0], (Eq (Or [a; Or alist], Or (_a2 :: blist))) ->
    let i = List.length alist in
    let a = turn_expr a in
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    temp (19 + (5*i)) (Eq (Or [a; Or alist], Or (a :: blist)))
  | "factoring", _, [ha0], (Or blist) ->
    let blist = List.map turn_expr blist in
    (match get_res ha0 with
     | Or alist ->
       let alist = List.map turn_expr alist in
       let base = [
         Axiom ("or-", [], alist);
         Res (Or alist, turn_hyp_ref ha0, Derived (-1));
       ] in
       est_or base blist
       (*
       let part_i i b =
         [
           AxiomInt ("or+", i, blist);
           Res (b, Derived (-2 -2*i + 2), Derived (-2 -2*i + 1))
         ] in
       let ans = base @ (List.concat (List.mapi part_i blist)) in
       ans
     |> List.map str_of_cmd
     |> List.map (Printf.sprintf "flag 0: %s\n")
     |> String.concat ""
     |> print_endline;
     ans*)
     | _ -> raise (ResoluteException "non-or arg in factoring")
    )
  | "reordering", _, [ha0], (Or blist) ->
    let blist = List.map turn_expr blist in
    (match get_res ha0 with
     | Or alist ->
       let alist = List.map turn_expr alist in
       let base = [
         Axiom ("or-", [], alist);
         Res (Or alist, turn_hyp_ref ha0, Derived (-1))
       ] in
       est_or base blist
         (*
       let find_idx b lst =
         let idx_opt =
           lst
           |> List.mapi (fun i a -> (i, a))
           |> List.find_opt (fun (_i, a) -> a=b) in
         (match idx_opt with
          | Some (i, _) -> i
          | None -> raise (ResoluteException "couldn't find arg in reordering")
         )
       in
       let part_i i b =
         [
           AxiomInt ("or+", find_idx b blist, blist);
           Res (b, Derived (-2 -2*i), Derived (-2 -2*i -2))
         ] in
       base @ (List.concat (List.mapi part_i alist)) *)
     | _ -> raise (ResoluteException "non-or arg in reordering")
    )
      (*
  | "cnf_implies_pos", _, _, Or [Not (Impl (a, b)); Not a2; b2] when a=a2 && b=b2 ->
    let a = turn_expr a in
    let b = turn_expr b in
    [Axiom ("=>-", [a; b])] *)
  | _ ->
    let msg =
      Printf.sprintf "resolute_conv failed on command (ignore derived clause number):\n%s\n"
        (Ir.str_of_cmd (-3) ircmd) in
    print_endline msg;
    raise (ResoluteException "not implemented turn_cmd")

let shift_cmd_ref (cr : cmd_ref) (shift : int IntMap.t) (base : int) =
  match cr with
  | Premise s -> Premise s
  | Derived i when i < 0 -> Derived (base - (i+1))
  | Derived i ->
    (match IntMap.find_opt i shift with
     | Some i' -> Derived i'
     | None -> raise (ResoluteException "could not shift cmd_ref")
    )

let shift_cmd (shift : int IntMap.t) (base : int) (cmd : cmd) : cmd =
  match cmd with
  | Res (e, cr1, cr2) ->
    Res (e, shift_cmd_ref cr1 shift base, shift_cmd_ref cr2 shift base)
  | Axiom _ -> cmd

let rec turn_cmd_block
  (result : cmd list)
  (old_idx : int)
  (to_convert : Ir.cmd list)
  (get_res : Ir.hyp_ref -> Ir.expr)
  (shift : int IntMap.t)
  : cmd list =
  match to_convert with
  | [] ->
    (* End should derive false but we need an empty Or. *)
    let finish_block =
      [
        Axiom ("false-", [], []);
        Res (False, Derived (List.length result - 1), Derived (List.length result))
      ] in
    result @ finish_block
  | head :: tail ->
    let block = turn_cmd get_res head in
    let base = List.length result in
    let block = List.map (shift_cmd shift base) block in
    let result = result @ block in
    let shift = IntMap.add old_idx (List.length result - 1) shift in
    turn_cmd_block result (old_idx + 1) tail get_res shift

let turn_prog (prog : Ir.prog) : prog =
  let premises = StrMap.map turn_expr prog.premises in

  let get_res (hr : Ir.hyp_ref) : Ir.expr =
    match hr with
    | Premise s ->
      (match StrMap.find_opt s prog.premises with
       | Some e -> e
       | None -> raise (ResoluteException "get_res failed (premise)")
      )
    | Derived i ->
      (match List.nth_opt prog.cmd_list i with
       | Some cmd -> cmd.result
       | None -> raise (ResoluteException "get_res failed (derived)")
      ) in
  let cmd_list = turn_cmd_block [] 0 prog.cmd_list get_res (IntMap.empty) in

  {
    vars = prog.vars;
    premises;
    cmd_list
  }
  (* TODO: add on the false prog. *)
