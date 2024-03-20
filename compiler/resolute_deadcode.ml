open Maps
open Resolute

(*
module Expr =
  struct
    type t = expr
    let compare = compare
  end

module ExprMap = Map.Make(Expr) *)

module LitSetElt =
  struct
    type t = LitSet.t
    let compare = compare
  end

module LitSetMap = Map.Make(LitSetElt)

module CmdRef =
  struct
    type t = cmd_ref
    let compare = compare
  end

module CmdRefMap = Map.Make(CmdRef)

let rec map_of_bindings' map lst =
  match lst with
  | [] -> map
  | (k, v) :: tl -> map_of_bindings' (CmdRefMap.add k v map) tl

let map_of_bindings lst = map_of_bindings' CmdRefMap.empty lst

let update_cmd
  (ref_conv : cmd_ref CmdRefMap.t)
  (cmd : cmd)
  : cmd =
  match cmd with
  | Res (e, cr0, cr1) ->
    Res (e, CmdRefMap.find cr0 ref_conv, CmdRefMap.find cr1 ref_conv)
  | Axiom _ -> cmd

let rec elim_cmds
  (ans : cmd list) (* In-progress command list *)
  (old_idx : int) (* Original index of the next command *)
  (cur_idx : int) (* New index of the next command (if it is kept) *)
  (to_convert : (cmd * LitSet.t) list) (* Commands (w/ inference) not yet converted *)
  (* Maps old cmd_refs to new cmd_refs (accounts for deletions) *)
  (ref_conv : cmd_ref CmdRefMap.t)
  (* Records what LitSets where concluded and when they where concluded. *)
  (prev_results : cmd_ref LitSetMap.t)
  : cmd list =
  match to_convert with
  | [] -> ans
  | (cmd, result) :: tail ->
    (match LitSetMap.find_opt result prev_results with
     | Some cr ->
       let ref_conv = CmdRefMap.add (Derived old_idx) cr ref_conv in
       elim_cmds ans (old_idx + 1) cur_idx tail ref_conv prev_results
     | None ->
       let cmd = update_cmd ref_conv cmd in
       let ref_conv =
         CmdRefMap.add (Derived old_idx) (Derived cur_idx) ref_conv in
       let prev_results = LitSetMap.add result (Derived cur_idx) prev_results in
       elim_cmds (ans @ [cmd]) (old_idx + 1) (cur_idx + 1) tail ref_conv prev_results
    )

(* TODO: run check until fixpoint *)

let elim (prog : prog) : prog =
  let result_list = Resolute_checker.infer_prog prog in
  let cmd_result_list = List.combine prog.cmd_list result_list in
  let ref_conv =
    prog.premises
    |> StrMap.bindings
    |> List.map (fun (name, _) -> (Premise name, Premise name))
    |> map_of_bindings in
  let cmd_list =
    elim_cmds [] 0 0 cmd_result_list ref_conv LitSetMap.empty in
  {prog with cmd_list}
