open Maps
open Table

(* Ensures that the step table is: *)
(* - sorted by rule id *)
(* - steps with the same rule id are randomly sorted internally *)
(* *)
(* If `deterministic` is true, the "randomness" is initialized with a fixed *)
(* seed, causing same runs to have the same output. *)

(* Randomly permutes a list. Assumes Random module has been initialized. *)
let rand_perm list =
  (* Randomly assigns each index a score from 0 to 2^30-1, and sorts based *)
  (* on that. *)
  let compare_score (_i1, score1) (_i2, score2) = compare score1 score2 in
  let perm =
    List.init (List.length list) (fun i -> i, Random.int 0x3fffffff)
    |> List.stable_sort compare_score
    |> List.map (fun (i, _score) -> i)
    |> Elist.from_list in

  let old_list = Elist.from_list list in

  (* pseudocode: new_list[i] = old_list[perm[i]] *)
  let new_list =
    List.init (List.length list) (fun i -> Elist.nth old_list (Elist.nth perm i)) in
  new_list

let add_step (map : (step list) IntMap.t) (step : step) : (step list) IntMap.t =
  match IntMap.find_opt step.rule_id map with
  | None ->
    IntMap.add step.rule_id [step] map
  | Some step_list ->
    IntMap.add step.rule_id (step :: step_list) map

let pass (prog : prog) (deterministic : bool) : prog =
  let step_map = List.fold_left add_step IntMap.empty prog.step_list in

  (if deterministic then
    Random.init 4
  else
    Random.self_init ());

  let step_map = IntMap.map rand_perm step_map in
  let step_list =
    step_map
    |> IntMap.bindings
    |> List.map (fun (_rule_id, step_list) -> step_list)
    |> List.flatten in

  {prog with step_list}
