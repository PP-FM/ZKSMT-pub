open Maps
open Ir
open Printf

(* TODO: LEFTOFF, debugging uf5.resolute. *)

(* TODO: we should actually explicitly order the results so the cpp checker
   works. *)
(* TODO: IR distinct *)
(* TODO: revisit cong & trans cases with breakdown. *)
(* TODO: refactor order of matches. *)

exception ResoluteCompileError of string

(* Convert Listified RESOLUTE to IR (with RESOLUTE rules) *)

(* Invariant: if a RESOLUTE command proves {a, b, c}- in which, as per the *)
(* definition of RESOLUTE, no element will occur twice- the translated IR *)
(* command may prove something like (or b c a a): The result will be equal if *)
(* you turn the IR & the RESOLUTE version into sets. In particular, the IR *)
(* version may list its elements in any order, and may include duplicates. *)

(* However, we assume most IR rules, when performing operations on arguments to *)
(* or's and and's, do not care about order: they instead check multiset *)
(* equality, and can "reorder on the fly". *)

let rec turn_expr (e : Resolute.expr) : expr =
  match e with
  | True -> True
  | False -> False
  | Not (e1) -> Not (turn_expr e1)
  | And (elist) -> And (List.map turn_expr elist)
  | Or (elist) -> Or (List.map turn_expr elist)
  | Impl (e1, e2) -> Impl (turn_expr e1, turn_expr e2)
  | Eq (e1, e2) -> Eq (turn_expr e1, turn_expr e2)
  | App (name, elist) -> NaryApp (name, List.map turn_expr elist)
  | Distinct elist -> NaryApp ("distinct", List.map turn_expr elist)
  | Xor elist -> Xor2 (List.map turn_expr elist)
  | Ite (e1, e2, e3) -> Ite (turn_expr e1, turn_expr e2, turn_expr e3)
  | Var name -> Var name
  | Add elist -> Add (List.map turn_expr elist)
  | Sub [] -> raise (ResoluteCompileError "null sub")
  | Sub [e] -> Mul (-1, turn_expr e)
  | Sub (head :: tail) ->
    let add_neg e =
      Mul (-1, turn_expr e) in
    Add (turn_expr head :: List.map add_neg tail)
  | Mul (i, e1) -> Mul (i, turn_expr e1)
  | Lt (e1, e2) -> Lt (turn_expr e1, turn_expr e2)
  | Leq (e1, e2) -> Leq (turn_expr e1, turn_expr e2)
  | Gt (e1, e2) -> Lt (turn_expr e2, turn_expr e1)
  | Geq (e1, e2) -> Leq (turn_expr e2, turn_expr e1)

let turn_lit (l : Resolute.lit) : expr =
  match l with
  | Pos e -> turn_expr e
  | Neg e -> Not (turn_expr e)

let turn_litset (litset : Resolute.LitSet.t) : expr =
  let expr_list =
    litset
    |> Resolute.LitSet.elements
    |> List.map turn_lit in
  Or expr_list

let turn_litset_list (litset : Resolute.LitSet.t) : expr list =
  let expr_list =
    litset
    |> Resolute.LitSet.elements
    |> List.map turn_lit in
  expr_list

(* Version that removes one instance of an element if it exists *)
let rec opt_remove (e : expr) (list : expr list) : expr list =
  match list with
  | [] -> []
  | head :: tail when e=head -> tail
  | head :: tail -> head :: (opt_remove e tail)

(* Runs opt_remove for all elements in a list *)
let rec opt_diff (rm_list : expr list) (list : expr list) : expr list =
  match rm_list with
  | [] -> list
  | head :: tail -> opt_diff tail (opt_remove head list)

(* Version that MUST remove something *)
let rec remove (e : expr) (list : expr list) : expr list =
  match list with
  | [] -> raise (ResoluteCompileError "only duplicates failed")
  | head :: tail when e=head -> tail
  | head :: tail -> head :: (remove e tail)

(* Remove all occurrences of an element *)
let rec maybe_remove (e : expr) (list : expr list) : expr list =
  match list with
  | [] -> []
  | head :: tail when e=head -> maybe_remove e tail
  | head :: tail -> head :: (maybe_remove e tail)

(* Multiset difference. *)
let rec remove_list (start : expr list) (rm : expr list) : expr list =
  match rm with
  | [] -> start
  | head :: tail ->
    remove_list (remove head start) tail

(* Given [a; b; c] and [a; b; a; b; c], returns [a; b] *)
let rec only_duplicates (set : expr list) (multiset : expr list) : expr list =
  match set with
  | [] -> multiset
  | head :: tail ->
    only_duplicates tail (remove head multiset)

let rec rm_dup (multiset : expr list) : expr list =
  match multiset with
  | [] -> []
  | hd :: tail -> hd :: (rm_dup (maybe_remove hd tail))

let appears_once (e : expr) (multiset : expr list) : bool =
  (List.length (List.filter (fun a -> a = e) multiset)) = 1

let str_of_cmd_ref (cr : Resolute.cmd_ref) =
  match cr with
  | Premise name -> sprintf "prem %s" name
  | Derived i -> sprintf "derv %d" i

(* Axioms are fairly simple but need their result explicitly provided to *)
(* prevent the LitSet -> expr list conversion messing up the ordering. *)
let axiom_step (name : string) (result : expr) : cmd list =
  [{
    name = name;
    expr_args = [];
    hyp_args = [];
    result = result;
    backptr = None
  }]

let turn_cmd
    (cmd_result : Resolute.cmd * Resolute.LitSet.t)
    (get_ref : Resolute.cmd_ref -> hyp_ref * Resolute.LitSet.t * expr)
    (cur_idx : int)
  : cmd list =
  let cmd, result = cmd_result in
  match cmd with
  | Res (pivot, cr0, cr1) ->
    let hr0, _arg0, irarg0 = get_ref cr0 in
    let hr1, _arg1, irarg1 = get_ref cr1 in
    (* debugging code *)
    (*
    printf "cur_idx : %d\n" cur_idx;
    printf "pivt : %s\n" (Resolute.str_of_expr pivot);
    printf "arg0 : %s : %s : %s : %s\n"
      (str_of_cmd_ref cr0)
      (str_of_hyp_ref hr0)
      (Resolute.str_of_litset arg0)
      (str_of_expr irarg0);
    printf "arg1 : %s : %s : %s : %s\n"
      (str_of_cmd_ref cr1)
      (str_of_hyp_ref hr1)
      (Resolute.str_of_litset arg1)
      (str_of_expr irarg1);
    print_endline ""; *)

    (* TODO: LEFTOFF: debug *)
    (match irarg0, irarg1 with
     | Or multiset0, Or multiset1 ->
       (* Ensure pos/neg pivot appears once in positive/neg disjunction *)
       let prepare_arg
           (pos_neg_pivot : expr)
           (hr : hyp_ref)
           (expr_list : expr list)
           (proof : cmd list)
         : cmd list * hyp_ref * expr list =
         if appears_once pos_neg_pivot expr_list then
           proof, hr, expr_list
         else
           let no_dup_list = rm_dup expr_list in
           let proof = proof @ [
               {
                 name = "factoring";
                 expr_args = [];
                 hyp_args = [hr];
                 result = Or no_dup_list;
                 backptr = None
               }
             ] in
           proof, (Derived (List.length proof - 1 + cur_idx)), no_dup_list in
       let pivot = turn_expr pivot in
       let proof, hr0, multiset0 =
         prepare_arg pivot hr0 multiset0 [] in
       let proof, hr1, multiset1 =
         prepare_arg (Not pivot) hr1 multiset1 proof
       in

       (* Assemble proper resolution command *)
       (* TODO: could replace with a sorted, minimized version *)
       (*Printf.printf "==\n\n";
       Printf.printf "%s\n" (str_of_expr pivot);
       Printf.printf "\n";
       Printf.printf "%s" (str_of_expr_list (multiset0));
       Printf.printf "\n";
       Printf.printf "%s" (str_of_expr_list (multiset1));
         Printf.printf "\n==\n\n"; *)
       let result_list =
         remove pivot
           (remove (Not pivot)
              (multiset0 @ multiset1)
           ) in
       let witness0 = remove_list (pivot :: result_list) multiset0 in
       let witness1 = remove_list (Not pivot :: result_list) multiset1 in
       let proof = proof @ [
         {
           name = "resolution";
           expr_args = [Not pivot; Or witness0; Or witness1];
           hyp_args = [hr0; hr1];
           result = Or result_list;
           backptr = None
         }
       ] in

       (* There is a corner case where the RESOLUTE proves Or [...; a; b; ...]
          where a and b are not equal in RESOLUTE but ARE equal after
          conversion to IR. In this case it may be important to have the
          converted expression appear twice so a resolution is not missing its
          pivot later on. In this case we add a weaken rule to make sure this
          happens. Note that the phase currently named resolute_lia_compile
          SHOULD remove weaken, but this is unimplemented currently as deadcode
          elimination removes all instances of weaken in the test cases. *)
       let full_resolute_result =
         result
         |> Resolute.LitSet.elements
         |> List.map (turn_lit) in
       let weaken_list = opt_diff result_list full_resolute_result in
       (match weaken_list with
        | [] -> proof
        | _ ->
          let final_result_list = result_list @ weaken_list in
          proof @ [
            {
              name = "weaken";
              expr_args = [];
              hyp_args = [Derived (List.length proof - 1 + cur_idx)];
              result = Or final_result_list;
              backptr = None
            }
          ]
       )
     | _ -> raise (ResoluteCompileError "args to Res are not or's")
    )
  (* Old version of resolution code. *)
  (**(
      match irarg0, irarg1, turn_litset arg0, turn_litset arg1 with
      | Or multiset0, Or multiset1, Or set0, Or set1 ->
        let dup0 = only_duplicates set0 multiset0 in
        let dup1 = only_duplicates set1 multiset1 in

        let result_list = turn_litset_list result in
        let pivot = turn_expr pivot in
        (*
        (* debugging code *)
        Printf.printf "\n";
        Printf.printf "multiset0: %s\n" (str_of_expr_list multiset0);
        Printf.printf "multiset1: %s\n" (str_of_expr_list multiset1);
        Printf.printf "     set0: %s\n" (str_of_expr_list set0);
        Printf.printf "     set1: %s\n" (str_of_expr_list set1);
        Printf.printf "resultlst: %s\n" (str_of_expr_list result_list);
        Printf.printf "    pivot: %s\n" (str_of_expr pivot); *)
        let witness0 = remove_list (pivot :: result_list) set0 in
        let witness1 = remove_list (Not pivot :: result_list) set1 in
        [
          {
            name = "factoring";
            expr_args = [Or dup0];
            hyp_args = [hr0];
            result = Or set0;
            backptr = None
          };
          {
            name = "factoring";
            expr_args = [Or dup1];
            hyp_args = [hr1];
            result = Or set1;
            backptr = None
          };
          {
            name = "resolution";
            (* Use negated version as it makes checking easier! *)
            expr_args = [Not pivot; Or witness0; Or witness1];
            hyp_args = [Derived cur_idx; Derived (cur_idx + 1)];
            result = turn_litset result;
            backptr = None
          }
        ]
      | _ -> raise (ResoluteCompileError "args to Res are not or's")
       ) *)
  | Axiom ("true+", [], []) ->
    axiom_step "true+" (Or [True])
  | Axiom ("false-", [], []) ->
    axiom_step "false-" (Or [Not False])
  | Axiom ("not+", [], [p]) ->
    let p = turn_expr p in
    axiom_step "not+" (Or [Not p; p])
  | Axiom ("not-", [], [p]) ->
    let p = turn_expr p in
    (* This is not a typo! not+ typechecks not- perfectly well. *)
    axiom_step "not+" (Or [Not (Not p); Not p])
  | Axiom ("and+", [], plist) ->
    let plist = List.map turn_expr plist in
    let not_plist = List.map (fun p -> Not p) plist in
    [{
      name = "and+";
      expr_args = [And plist; And (not_plist)];
      hyp_args = [];
      result = Or (And plist :: not_plist);
      backptr = None
    }]
  | Axiom ("and-", [i], elist) ->
    let a = List.nth elist i in
    let a_expr = turn_expr a in
    let elist = List.map turn_expr elist in
    axiom_step "and-" (Or [Not (And elist); a_expr])
  | Axiom ("or+", [i], elist) ->
    let a = List.nth elist i in
    let a_expr = turn_expr a in
    let elist = List.map turn_expr elist in
    axiom_step "or+" (Or [Or elist; Not a_expr])
  | Axiom ("or-", [], plist) ->
    let plist = List.map turn_expr plist in
    [{
      name = "or-";
      (* Use negated version as it makes checking easier! *)
      expr_args = [Not (Or plist)];
      hyp_args = [];
      result = Or ((Not (Or plist)) :: plist);
      backptr = None
    }]
  | Axiom("=>+", [0], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=>+1" (Or [Impl (p0, p1); p0])
  | Axiom("=>+", [1], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=>+2" (Or [Impl (p0, p1); Not p1])
  | Axiom ("=>+", _, _) ->
    raise (ResoluteCompileError "bad arg for =>+")
  | Axiom ("=>-", [], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=>-" (Or [Not (Impl (p0, p1)); Not p0; p1])
  | Axiom ("=+1", [], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=+1" (Or [Eq (p0, p1); p0; p1])
  | Axiom ("=+2", [], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=+2" (Or [Eq (p0, p1); Not p0; Not p1])
  | Axiom ("=-1", [], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=-1" (Or [Not (Eq (p0, p1)); p0; Not p1])
  | Axiom ("=-2", [], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "=-2" (Or [Not (Eq (p0, p1)); Not p0; p1])
  | Axiom ("xor+", [], [p0; p1; p2]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    let p2 = turn_expr p2 in
    axiom_step "xor+" (Or [p0; p1; Not p2])
  | Axiom ("xor-", [], [p0; p1; p2]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    let p2 = turn_expr p2 in
    axiom_step "xor-" (Or [Not p0; Not p1; Not p2])
  | Axiom ("ite1", [], [e1; e2; e3]) ->
    let e1 = turn_expr e1 in
    let e2 = turn_expr e2 in
    let e3 = turn_expr e3 in
    axiom_step "ite1" (Or [Eq (Ite (e1, e2, e3), e2); Not e1])
  | Axiom ("ite2", [], [e1; e2; e3]) ->
    let e1 = turn_expr e1 in
    let e2 = turn_expr e2 in
    let e3 = turn_expr e3 in
    axiom_step "ite2" (Or [Eq (Ite (e1, e2, e3), e3); e1])
  | Axiom ("refl", [], [p0]) ->
    let p0 = turn_expr p0 in
    axiom_step "refl" (Or [Eq (p0, p0)])
  | Axiom ("symm", [], [p0; p1]) ->
    let p0 = turn_expr p0 in
    let p1 = turn_expr p1 in
    axiom_step "symm" (Or [Eq (p0, p1); Not (Eq (p1, p0))])
  | Axiom ("trans", [], [t0; t1; t2]) ->
    let t0 = turn_expr t0 in
    let t1 = turn_expr t1 in
    let t2 = turn_expr t2 in
    axiom_step "trans" (Or [Eq (t0, t2); Not (Eq (t0, t1)); Not (Eq (t1, t2))])
  | Axiom ("cong", [], [App (f, alist); App (f2, blist)]) when f=f2 ->
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let eq_list = List.map2 (fun a b -> Not (Eq (a, b))) alist blist in
    [{
      name = "cong";
      expr_args = [];
      hyp_args = [];
      result = Or (
          (Eq (NaryApp (f, alist), NaryApp (f, blist)))
          :: eq_list
        );
      backptr = None
    }]
    (* TODO: old version, remove
  (* TODO: ensure correct ordering *)
  | Axiom ("cong", [i], [b; App (f, alist)]) ->
    let alist = List.map turn_expr alist in
    let new_list =
      List.mapi (fun j a -> if j=i then turn_expr b else a) alist in
    let a = List.nth alist i in
    [{
      name = "cong";
      expr_args = [Num i];
      hyp_args = [];
      result = Or [
          (Eq (NaryApp (f, alist), NaryApp (f, new_list)));
          Not (Eq (a, turn_expr b))
        ];
      backptr = None
       }] *)
  | Axiom ("distinct-", [i1; i2], elist) ->
    let a = List.nth elist i1 in
    let b = List.nth elist i2 in
    let a_expr = turn_expr a in
    let b_expr = turn_expr b in
    [{
      name = "distinct-";
      expr_args = [a_expr; b_expr];
      hyp_args = [];
      result = turn_litset result;
      backptr = None
    }]
  | Axiom ("poly+", [], [a; b]) ->
    let a = turn_expr a in
    let b = turn_expr b in
    [{
      name = "poly+";
      expr_args = [a; b];
      hyp_args = [];
      result = turn_litset result;
      backptr = None
    }]
  | Axiom ("poly*", [], [a; b]) ->
    let a = turn_expr a in
    let b = turn_expr b in
    [{
      name = "poly*";
      expr_args = [a; b];
      hyp_args = [];
      result = turn_litset result;
      backptr = None
    }]
  | Axiom ("farkas", ilist, elist) ->
    let expr_arglist =
      ilist
      |> List.map (fun i -> Mul (i, Var Resolute.const_varname)) in
    let a = Add expr_arglist in
    let result = Or (
        elist
        |> List.map (fun eq -> Not (turn_expr eq))
      ) in
    [{
      name = "farkas";
      expr_args = [a];
      hyp_args = [];
      result = result;
      backptr = None
    }]
  | Axiom ("total", [], [a; b]) ->
    let a = turn_expr a in
    let b = turn_expr b in
    [{
      name = "total";
      expr_args = [];
      hyp_args = [];
      result = Or [Leq (a, b); Lt (b, a)];
      backptr = None
    }]
  | Axiom ("total-int", [], [a; Mul (i, Var const)])
    when const=Resolute.const_varname ->
    let plus_one = Mul (i+1, Var const) in
    let plus_zero = Mul (i, Var const) in
    let a = turn_expr a in
    [{
      name = "total-int";
      expr_args = [a; Mul (i, Var const)];
      hyp_args = [];
      result = Or [Leq (a, plus_zero); Leq (plus_one, a)];
      backptr = None
    }]
  | Axiom ("trichotomy", [], [e1; e2]) ->
    let e1 = turn_expr e1 in
    let e2 = turn_expr e2 in
    axiom_step "trichotomy" (Or [Lt (e1, e2); Eq (e1, e2); Lt (e2, e1)])
  | Axiom ("-def", [], _) ->
    axiom_step "-def" (turn_litset result)
  | Axiom (">def", [], [e1; e2]) ->
    let e1 = turn_expr e1 in
    let e2 = turn_expr e2 in
    axiom_step ">def" (Or [Eq (Lt (e2, e1), Lt (e2, e1))])
  | Axiom (">=def", [], [e1; e2]) ->
    let e1 = turn_expr e1 in
    let e2 = turn_expr e2 in
    axiom_step ">=def" (Or [Eq (Leq (e2, e1), Leq (e2, e1))])
  | Axiom ("-cong", _, [Sub alist; Sub blist]) ->
    let neg_alist = turn_expr (Sub alist) in
    let neg_blist = turn_expr (Sub blist) in
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let eq_list =
      List.map2 (fun a b -> Not (Eq (a, b))) alist blist in
    [{
      name = "-cong";
      expr_args = [];
      hyp_args = [];
      result = Or (
          Eq (neg_alist, neg_blist) ::
          eq_list
        );
      backptr = None
    }]
  | Axiom ("cong", _, [Add alist; Add blist]) ->
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let eq_list =
      List.map2 (fun a b -> Not (Eq (a, b))) alist blist in
    [{
      name = "nary_cong";
      expr_args = [];
      hyp_args = [];
      result = Or (
          Eq (Add alist, Add blist) ::
          eq_list
        );
      backptr = None
    }]
  | Axiom ("cong", _, [Or alist; Or blist]) ->
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let eq_list =
      List.map2 (fun a b -> Not (Eq (a, b))) alist blist in
    [{
      name = "nary_cong";
      expr_args = [];
      hyp_args = [];
      result = Or (
          Eq (Or alist, Or blist) ::
          eq_list
        );
      backptr = None
    }]
  | Axiom ("cong", _, [And alist; And blist]) ->
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let eq_list =
      List.map2 (fun a b -> Not (Eq (a, b))) alist blist in
    [{
      name = "nary_cong";
      expr_args = [];
      hyp_args = [];
      result = Or (
          Eq (And alist, And blist) ::
          eq_list
        );
      backptr = None
    }]
  | Axiom ("cong", _, [Xor alist; Xor blist]) ->
    let alist = List.map turn_expr alist in
    let blist = List.map turn_expr blist in
    let eq_list =
      List.map2 (fun a b -> Not (Eq (a, b))) alist blist in
    [{
      name = "nary_cong";
      expr_args = [];
      hyp_args = [];
      result = Or (
          Eq (Xor2 alist, Xor2 blist) ::
          eq_list
        );
      backptr = None
    }]
  | Axiom ("cong", _, [Mul (i1, a); Mul (i2, b)]) ->
    let a = turn_expr a in
    let b = turn_expr b in
    [{
      name = "temp_mul_cong";
      expr_args = [Mul (i1, a); Mul (i2, b)];
      hyp_args = [];
      result = Or [
          Eq (Mul (i1, a), Mul (i2, b));
          Not (Eq (Mul (i1, Var Resolute.const_varname), Mul (i2, Var Resolute.const_varname)));
          Not (Eq (a, b))
        ];
      backptr = None
    }]
  | Axiom ("cong", _, [Impl (a1, a2); Impl (b1, b2)]) ->
    let a1 = turn_expr a1 in
    let a2 = turn_expr a2 in
    let b1 = turn_expr b1 in
    let b2 = turn_expr b2 in
    [{
      name = "binop_cong";
      expr_args = [];
      hyp_args = [];
      result = Or [
          Eq (Impl (a1, a2), Impl (b1, b2));
          Not (Eq (a1, b1));
          Not (Eq (a2, b2))
        ];
      backptr = None
    }]
  | Axiom ("cong", _, [Ite (a1, a2, a3); Ite (b1, b2, b3)]) ->
    let a1 = turn_expr a1 in
    let a2 = turn_expr a2 in
    let a3 = turn_expr a3 in
    let b1 = turn_expr b1 in
    let b2 = turn_expr b2 in
    let b3 = turn_expr b3 in
    [{
      name = "cong-ite";
      expr_args = [];
      hyp_args = [];
      result = Or [
          Eq (Ite (a1, a2, a3), Ite (b1, b2, b3));
          Not (Eq (a1, b1));
          Not (Eq (a2, b2));
          Not (Eq (a3, b3))
        ];
      backptr = None
    }]
  | Axiom ("cong", _, [Eq (a1, a2); Eq (b1, b2)]) ->
    let a1 = turn_expr a1 in
    let a2 = turn_expr a2 in
    let b1 = turn_expr b1 in
    let b2 = turn_expr b2 in
    [{
      name = "binop_cong";
      expr_args = [];
      hyp_args = [];
      result = Or [
          Eq (Eq (a1, a2), Eq (b1, b2));
          Not (Eq (a1, b1));
          Not (Eq (a2, b2))
        ];
      backptr = None
    }]
  | Axiom ("cong", _, [Lt (a1, a2); Lt (b1, b2)]) ->
    let a1 = turn_expr a1 in
    let a2 = turn_expr a2 in
    let b1 = turn_expr b1 in
    let b2 = turn_expr b2 in
    [{
      name = "binop_cong";
      expr_args = [];
      hyp_args = [];
      result = Or [
          Eq (Lt (a1, a2), Lt (b1, b2));
          Not (Eq (a1, b1));
          Not (Eq (a2, b2))
        ];
      backptr = None
    }]
  | Axiom ("cong", _, [Leq (a1, a2); Leq (b1, b2)]) ->
    let a1 = turn_expr a1 in
    let a2 = turn_expr a2 in
    let b1 = turn_expr b1 in
    let b2 = turn_expr b2 in
    [{
      name = "binop_cong";
      expr_args = [];
      hyp_args = [];
      result = Or [
          Eq (Leq (a1, a2), Leq (b1, b2));
          Not (Eq (a1, b1));
          Not (Eq (a2, b2))
        ];
      backptr = None
    }]
  | Axiom ("cong", _, [Not a; Not b]) ->
    let a = turn_expr a in
    let b = turn_expr b in
    [{
      name = "not_cong";
      expr_args = [];
      hyp_args = [];
      result = Or [
          Eq (Not a, Not b);
          Not (Eq (a, b));
        ];
      backptr = None
    }]
  | Axiom ("trust", [], _) ->
    [{
      name = "trust";
      expr_args = [];
      hyp_args = [];
      result = turn_litset result;
      backptr = None
    }]
  | Axiom (name, _, elist) ->
    elist
    |> List.map Resolute.str_of_expr
    |> String.concat "\n"
    |> print_endline;
    let msg = sprintf "unrecognized axiom %s" name in
    raise (ResoluteCompileError msg)

let rec turn_cmdlist
  (prog : Resolute.prog)
  (cmd_list : cmd Elist.t)
  (orig_idx : int)
  (map_ref : (hyp_ref * Resolute.LitSet.t * expr) IntMap.t)
  (to_convert : (Resolute.cmd * Resolute.LitSet.t) list)
  : cmd Elist.t =
  match to_convert with
  | [] -> cmd_list
  | head :: tail ->
    let cur_idx = Elist.length cmd_list in
    let get_ref (cr : Resolute.cmd_ref) : hyp_ref * Resolute.LitSet.t * expr =
      match cr with
      | Premise name ->
        let res_e = StrMap.find name prog.premises in
        let e = turn_expr res_e in
        (* TODO: this should maybe have a singleton? *)
        Premise name, Resolute.LitSet.singleton (Pos res_e), Or [e]
      | Derived i ->
        (match IntMap.find_opt i map_ref with
         | Some hr_res_e -> hr_res_e
         | None -> raise (ResoluteCompileError (sprintf "could not find ref %d" i))
        ) in
    let new_cmd_list = turn_cmd head get_ref cur_idx in
    let cmd_list = Elist.rev_app cmd_list new_cmd_list in
    let new_cur_idx = Elist.length cmd_list in
    let get_litset = snd head in
    let get_expr = (Elist.nth cmd_list (Elist.length cmd_list - 1)).result in
    let map_ref = IntMap.add orig_idx (Derived (new_cur_idx - 1), get_litset, get_expr) map_ref in
    turn_cmdlist prog cmd_list (orig_idx + 1) map_ref tail

(* Add or_single to ensure premises are available as singleton or's. *)

(* Premise references become references to the or_single instance of the premise. *)
(* Derived references are shifted prem_len up since we added prem_len rules. *)
let move_hyp_ref
    (prem_map : int StrMap.t)
    (prem_len : int)
    (hyp_ref : hyp_ref) : hyp_ref =
  match hyp_ref with
  | Premise s -> Derived (StrMap.find s prem_map)
  | Derived i -> Derived (i+prem_len)

let move_cmd
  (prem_map : int StrMap.t)
  (prem_len : int)
  (cmd : cmd) : cmd =
  let hyp_args = List.map (move_hyp_ref prem_map prem_len) cmd.hyp_args in
  {cmd with hyp_args}

let prem_single_cmd (sie : string * int * expr) : cmd =
  let s, _i, expr = sie in
  {
    name = "or_single";
    expr_args = [];
    hyp_args = [Premise s];
    result = Or [expr];
    backptr = None
  }

(* Insert rules converting premises from a to (or a), and shift the rest of the *)
(* program accordingly. *)
let prem_shift (prog : Ir.prog) : Ir.prog =
  let prem_list =
    prog.premises
    |> StrMap.bindings
    |> List.mapi (fun i (s, e) -> (s, i, e)) in
  let prem_map =
    prem_list
    |> List.map (fun (s, i, _e) -> s, i)
    |> map_of_bindings in
  let prem_len = List.length prem_list in
  let shifted_cmd_list = List.map (move_cmd prem_map prem_len) prog.cmd_list in

  let prem_cmd_list = List.map prem_single_cmd prem_list in

  let cmd_list = prem_cmd_list @ shifted_cmd_list in
  {prog with cmd_list}

(* Putting everything together *)
let compile (prog : Resolute.prog) (results : Resolute.LitSet.t list) : Ir.prog =
  let to_convert = List.combine prog.cmd_list results in
  let cmd_list = turn_cmdlist prog (Elist.from_list []) 0 IntMap.empty to_convert in

  (* Convert from a proof of (or []) to a proof of false *)
  (if (Elist.nth cmd_list (Elist.length cmd_list - 1)).result <> Or [] then
     raise (ResoluteCompileError "last rule of res_ir is not Or singleton")
  );
  let last_cmd = {
    name = "or_nil";
    expr_args = [];
    hyp_args = [Derived (Elist.length cmd_list - 1)];
    result = False;
    backptr = None
  } in
  let cmd_list = Elist.rev_cons cmd_list last_cmd in

  let prog = {
    vars = prog.vars;
    premises = StrMap.map turn_expr prog.premises;
    cmd_list = Elist.to_list cmd_list
  } in

  prem_shift prog
