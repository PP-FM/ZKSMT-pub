let () = Printexc.record_backtrace true

module StrSet = Set.Make(String)

module IntMap : Map.S with type key = int = Map.Make(Int)

module IntSet = Set.Make(Int)

module StrMap = Map.Make(String)

let rec map_of_bindings' map lst =
  match lst with
  | [] -> map
  | (k, v) :: tl -> map_of_bindings' (StrMap.add k v map) tl

let map_of_bindings lst = map_of_bindings' StrMap.empty lst

let rec int_map_of_bindings' map lst =
  match lst with
  | [] -> map
  | (k, v) :: tl -> int_map_of_bindings' (IntMap.add k v map) tl

let int_map_of_bindings lst = int_map_of_bindings' IntMap.empty lst

let print_timing_info = ref false
let latest_time = ref 0.0

let update_time msg =
  if !print_timing_info then
    let time = Sys.time () in
    let time_passed = time -. !latest_time in
    latest_time := time;
    Printf.printf "%20s : time %10.3f : total %10.3f\n" msg time_passed time;
    print_endline ""

let rec tail_rec_map_helper f rev_ans to_conv =
  match to_conv with
  | [] -> List.rev rev_ans
  | hd :: tail -> tail_rec_map_helper f (f hd :: rev_ans) tail

let tail_rec_map f l = tail_rec_map_helper f [] l

(*let tail_rec_map f l = List.rev (List.rev_map f l)*)
