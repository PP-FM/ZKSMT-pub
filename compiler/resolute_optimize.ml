open Maps
open Ir

exception ResOpt of string

module Expr = struct
  type t = expr
  let compare = compare
end
module ExprMap = Map.Make(Expr)

let rec find_first_proofs
  (cmd_list : cmd list)
  (table : int ExprMap.t)
  (cur_idx : int)
  : int ExprMap.t =
  match cmd_list with
  | [] -> table
  | hd :: tail ->
    (match ExprMap.mem hd.result table with
     | true -> find_first_proofs tail table (cur_idx + 1)
     | false ->
       find_first_proofs tail (ExprMap.add hd.result cur_idx table)
         (cur_idx + 1)
    )

let replace_hyp_ref
  (cmd_list : cmd Elist.t)
  (table : int ExprMap.t)
  (hr : hyp_ref) =
  match hr with
  | Premise s -> Premise s
  | Derived i ->
    match ExprMap.find_opt ((Elist.nth cmd_list i).result) table with
    | None -> raise (ResOpt "could not find hr")
    | Some i2 -> Derived i2

let replace_cmd
  (cmd_list : cmd Elist.t)
  (table : int ExprMap.t)
  (cmd : cmd) =
  let hyp_args = List.map (replace_hyp_ref cmd_list table) cmd.hyp_args in
  {cmd with hyp_args}

let memoize (prog : prog) : prog =
  let table = find_first_proofs prog.cmd_list ExprMap.empty 0 in
  let cmd_elist = Elist.from_list prog.cmd_list in
  let cmd_list = Elist.map (replace_cmd cmd_elist table) cmd_elist in
  {prog with cmd_list=Elist.to_list cmd_list}

let only_derived hr =
  match hr with
  | Premise _ -> None
  | Derived i -> Some i

let rec flood
  (cmd_list : cmd Elist.t)
  (to_check : IntSet.t)
  (checked : IntSet.t)
  : IntSet.t =
  match IntSet.min_elt_opt to_check with
  | None -> checked
  | Some i ->
    let checked = IntSet.add i checked in
    let to_check = IntSet.remove i to_check in
    let to_check =
      (Elist.nth cmd_list i).hyp_args
      |> List.filter_map only_derived
      |> List.filter (fun e -> not (IntSet.mem e checked))
      |> IntSet.of_list
      |> IntSet.union to_check in
    flood cmd_list to_check checked

let convert_hr idx_map hr =
  match hr with
  | Premise s -> Premise s
  | Derived i -> Derived (IntMap.find i idx_map)

let rec rm_dead
  (to_filter : cmd list)
  (answer : cmd Elist.t)
  (keep_set : IntSet.t)
  (idx_map : int IntMap.t) (* keys are old idx, vals are new idx *)
  (old_cur_idx : int)
  (new_cur_idx : int)
  : cmd list =
  match to_filter with
  | [] -> Elist.to_list answer
  | cmd :: to_filter ->
    if IntSet.mem old_cur_idx keep_set then
      let hyp_args = List.map (convert_hr idx_map) cmd.hyp_args in
      let cmd = {cmd with hyp_args} in
      let idx_map = IntMap.add old_cur_idx new_cur_idx idx_map in
      let answer = Elist.rev_cons answer cmd in
      let old_cur_idx = old_cur_idx + 1 in
      let new_cur_idx = new_cur_idx + 1 in
      rm_dead to_filter answer keep_set idx_map old_cur_idx new_cur_idx
    else
      let old_cur_idx = old_cur_idx + 1 in
      rm_dead to_filter answer keep_set idx_map old_cur_idx new_cur_idx

let deadcode (prog : prog) : prog =
  let last_cmd = List.hd (List.rev prog.cmd_list) in
  (if last_cmd.result <> False then
     raise (ResOpt "last command not false")
  );
  let last_idx = (List.length prog.cmd_list) - 1 in
  let cmd_elist = Elist.from_list prog.cmd_list in
  let keep_set = flood cmd_elist (IntSet.singleton last_idx) IntSet.empty in
  let cmd_list =
    rm_dead
      prog.cmd_list
      Elist.nil
      keep_set
      IntMap.empty
      0
      0 in
  {prog with cmd_list}
