open Ir
open Maps

exception ResLiaErr of string

(*
This module goes through the proof one command at a time, finds LIA commands,
and breaks them down into commands which VIPC can check. It follows a number of
conventions and patterns to make coding the breakdown easier.

`compile_cmd` does this for a single command, which is turned into the
equivalent command list. Within this, (Derived i) hyp references are temporarily
negative: instead of (Derived i) referring to step i of the overall proof,
(Derived i) refers to step (-i - 1) of the sequence of commands the current
command is being broken down into.

Most helper functions take a command list (called "proof" or "old") which
represents the portion of the broken-down command list generated so far, and
return that same list with some new commands added to the end to prove something
new of interest. Frequently proofs of results of interested will be assumed to
be located as the result of the final command of the in-progress command list
(either when returned from a function, or in the in-progress command list given
to a function).

`get_end_ref`, `find_local_res` are helper functions to make working with this
easier. `get_base` is a helper to makes it easy to construct local Derived
indices. mk_cmd is a helper to make creating commands shorter.

Resolution requires a pivot as well as 2 witnesses as expression arguments.
Rather than explicitly calculating them, the temporary command "unfinished_res"
is used, and the `finish_res` function takes care of generating witnesses and
turning unfinished_res into normal resolution.

Many proofs depend on proving an arithmetic expression is equal to its
normalized term. `normalize_proof` generates that proof. The normal form is a
sum of terms, where there are no zero terms, no variable appears in 2 terms, all
coefficients are reduced fractions, and terms are lexicographically sorted by
variable name (but constants appear first). The first part of normalization is
`flatten_proof`, which turns the expression into a sum of terms but has no other
constraints.

Everything after `compile_cmd` takes care of integrating the local result of
breaking down a single command into the overall proof, and iterating through all
commands. *)

(* TODO CMUL: this is not setup to allow normalization with other theories. *)
(* To see locations that would need to be changed, search OTHERTHEORY *)

let mk_cmd
    (name : string)
    (expr_args : expr list)
    (hyp_args : hyp_ref list)
    (result : expr)
    : cmd =
  {name; expr_args; hyp_args; result; backptr = None}

let get_end_ref (list : 'a Elist.t) : hyp_ref = Derived (- (Elist.length list))
let get_base (list : 'a Elist.t) : int = - (Elist.length list)

let find_local_res (hr : hyp_ref) (proof : cmd Elist.t) : expr =
  match hr with
  | Derived i when i<0 ->
    let cmd = Elist.nth proof (-i - 1) in
    cmd.result
  | _ -> raise (ResLiaErr "bad hr in find_local_res")

(* CMUL DELETEME
let neg e = Mul (Ivar (-1, 1, Resolute.const_varname), e)

let neg_one = Ivar (-1, 1, Resolute.const_varname) *)

let rec remove (e : expr) (list : expr list) : expr list =
  match list with
  | [] -> raise (ResLiaErr "remove")
  | head :: tail when e=head -> tail
  | head :: tail -> head :: (remove e tail)

(* Set difference: a - b *)
let rec diff (a : expr list) (b : expr list) : expr list =
  match b with
  | [] -> a
  | head :: tail ->
    diff (remove head a) tail

(* Negate the pivot & find appropriate witnesses. *)
let finish_res_i (proof : cmd Elist.t) (idx : int) (_ : cmd) : cmd =
  let cmd = Elist.nth proof idx in
  match cmd.name, cmd.expr_args, cmd.hyp_args, cmd.result with
  | "unfinished_res", [pivot], [pos_ref; neg_ref], (Or elist) ->

    (*
    Printf.printf "\n%s\n" (str_of_prog {vars = []; premises = StrMap.empty;
                                          cmd_list = proof});
    Printf.printf " pos: %s\n" (str_of_hyp_ref pos_ref);
    Printf.printf " neg: %s\n" (str_of_hyp_ref neg_ref);
                                          Printf.printf " idx: %d\n" idx; *)
    (match find_local_res pos_ref proof, find_local_res (neg_ref) proof with
     | Or poslist, Or neglist ->
       (*
       Printf.printf "pivot : %s\n" (str_of_expr pivot);
       Printf.printf "elist : %s\n" (str_of_expr_list elist);
       Printf.printf "plist : %s\n" (str_of_expr_list poslist);
       Printf.printf "nlist : %s\n" (str_of_expr_list neglist);
*)

       let witness_a = diff (pivot :: elist) poslist in
       let witness_b = diff ((Not pivot) :: elist) neglist in
       {cmd with
        name = "resolution";
        expr_args = [Not pivot; Or witness_a; Or witness_b]
       }
     | _ -> raise (ResLiaErr "unfinished_res bad args")
    )
  | "unfinished_res", _, _, _ -> raise (ResLiaErr "unfinished_res bad res")
  | _ -> cmd

(* Assumes all unfinished have local results. *)
let finish_res (proof : cmd Elist.t) : cmd Elist.t =
  (**Elist.mapi (finish_res_i proof) proof*) proof

(* Negate the pivot & find appropriate witnesses. *)
let true_finish_res_i (proof : cmd Elist.t) (idx : int) (_ : cmd) : cmd =
  let cmd = Elist.nth proof idx in
  match cmd.name, cmd.expr_args, cmd.hyp_args, cmd.result with
  | "unfinished_res", [pivot], [pos_ref; neg_ref], (Or elist) ->

    (*
    Printf.printf "\n%s\n" (str_of_prog {vars = []; premises = StrMap.empty;
                                          cmd_list = proof});
    Printf.printf " pos: %s\n" (str_of_hyp_ref pos_ref);
    Printf.printf " neg: %s\n" (str_of_hyp_ref neg_ref);
                                          Printf.printf " idx: %d\n" idx; *)
    let find_abs_res (hr : hyp_ref) (proof : cmd Elist.t) : expr =
      match hr with
      | Derived i ->
        let cmd = Elist.nth proof i in
        cmd.result
      | _ -> raise (ResLiaErr "bad hr in find_abs_res") in
    (match
       find_abs_res pos_ref proof,
       find_abs_res (neg_ref) proof
     with
     | Or poslist, Or neglist ->
       (*
       Printf.printf "pivot : %s\n" (str_of_expr pivot);
       Printf.printf "elist : %s\n" (str_of_expr_list elist);
       Printf.printf "plist : %s\n" (str_of_expr_list poslist);
       Printf.printf "nlist : %s\n" (str_of_expr_list neglist);
*)

       let witness_a = diff (pivot :: elist) poslist in
       let witness_b = diff ((Not pivot) :: elist) neglist in
       {cmd with
        name = "resolution";
        expr_args = [Not pivot; Or witness_a; Or witness_b]
       }
     | _ -> raise (ResLiaErr "unfinished_res bad args")
    )
  | "unfinished_res", _, _, _ -> raise (ResLiaErr "unfinished_res bad res")
  | _ -> cmd

(* Assumes all unfinished have local results. *)
let true_finish_res (proof : cmd Elist.t) : cmd Elist.t =
  Elist.mapi (true_finish_res_i proof) proof

let symm_proof (a_eq_b_ref : hyp_ref) (old : cmd Elist.t) : cmd Elist.t =
  let a, b =
    match find_local_res a_eq_b_ref old with
    | Eq (a, b) -> a, b
    | _ -> raise (ResLiaErr "ill-formed symm_proof arg") in
  let base = get_base old in
  let proof =
    Elist.rev_app old [
      {
        name = "or_single";
        expr_args = [];
        hyp_args = [a_eq_b_ref];
        result = Or [Eq (a, b)];
        backptr = None
      };
      {
        name = "symm";
        expr_args = [];
        hyp_args = [];
        result = Or [Eq (b, a); Not (Eq (a, b))];
        backptr = None
      };
      {
        name = "unfinished_res";
        expr_args = [Eq (a, b)];
        hyp_args = [Derived (base - 1); Derived (base - 2)];
        result = Or [Eq (b, a)];
        backptr = None
      };
      {
        name = "or_single_rev";
        expr_args = [];
        hyp_args = [Derived (base - 3)];
        result = Eq (b, a);
        backptr = None
      }
    ] in
  finish_res proof

let trans_proof
    (a_eq_b_ref : hyp_ref)
    (b_eq_c_ref : hyp_ref)
    (old : cmd Elist.t)
  : cmd Elist.t =
  let a, b, c =
    match find_local_res a_eq_b_ref old, find_local_res b_eq_c_ref old with
    | Eq (a, b1), Eq (b2, c) when b1=b2 -> a, b1, c
    | _ -> raise (ResLiaErr "ill-formed trans_proof args") in
  let base = get_base old in
  let proof = Elist.rev_app old [
      mk_cmd "or_single" [] [a_eq_b_ref] (Or [Eq (a, b)]);
      mk_cmd "or_single" [] [b_eq_c_ref] (Or [Eq (b, c)]);
      mk_cmd "trans" [] [] (Or [Eq (a, c); Not (Eq (a, b)); Not (Eq (b, c))]);
      mk_cmd "unfinished_res" [Eq (a, b)]
        [Derived (base - 1); Derived (base - 3)]
        (Or [Eq (a, c); Not (Eq (b, c))]);
      mk_cmd "unfinished_res" [Eq (b, c)]
        [Derived (base - 2); Derived (base - 4)]
        (Or [Eq (a, c)]);
      mk_cmd "or_single_rev" [] [Derived (base - 5)] (Eq (a, c))
    ] in
  finish_res proof

let single_to_or_proof (single_ref : hyp_ref) (old : cmd Elist.t) : cmd Elist.t =
  let res = find_local_res single_ref old in
  Elist.rev_app old [
    {
      name = "or_single";
      expr_args = [];
      hyp_args = [single_ref];
      result = Or [res];
      backptr = None
    }
  ]

let or_to_single_proof (or_ref : hyp_ref) (old : cmd Elist.t) : cmd Elist.t =
  match find_local_res or_ref old with
  | Or [res] ->
    Elist.rev_app old [mk_cmd "or_single_rev" [] [or_ref] res]
  | _ -> raise (ResLiaErr "or_to_single_proof bad arg")

let rewrite_leq
    (prev : hyp_ref)
    (a1_eq_b1_or : hyp_ref)
    (a2_eq_b2_or : hyp_ref)
    (idx : int)
    (old : cmd Elist.t)
   : cmd Elist.t =
  match find_local_res a1_eq_b1_or old,
        find_local_res a2_eq_b2_or old,
        find_local_res prev old
  with
  | Or [Eq (a1, b1)], Or [Eq (a2, b2)], Or elist ->
    let final =
      List.mapi (fun i e ->
          if i = idx then
            Leq (b1, b2)
          else
            e
        ) elist in
    let base = get_base old in
    let old = finish_res old in
    let proof =
      Elist.rev_app old [
        mk_cmd "binop_cong" [] []
          (Or [
              Eq (Leq (a1, a2), Leq (b1, b2));
              Not (Eq (a1, b1));
              Not (Eq (a2, b2))
            ]
          );
        mk_cmd "unfinished_res" [Eq (a1, b1)]
          [a1_eq_b1_or; Derived (base - 1)]
          (Or [
              Eq (Leq (a1, a2), Leq (b1, b2));
              Not (Eq (a2, b2))
            ]
          );
        mk_cmd "unfinished_res" [Eq (a2, b2)]
          [a2_eq_b2_or; Derived (base - 2)]
          (Or [
              Eq (Leq (a1, a2), Leq (b1, b2));
            ]
          );
        mk_cmd "=-2" [] []
          (Or [
              Not (Eq (Leq (a1, a2), Leq (b1, b2)));
              Not (Leq (a1, a2));
              (Leq (b1, b2))
            ]);
        mk_cmd "unfinished_res" [Eq (Leq (a1, a2), Leq (b1, b2))]
          [Derived (base - 3); Derived (base - 4)]
          (Or [
              Not (Leq (a1, a2));
              (Leq (b1, b2))
            ]);
        mk_cmd "unfinished_res" [Leq (a1, a2)]
          [prev; Derived (base - 5)]
          (Or final)
      ] in
    finish_res proof
  | _ -> raise (ResLiaErr "rewrite_leq ill-formed")

let rec fold_proof
    (f : 'a -> cmd Elist.t -> cmd Elist.t)
    (proof : cmd Elist.t)
    (arglist : 'a list)
    : cmd Elist.t * hyp_ref list =
  match arglist with
  | [] -> proof, []
  | head :: tail ->
    let proof = f head proof in
    let hr = get_end_ref proof in
    let proof, hr_list = fold_proof f proof tail in
    proof, hr :: hr_list

let rec rm_first (elt : 'a) (list : 'a list) : 'a list =
  match list with
  | [] -> []
  | hd :: tail when hd=elt -> tail
  | hd :: tail -> hd :: rm_first elt tail

(* cong looks like (or a (not b) (not c) (not d)) *)
(* hr looks like [(or b); (or c); (or d)] *)
(* returns a proof of (or a) *)
let rec rm_ref
    (proof : cmd Elist.t)
    (hr_list : hyp_ref list)
    (cong : hyp_ref) : cmd Elist.t =
  match hr_list with
  | [] -> finish_res proof
  | head :: tail ->
    (match find_local_res head proof, find_local_res cong proof with
     | Or [pivot], Or elist ->
       let res = Or (rm_first (Not pivot) elist) in
       let proof = Elist.rev_app proof [
           mk_cmd "unfinished_res" [pivot] [head; cong] res
         ] in
       rm_ref proof tail (get_end_ref proof)
     | _ -> raise (ResLiaErr "rm_ref")
    )

let rec concat_sum_proof_rec
  (orig_ni : expr list)
  (to_concat : expr list)
  (old : cmd Elist.t) : cmd Elist.t =
  match to_concat with
  | [] -> old
  | (Add inner_inner) :: tail ->
    let new_orig_ni = orig_ni @ inner_inner in
    let a_eq_b_ref = get_end_ref old in
    let proof =
      Elist.rev_app old [
        mk_cmd "flatten" [Add (orig_ni @ tail); Add [Add inner_inner]] []
          (Eq (Add (orig_ni @ to_concat), Add (new_orig_ni @ tail)))
      ] in
    let proof = trans_proof a_eq_b_ref (get_end_ref proof) proof in
    concat_sum_proof_rec new_orig_ni tail proof
  | _ :: _ ->
    raise (ResLiaErr "concat_sum_proof_rec non-sum")

(* elist is a list of sums. Proves its sum equals a flattened version. *)
let concat_sum_proof (elist : expr list) (old : cmd Elist.t) : cmd Elist.t =
  (* NOTE: needs to start with a refl? *)
  let proof =
    Elist.rev_app old [
      mk_cmd "refl" [] [] (Or [Eq (Add elist, Add elist)]);
    ] in
  let proof = or_to_single_proof (get_end_ref proof) proof in
  concat_sum_proof_rec [] elist proof

(* Normalization uses non-arithmetic terms as atomic for its procedure. *)
let is_nonarith e =
  match e with
  | Mul _ -> false
  | Add _ -> false
  | _ -> true

(* Should return a proof with the end_ref as (= e flat_e), where flat_e *)
(* is a sum of multiplications of non-lia exprs. Duplicate terms, 0 coefficients, *)
(* non-reduced fracions ok. *)
let rec flatten_proof (e : expr) (old : cmd Elist.t) : cmd Elist.t =
  match e with
  | Add elist ->
    let singleton_flat (e : expr) (proof : cmd Elist.t) : cmd Elist.t =
      let proof = flatten_proof e proof in
      (match find_local_res (get_end_ref proof) proof with
       | Eq (e2, norm) when e=e2 ->
         Elist.rev_app proof [
           mk_cmd "or_single" [] [get_end_ref proof] (Or [Eq (e, norm)])]
       | _ -> raise (ResLiaErr "bad match, singleton_flat")
      ) in
    (* hr_list[i] is a proof that (or (elist[i]=normalize(elist[i]))) *)
    let proof, hr_list =
      fold_proof singleton_flat old elist in
    let flat_list =
      hr_list
      |> List.map (fun hr ->
          match find_local_res hr proof with
          | Or [Eq (_, flat)] -> flat
          | _ -> raise (ResLiaErr "err, flatten add")
        ) in
    let neq_list =
      List.map2 (fun e n -> Not (Eq (e, n))) elist flat_list in
    let proof = Elist.rev_app proof [{
        name = "sum_cong";
        expr_args = [];
        hyp_args = [];
        result = Or (
            (Eq (Add elist, Add flat_list)) ::
            neq_list
          );
        backptr = None
      }] in
    let cong_ref = get_end_ref proof in
    let proof = rm_ref proof hr_list cong_ref in
    let proof = or_to_single_proof (get_end_ref proof) proof in
    let orig_eq_depth2_ref = get_end_ref proof in
    let proof = concat_sum_proof flat_list proof in
    (* (* Old flatten rule *)
    let get_tm_list (e : expr) =
      match e with
      (*
      | Ivar _ -> [e] *)
      | Add elist -> elist
      | _ -> raise (ResLiaErr "get_tm_list error") in
    let final_list =
      flat_list
      |> List.map get_tm_list
      |> List.flatten in
    let proof = proof @ [
        mk_cmd "flatten" [] [] (Eq (Add flat_list, Add final_list))
      ] in *)
    let depth2_eq_final_ref = get_end_ref proof in
    trans_proof orig_eq_depth2_ref depth2_eq_final_ref proof
  | Mul (n1, e) when is_nonarith e = true ->
      let proof = Elist.rev_app old [
          mk_cmd "add_single" [] []
            (Eq (Add [Mul (n1, e)], Mul (n1, e)))
        ] in
      let proof = symm_proof (get_end_ref proof) proof in
      proof
  | Mul (n1, e) ->
      let proof = flatten_proof e old in
      let norm =
        match find_local_res (get_end_ref proof) proof with
        | Eq (e2, norm) when e=e2 -> norm
        | _ -> raise (ResLiaErr "rec call flatten mul") in
      let scale_term e =
        match e with
        | Mul (n2, e) -> Mul (n1*n2, e)
        | _ -> raise (ResLiaErr "flatten mul non-term") in
      let final_ans =
        match norm with
        | Add elist ->
          Add (List.map scale_term elist)
        | _ -> raise (ResLiaErr "flatten mul non-add") in
      let a_base = get_base proof in
      let proof = Elist.rev_app proof [
          mk_cmd "or_single" [] [Derived a_base] (Or [Eq (e, norm)]);

          mk_cmd "mul_cong" [] []
            (Or
               [
                 Eq (Mul (n1, e), Mul (n1, norm));
                 Not (Eq (e, norm))
               ]
            );
          mk_cmd "unfinished_res" [Eq (e, norm)]
            [Derived (a_base-1); Derived (a_base-2)]
            (Or [
                Eq (Mul (n1, e), Mul (n1, norm))
              ]);
          mk_cmd "or_single_rev" [] [Derived (a_base-3)]
            (Eq (Mul (n1, e), Mul (n1, norm)));
          mk_cmd "multiply" [] []
            (Eq (Mul (n1, norm), final_ans));

          (* TODO CMUL DELETEME
             mk_cmd "refl" [] [] (Or [Eq (Ivar (n1, d1, c), Ivar (n1, d1, c))]);
             mk_cmd "binop_cong" [] []
             (Or
              [
                Eq (Mul (Ivar (n1, d1, c), e), Mul (Ivar (n1, d1, c), norm));
                Not (Eq (Ivar (n1, d1, c), Ivar (n1, d1, c)));
                Not (Eq (e, norm))
              ]
             );
             mk_cmd "unfinished_res" [Eq (Ivar (n1, d1, c), Ivar (n1, d1, c))]
             [Derived (a_base-2); Derived (a_base-3)]
             (Or [
                Eq (Mul (Ivar (n1, d1, c), e), Mul (Ivar (n1, d1, c), norm));
                Not (Eq (e, norm))
              ])
             ;
             mk_cmd "unfinished_res" [Eq (e, norm)]
             [Derived (a_base-1); Derived (a_base-4)]
             (Or [
                Eq (Mul (Ivar (n1, d1, c), e), Mul (Ivar (n1, d1, c), norm));
              ]);
             mk_cmd "or_single_rev" [] [Derived (a_base-5)]
             (Eq (Mul (Ivar (n1, d1, c), e), Mul (Ivar (n1, d1, c), norm)));
             mk_cmd "multiply" [] []
             (Eq (Mul (Ivar (n1, d1, c), norm), final_ans)); *)
        ] in
      trans_proof (Derived (a_base-4)) (Derived (a_base-5)) proof
  | _ ->
    let proof = Elist.rev_app old [
        mk_cmd "mul_single" [] []
          (Eq (Mul (1, e), e))
      ] in
    let mulv_eq_v_ref = get_end_ref proof in
    let proof = Elist.rev_app proof [
        mk_cmd "add_single" [] []
          (Eq (Add [Mul (1, e)], Mul (1, e)))
      ] in
    let mulv_eq_addmulv_ref = get_end_ref proof in
    let proof = trans_proof mulv_eq_addmulv_ref mulv_eq_v_ref proof in
    let proof = symm_proof (get_end_ref proof) proof in
    proof

(* elist: list of terms which has been sorted before index `idx` *)
(* to_consolidate: list of consolidated terms which still need to appear in *)
(*  final expr *)
(* Assumes get_end_ref is the previous proof. *)
let rec sort_proof_rec
    (elist : expr list)
    (to_consolidate : expr list)
    (idx : int)
    (proof : cmd Elist.t)
    : cmd Elist.t =
  match to_consolidate with
  | [] ->
    proof
  | Mul (n, atom) :: tail when is_nonarith atom = true ->
    let has_diff_var e =
      match e with
      | Mul (_, atom2) when is_nonarith atom2 = true && atom=atom2 -> false
      | Mul (_, atom2) when is_nonarith atom2 = true -> true
      | _ -> raise (ResLiaErr "has_same_var") in
    let rm_elist =
      elist
      |> List.filter has_diff_var in
    let new_elist =
      if n = 0 then
        rm_elist
      else
        (Mul (n, atom)) :: rm_elist in
    (*
    let new_elist =
      List.init (List.length rm_elist + 1) (fun i ->
          if i < idx then (List.nth rm_elist i)
          else if i = idx then (Ivar (n, d, v))
          else (List.nth rm_elist (i-1))
        ) in *)
    let a_eq_b = get_end_ref proof in
    (* (* Old version of consolidate rule *)
    let proof = proof @ [
        mk_cmd "consolidate" [Ivar (n, d, v)] []
          (Eq (Add elist, Add new_elist))
      ] in *)
    let a_varlist =
      elist
      |> List.filter (fun e -> not (has_diff_var e)) in
    let b_varlist =
      if n = 0 then
        []
      else
        [Mul (n, atom)] in
    let proof = Elist.rev_app proof [
        mk_cmd "consolidate"
          [Add rm_elist; Add a_varlist; Add b_varlist]
          []
          (Eq (Add elist, Add new_elist))
      ] in
    let proof = trans_proof a_eq_b (get_end_ref proof) proof in
    sort_proof_rec new_elist tail (idx+1) proof
  | _ -> raise (ResLiaErr "sort_proof_rec bad term")

(* TODO: CMUL DELETEME *)
(*
let rec gcd a b =
  if b = 0 then a else gcd b (a mod b)

let reduce_fraction (n, d) : int * int =
  if d = 0 then
    raise (ResLiaErr "zero fraction")
  else if n = 0 then
    (0, 1)
  else
    let sign = (abs n / n) * (abs d / d) in
    let n = abs n in
    let d = abs d in
    let divisor = gcd n d in
    (sign * n / divisor, d / divisor)

let rec sum_fractions
    (sum : (int * int))
    (frac_list : (int * int) list)
  : (int * int) =
  match frac_list with
  | [] -> reduce_fraction sum
  | (n1, d1) :: tail ->
    let n2, d2 = sum in
    let sum = reduce_fraction (n1*d2 + n2*d1, d1*d2) in
    sum_fractions sum tail *)

let rec sum
  (sum_val : int)
  (list : int list)
  : int =
  match list with
  | [] -> sum_val
  | head :: tail ->
    let sum_val = sum_val + head in
    sum sum_val tail

module Expr = struct
  type t = expr
  let compare = compare
end

module ExprMap = Map.Make(Expr)

(* TODO: this & rec don't account for removing zerod-out coefficients *)
let sort_proof (elist : expr list) (old : cmd Elist.t) : cmd Elist.t =
  let add_tm (map : (int list) ExprMap.t) (e : expr) =
    match e with
    | Mul (n, atom) when is_nonarith atom = true ->
      (match ExprMap.find_opt atom map with
       | Some list -> ExprMap.add atom (n :: list) map
       | None -> ExprMap.add atom [n] map
      )
    | _ -> raise (ResLiaErr "sort_proof add_tm non-term") in
  let map = List.fold_left add_tm ExprMap.empty elist in
  let map = ExprMap.map (sum 0) map in
  (* Used to specially sort constants out front. *)
  let const_list =
    match ExprMap.find_opt (Var Resolute.const_varname) map with
    | Some n -> [Mul (n, Var Resolute.const_varname)]
    | None -> [] in
  let var_list =
    map
    |> ExprMap.remove (Var Resolute.const_varname)
    |> ExprMap.bindings
    |> List.map (fun (atom, n) -> Mul (n, atom)) in
  let sorted_exprlist = const_list @ var_list in
  let base = get_base old in
  let proof =
    Elist.rev_app old [
      mk_cmd "refl" [] [] (Or [Eq (Add elist, Add elist)]);
      mk_cmd "or_single_rev" []
        [Derived (base - 1)]
        (Eq (Add elist, Add elist))
    ] in
  sort_proof_rec elist sorted_exprlist 0 proof

(* Returns a cmd list proving (e = norm) where norm is normalized form of e. *)
let normalize_proof (e : expr) (old : cmd Elist.t) : cmd Elist.t =
  let proof = flatten_proof e old in
  let e_eq_flat_ref = get_end_ref proof in
  (match find_local_res e_eq_flat_ref proof with
   | Eq (e2, Add elist) when e=e2 ->
     let proof = sort_proof elist proof in
     let flat_eq_norm_ref = get_end_ref proof in
     let proof = finish_res proof in
     let ans = trans_proof e_eq_flat_ref flat_eq_norm_ref proof in
     ans
   | Eq _ -> raise (ResLiaErr "normalize_proof bad eq")
   | _ -> raise (ResLiaErr "normalize_proof non-eq")
  )

let normalize_expr (e : expr) : expr =
  (* Cheat by creating a normalization proof and checking the result. *)
  let proof = normalize_proof e (Elist.from_list []) in
  match find_local_res (get_end_ref proof) proof with
  | Eq (e2, norm) when e=e2 ->
    norm
  | Eq _ -> raise (ResLiaErr "normalize_expr result not e")
  | _ -> raise (ResLiaErr "normalize_expr result not eq")

(*
let negcong_replace (proof : cmd list) (hr : hyp_ref) (idx : int)
    : cmd list =
  (match find_local_res hr proof with
   | Or elist ->
     (match List.nth elist idx with
      | Not (Eq (Mul (Ivar (-1, 1, c1), a), Mul (Ivar (-1, 1, c2), b)))
          when c1 = c2 && c1 = Resolute.const_varname ->
          let result_list =
            List.mapi (fun i e ->
                if i = idx then
                  Eq (a, b)
                else
                  e
              ) elist in
          let base = get_base proof in
          let proof = proof @ [
              mk_cmd "binop_cong" [] []
                (Or [
                    Eq (neg a, neg b);
                    Not (Eq (neg_one, neg_one));
                    Not (Eq (a, b))
                  ]);
              mk_cmd "refl" [] [] (Or [Eq (neg_one, neg_one)]);
              mk_cmd "unfinished_res" [Eq (neg_one, neg_one)]
                [Derived (base - 2); Derived (base - 1)]
                (Or [
                    Eq (neg a, neg b);
                    Not (Eq (a, b))
                  ]);
              mk_cmd "unfinished_res" [Eq (neg a, neg b)]
                [Derived (base - 3); hr]
                (Or result_list)
            ] in
          finish_res proof
      | _ -> raise (ResLiaErr "negcong_replace bad arg")
     )
   | _ -> raise (ResLiaErr "negcong_replace non-or")
  )

(* Invariant: in-progress result is final command. *)
let rec negcong_replace_rec
    (proof : cmd list) (idx_list : int list)
    : cmd list =
  match idx_list with
  | [] -> proof
  | idx :: tail ->
    let hr = get_end_ref proof in
    let proof = negcong_replace proof hr idx in
    negcong_replace_rec proof tail *)

(* For handling singleton xor's *)

(* Return exprs: *)
(* - whether or not this is a singleton expression *)
(* - the list to be used for even counting *)
(* - the expr to be used for the initial xor rule *)
(* - if singleton, the singleton expr (but WITHOUT the not if this is neg) *)
let xor_expr_pos e =
  match e with
  | Xor2 elist -> false, elist, e, e
  | _ -> true, [e], Xor2 [e], e

let xor_expr_neg e =
  match e with
  | Not (Xor2 elist) -> false, elist, e, e
  | Not e -> true, [e], Not (Xor2 [e]), e
  | _ -> raise (ResLiaErr "non-neg in neg xor")

(* Ensures that index i of expr_list will be proven as the intended expr, *)
(* rewriting a singleton (xor e) to e if necessary. *)
(* i: the index under consideration. *)
(* expr_list: the disjunction currently proven *)
(* proof: proof up to this point *)
(* is_single: if we need to rewrite for a singleton *)
(* a: if singleton, the singleton expr *)
(* return 1: the updated proof *)
(* return 2: the new disjunction proven *)
let fix_pos
    (i : int)
    (expr_list : expr list)
    (proof : cmd list)
    (is_single : bool)
    (a : expr) =
  if not is_single then
    proof, expr_list
  else
    let new_expr_list = List.mapi (fun j e ->
        if j = i then
          a
        else
          e
      ) expr_list in
    let base = - (List.length proof) in
    (proof @ [
        mk_cmd "xor1-" [] [] (Or [Not (Xor2 [a]); a]);
        mk_cmd "unfinished_res" [Xor2 [a]] [Derived base; Derived (base-1)]
          (Or new_expr_list)
      ]), new_expr_list

(* See fix_pos. Note that if there is a singleton we are swapping (Not (Xor *)
(* [a])) for (Not a) *)
let fix_neg
    (i : int)
    (expr_list : expr list)
    (proof : cmd list)
    (is_single : bool)
    (a : expr) =
  if not is_single then
    proof, expr_list
  else
    let new_expr_list = List.mapi (fun j e ->
        if j = i then
          Not a
        else
          e
      ) expr_list in
    let base = - (List.length proof) in
    (proof @ [
        mk_cmd "xor1+" [] [] (Or [(Xor2 [a]); Not a]);
        mk_cmd "unfinished_res" [Xor2 [a]] [Derived (base-1); Derived base]
          (Or new_expr_list)
      ]), new_expr_list

(* half [] elist confirms all elements in elist occur an even number of times, *)
(* and returns a list where each element occurs half as many times, else *)
(* crashes. *)
let rec half ans elist =
  match elist with
  | [] -> ans
  | head :: tail ->
    let tail = remove head tail in
    half (head :: ans) tail

(*
let get_expr_list_pos e =
  match e with
  | Xor2 elist -> elist, e
  | _ -> [e], Xor2 [e]

let get_expr_list_neg e =
  match e with
  | Not (Xor2 elist) -> elist, e
  | Not e -> [e], Not (Xor2 [e])
  | _ -> raise (ResLiaErr "non-neg for xor") *)

let compile_cmd (cmd : cmd) : cmd list =
  match cmd.name, cmd.expr_args with
  | "xor+" , [] ->
    (match cmd.result with
     | Or [a1; a2; a3] ->
       let single1, list1, a1, exp1 = xor_expr_pos a1 in
       let single2, list2, a2, exp2 = xor_expr_pos a2 in
       let single3, list3, a3, exp3 = xor_expr_neg a3 in
       let expr_list = [a1; a2; a3] in
       let half_123 = half [] (list1 @ list2 @ list3) in
       let proof = [
         mk_cmd "xor+" [And (list1 @ list2); And half_123] [] (Or expr_list)
       ] in
       let proof, expr_list = fix_pos 0 expr_list proof single1 exp1 in
       let proof, expr_list = fix_pos 1 expr_list proof single2 exp2 in
       let proof, _         = fix_neg 2 expr_list proof single3 exp3 in
       (Elist.to_list (finish_res (Elist.from_list proof)))
     | _ -> raise (ResLiaErr "non-or for xor")
    )
  | "xor-" , [] ->
    (match cmd.result with
     | Or [a1; a2; a3] ->
       let single1, list1, a1, exp1 = xor_expr_neg a1 in
       let single2, list2, a2, exp2 = xor_expr_neg a2 in
       let single3, list3, a3, exp3 = xor_expr_neg a3 in
       let expr_list = [a1; a2; a3] in
       let half_123 = half [] (list1 @ list2 @ list3) in
       let proof = [
         mk_cmd "xor-" [And (list1 @ list2); And half_123] [] (Or expr_list)
       ] in
       let proof, expr_list = fix_neg 0 expr_list proof single1 exp1 in
       let proof, expr_list = fix_neg 1 expr_list proof single2 exp2 in
       let proof, _         = fix_neg 2 expr_list proof single3 exp3 in
       (Elist.to_list (finish_res (Elist.from_list proof)))
     | _ -> raise (ResLiaErr "non-or for xor")
    )
  | "poly+", [a; b] ->
    let proof = normalize_proof a Elist.nil in
    let a_eq_norm_ref = get_end_ref proof in
    let proof = normalize_proof b proof in
    let b_eq_norm_ref = get_end_ref proof in
    let proof = symm_proof b_eq_norm_ref proof in
    let norm_eq_b_ref = get_end_ref proof in
    let proof = trans_proof a_eq_norm_ref norm_eq_b_ref proof in
    let a_eq_b_ref = get_end_ref proof in
    Elist.to_list (single_to_or_proof a_eq_b_ref proof)
  | "poly*", [a; b] ->
    let proof = normalize_proof a Elist.nil in
    let a_eq_norm_ref = get_end_ref proof in
    let proof = normalize_proof b proof in
    let b_eq_norm_ref = get_end_ref proof in
    let proof = symm_proof b_eq_norm_ref proof in
    let norm_eq_b_ref = get_end_ref proof in
    let proof = trans_proof a_eq_norm_ref norm_eq_b_ref proof in
    let a_eq_b_ref = get_end_ref proof in
    Elist.to_list (single_to_or_proof a_eq_b_ref proof)
      (* TODO: LEFTOFF: CMUL: modifying farkas *)
  | "farkas", _ ->
    let extract_a e =
      match e with
      | Not (Eq (a, _)) -> a
      | Not (Lt (a, _)) -> a
      | Not (Leq (a, _)) -> a
      | _ -> raise (ResLiaErr "ill-formed farkas arg") in
    let extract_b e =
      match e with
      | Not (Eq (_, b)) -> b
      | Not (Lt (_, b)) -> b
      | Not (Leq (_, b)) -> b
      | _ -> raise (ResLiaErr "ill-formed farkas arg") in
    let result_list =
      match cmd.result with
      | Or list -> list
      | _ -> raise (ResLiaErr "farkas result not or") in
    let a_list = List.map extract_a result_list in
    let b_list = List.map extract_b result_list in
    Elist.to_list (match cmd.expr_args with
     | [Add mlist] ->
       let extract_m_inv_m m =
         match m with
         | Mul (n, Var c) when c = Resolute.const_varname ->
           n, -n
         | _ -> raise (ResLiaErr "ill-formed farkas expr arg (non-term)") in
       let m_inv_m_list = List.map extract_m_inv_m mlist in
       let mk_total_term (a, b, m, inv_m) =
         [
           Mul (m, a);
           Mul (inv_m, b)
         ] in
       let total_term =
         m_inv_m_list
         |> List.map2 (fun b (m, inv_m) -> (b, m, inv_m)) b_list
         |> List.map2 (fun a (b, m, inv_m) -> (a, b, m, inv_m)) a_list
         |> List.map mk_total_term
         |> List.flatten in
       let proof = normalize_proof (Add total_term) Elist.nil in
       let proof =
         (match find_local_res (get_end_ref proof) proof with
          | Eq (Add total_term2, Add []) when total_term=total_term2 ->
            let ref1 = get_end_ref proof in
            let proof = Elist.rev_app proof [{
                name = "consolidate";
                expr_args = [
                  Add [];
                  Add [Mul (0, Var Resolute.const_varname)];
                  Add [];
                ];
                hyp_args = [];
                result =
                  Eq (
                    Add [Mul (0, Var Resolute.const_varname)],
                    Add []
                  );
                backptr = None
              }] in
            let proof = symm_proof (get_end_ref proof) proof in
            let ref2 = get_end_ref proof in
            trans_proof ref1 ref2 proof
          | Eq (Add total_term2, Add [_]) when total_term=total_term2 ->
            proof
          | _ -> raise (ResLiaErr "ill-formed farkas sum normalize")
         ) in
       let eq_lone_add = get_end_ref proof in
       (*
       (* Obsolete, used to convert final sum from singleton to term. *)
       let lone_term =
         match (find_local_res (get_end_ref proof)) proof with
         | Eq (Add total_term2, Add [Ivar (n, d, c)])
           when c = Resolute.const_varname &&
                total_term = total_term2
           ->
           Ivar (n, d, c)
         | _ -> raise (ResLiaErr "ill-formed farkas lone term") in
       let proof =
         proof @ [{
             name = "add_single";
             expr_args = [];
             hyp_args = [];
             result = Eq (Add [lone_term], lone_term);
             backptr = None
           }] in
       let eq_term = get_end_ref proof in
       let proof = trans_proof eq_lone_add eq_term proof in *)
       Elist.rev_app proof [{
           name = "farkas";
           expr_args = [];
           (* Proper hyp arg when using term instead of singleton sum. *)
           (*hyp_args = [get_end_ref proof];*)
           hyp_args = [eq_lone_add];
           result = cmd.result;
           backptr = None
         }]
     | _ -> raise (ResLiaErr "ill-formed farkas expr args")
    )
  | "-def", _ ->
    (match cmd.result with
     | Or [Eq (a1, a2)] when a1=a2 ->
       [{cmd with name = "refl"}]
     | _ -> raise (ResLiaErr "ill-formed -def")
    )
  | ">=def", _ ->
    (match cmd.result with
     | Or [Eq (Leq _, Leq _)] ->
       [{cmd with name = "refl"}]
     | _ -> raise (ResLiaErr "ill formed >=def")
    )
  | ">def", _ ->
    (match cmd.result with
     | Or [Eq (Lt _, Lt _)] ->
       [{cmd with name = "refl"}]
     | _ -> raise (ResLiaErr "ill formed >=def")
    )
  | "total", _ ->
    [cmd]
  | "total-int", [t; Mul (i, Var c)] when c=Resolute.const_varname ->
    let c0 = Mul (i, Var c) in
    let c1 = Mul (i+1, Var c) in
    [{
      name = "total-int";
      expr_args = [];
      hyp_args = [];
      result = Or [Leq (t, c0); Leq (c1, t)];
      backptr = None
    }]
    (*
    (* CMUL DELETEME *)
    (* Old *)
    let norm = normalize_expr t in
    let c0 = Ivar (i, 1, c) in
    let c1 = Ivar (i+1, 1, c) in
    let proof = [
      {
        name = "total-int";
        expr_args = [];
        hyp_args = [];
        result = Or [Leq (norm, Add [c0]); Leq (Add [c1], norm)];
        backptr = None
      }
    ] in
    let proof = normalize_proof t proof in
    let a_ref = get_end_ref proof in
    let proof = symm_proof a_ref proof in
    let b_ref = get_end_ref proof in
    let b_base = get_base proof in
    let proof = proof @ [
        {
          name = "or_single";
          expr_args = [];
          hyp_args = [b_ref];
          result = Or [Eq (norm, t)];
          backptr = None
        };
        {
          name = "add_single";
          expr_args = [];
          hyp_args = [];
          result = Eq (Add [c0], c0);
          backptr = None
        };
        {
          name = "or_single";
          expr_args = [];
          hyp_args = [Derived (b_base - 2)];
          result = Or [Eq (Add [c0], c0)];
          backptr = None
        }
      ] in
    let proof = finish_res proof in
    let proof =
      rewrite_leq
        (Derived (-1))
        (Derived (b_base - 1))
        (Derived (b_base - 3))
        0
        proof in
    let c_ref = get_end_ref proof in
    let c_base = get_base proof in
    let proof = proof @ [
        {
          name = "add_single";
          expr_args = [];
          hyp_args = [];
          result = Eq (Add [c1], c1);
          backptr = None
        };
        {
          name = "or_single";
          expr_args = [];
          hyp_args = [Derived (c_base - 1)];
          result = Or [Eq (Add [c1], c1)];
          backptr = None
        }
      ] in
    rewrite_leq
      c_ref
      (Derived (c_base - 2))
      (Derived (b_base - 1))
      1
      proof *)
      (*
  | "-cong", [Add [Mul (Ivar (-1, 1, c1), a)]; Add [Mul (Ivar (-1, 1, c2), b)]]
    when c1 = c2 && c1 = Resolute.const_varname ->
    let proof = [
      mk_cmd "sum_cong" [] []
        (Or [
            Eq (Add [neg a], Add [neg b]) ;
            Eq (neg a, neg b)
          ])
    ] in
    let idx_list = [1] in
    negcong_replace_rec proof idx_list
  | "-cong", [Add (a :: alist); Add (b :: blist)] ->
    let mul_eqlist =
      List.map2 (fun a b -> Not (Eq (a, b)))
        (a :: alist)
        (b :: blist) in
    let proof = [
        mk_cmd "sum_cong" [] []
          (Or (
          (Eq (Add (a :: alist), Add (b :: blist))) ::
          (Eq (a, b)) ::
          mul_eqlist
        ))
      ] in
    let idx_list = List.init (List.length alist) (fun i -> i + 2) in
    negcong_replace_rec proof idx_list *)
    (* RESOLUTE requires i=i2, checker does not. Need extra rules to match. *)
  | "temp_mul_cong", [Mul (i, e1); Mul (i2, e2)] when i=i2 ->
    (* This is a kludge to enable weakening using the Resolution rule. *)
    [
      mk_cmd "mul_cong" [] []
        (Or [
            Eq (Mul (i, e1), Mul (i, e2));
            Not (Eq (e1, e2))]);
      mk_cmd "not+" [] []
        (Or [
            Not (Eq (e1, e2));
            Eq (e1, e2)
          ]);
      (* Smuggle in i=i since resolution allows weakening *)
      mk_cmd "resolution"
        [Not (Eq (e1, e2));
         Or [Eq (Mul (i, e1), Mul (i, e2));
             Not (Eq (Mul (i, Var Resolute.const_varname),
                      Mul (i, Var Resolute.const_varname)))];
         Or [Not (Eq (e1, e2));
             Not (Eq (Mul (i, Var Resolute.const_varname),
                      Mul (i, Var Resolute.const_varname)))];
        ]
        [Derived (-2); Derived (-1)]
        (Or [
            Eq (Mul (i, e1), Mul (i, e2));
            Not (Eq (Mul (i, Var Resolute.const_varname),
                     Mul (i, Var Resolute.const_varname)));
            Not (Eq (e1, e2))
          ])
    ]
    (* Outdated: breaking down or, implication congruence. *)
    (*
  | "cong", [Or []; Or []] ->
    [
      mk_cmd "refl" [] []
        (Or [Eq (Or [], Or [])])
    ]
  | "cong", [Or alist; Or blist] ->
    let filteri f list =
      list
      |> List.mapi (fun i a -> i, a)
      |> List.filter (fun (i, a) -> f i a)
      |> List.map (fun (_i, a) -> a) in
    let e = Eq (Or alist, Or blist) in
    (* Let E be (= (or alist) (or blist)) *)
    (* Let Ni be (not (= alist[i] blist[i])) *)
    (* Let N[0,i] be N0, N1... N{i-1} *)
    (* Input: end_ref proves (or E N[0,i] A[i,n] B[i,n]) *)
    (* Output: end_ref proves (or E N[0,i+1] A[i+1,n] B[i+1,n]) *)
    let incr_or_cong proof i =
      let ai = List.nth alist i in
      let bi = List.nth blist i in
      let ni = Not (Eq (ai, bi)) in
      let alist_suci_n = filteri (fun j _a -> j > i) alist in
      let blist_suci_n = filteri (fun j _b -> j > i) blist in
      let blist_i_n = bi :: blist_suci_n in
      let n_0_suci =
        List.init (i+1) (fun i ->
            Not (Eq (List.nth alist i, List.nth blist i))
          ) in
      let base = get_base proof in
      proof @ [
        mk_cmd "=+2" [] []
          (Or [e; Not (Or alist); Not (Or blist)]);
        mk_cmd "or+" [] []
          (Or [Or alist; Not ai]);
        mk_cmd "unfinished_res" [Or alist]
          [Derived (base-2); Derived (base-1)]
          (Or [e; Not ai; Not (Or blist)]);
        mk_cmd "or+" [] []
          (Or [Or blist; Not bi]);
        mk_cmd "unfinished_res" [Or blist]
          [Derived (base-4); Derived (base-3)]
          (Or [e; Not ai; Not bi]);
        mk_cmd "=-2" [] []
          (Or [ni; Not ai; bi]);
        mk_cmd "=-1" [] []
          (Or [ni; ai; Not bi]);
        mk_cmd "unfinished_res" [ai]
          [Derived base; Derived (base-6)]
          (Or ([e] @ n_0_suci @ alist_suci_n @ blist_i_n));
        mk_cmd "unfinished_res" [ai]
          [Derived (base-7); Derived (base-5)]
          (Or [e; ni; Not bi]);
        mk_cmd "unfinished_res" [bi]
          [Derived (base-8); Derived (base-9)]
          (Or ([e] @ n_0_suci @ alist_suci_n @ blist_suci_n))
      ]
    in
    let proof =
      [
        mk_cmd "=+1" [] []
          (Or [e; Or alist; Or blist]);
        mk_cmd "or-" [Not (Or alist)] []
          (Or (Not (Or alist) :: alist));
        mk_cmd "or-" [Not (Or blist)] []
          (Or (Not (Or blist) :: blist));
        mk_cmd "unfinished_res" [Or alist]
          [Derived (-1); Derived (-2)]
          (Or ([e] @ alist @ [Or blist]));
        mk_cmd "unfinished_res" [Or blist]
          [Derived (-4); Derived (-3)]
          (Or ([e] @ alist @ blist))
      ]
    in
    let ilist = List.init (List.length alist) Fun.id in
    let proof = List.fold_left incr_or_cong proof ilist in
    finish_res proof
  | "cong", [Impl (a1, a2); Impl (b1, b2)] ->
    let eq = Eq (Impl (a1, a2), Impl (b1, b2)) in
    let ima = Impl (a1, a2) in
    let imb = Impl (b1, b2) in
    let n1 = Not (Eq (a1, b1)) in
    let n2 = Not (Eq (a2, b2)) in
    let proof = [
      mk_cmd "=+1" [] [] (Or [eq; ima; imb]);
      mk_cmd "=>-" [] [] (Or [Not ima; Not a1; a2]);
      mk_cmd "unfinished_res" [ima] [Derived (-1); Derived (-2)]
        (Or [eq; Not a1; a2; imb]);
      mk_cmd "=>-" [] [] (Or [Not imb; Not b1; b2]);
      mk_cmd "unfinished_res" [imb] [Derived (-3); Derived (-4)]
        (Or [eq; Not a1; a2; Not b1; b2]);
      mk_cmd "=+2" [] [] (Or [eq; Not ima; Not imb]);
      mk_cmd "=>+1" [] [] (Or [ima; a1]);
      mk_cmd "unfinished_res" [ima] [Derived (-7); Derived (-6)]
        (Or [eq; a1; Not imb]);
      mk_cmd "=>+1" [] [] (Or [imb; b1]);
      mk_cmd "unfinished_res" [imb] [Derived (-9); Derived (-8)]
        (Or [eq; a1; b1]);
      mk_cmd "=-1" [] [] (Or [n1; a1; Not b1]);
      mk_cmd "unfinished_res" [b1] [Derived (-10); Derived (-11)]
        (Or [eq; n1; a1]);
      mk_cmd "=-2" [] [] (Or [n1; Not a1; b1]);
      mk_cmd "unfinished_res" [a1] [Derived (-10); Derived (-13)]
        (Or [eq; n1; b1]);
      mk_cmd "=>+2" [] [] (Or [ima; Not a2]);
      mk_cmd "unfinished_res" [ima] [Derived (-15); Derived (-6)]
        (Or [eq; Not a2; Not imb]);
      mk_cmd "=>+2" [] [] (Or [imb; Not b2]);
      mk_cmd "unfinished_res" [imb] [Derived (-17); Derived (-16)]
        (Or [eq; Not a2; Not b2]);
      mk_cmd "=-1" [] [] (Or [n2; a2; Not b2]);
      mk_cmd "unfinished_res" [a2] [Derived (-19); Derived (-18)]
        (Or [eq; n2; Not b2]);
      mk_cmd "=-2" [] [] (Or [n2; Not a2; b2]);
      mk_cmd "unfinished_res" [b2] [Derived (-21); Derived (-18)]
        (Or [eq; n2; Not a2]);
      mk_cmd "unfinished_res" [a1] [Derived (-12); Derived (-5)]
        (Or [eq; n1; a2; Not b1; b2]);
      mk_cmd "unfinished_res" [b1] [Derived (-14); Derived (-23)]
        (Or [eq; n1; a2; b2]);
      mk_cmd "unfinished_res" [a2] [Derived (-24); Derived (-22)]
        (Or [eq; n1; n2; b2]);
      mk_cmd "unfinished_res" [b2] [Derived (-25); Derived (-20)]
        (Or [eq; n1; n2])
    ] in
    finish_res proof *)
  | _ -> [cmd]

let update_hyp_ref
    (old_map : int IntMap.t)
    (base : int)
    (cr : hyp_ref)
  : hyp_ref =
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
  let hyp_args = List.map (update_hyp_ref old_map base) cmd.hyp_args in
  {cmd with hyp_args}

let rec update_cmd_list
  (old_map : int IntMap.t)
  (orig_idx : int)
  (new_idx : int)
  (ans : cmd Elist.t)
  (to_convert : cmd list)
  : cmd list =
  match to_convert with
  | [] ->
    Elist.to_list (true_finish_res ans)
  | cmd :: to_convert ->
    (**Printf.printf "now compiling %d:\n %s\n\n" orig_idx (str_of_cmd 0 cmd);*)
    let new_list = compile_cmd cmd in
    let new_list = List.map (update_cmd old_map new_idx) new_list in
    let ans = Elist.rev_app ans new_list in
    let old_map = IntMap.add orig_idx (Elist.length ans - 1) old_map in
    let new_idx = Elist.length ans in
    update_cmd_list old_map (orig_idx + 1) new_idx ans to_convert

let pass (prog : prog) : prog =
  let cmd_list = update_cmd_list IntMap.empty 0 0 Elist.nil prog.cmd_list in
  {prog with cmd_list}
