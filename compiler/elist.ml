open Maps

(* A drop-in list replacement where specific operations are efficient. *)

type 'a t = {
  len : int;
  map : 'a IntMap.t
}

let rec rev_app (elist : 'a t) (list : 'a list) =
  match list with
  | [] -> elist
  | head :: tail ->
    let len = elist.len + 1 in
    let map = IntMap.add elist.len head elist.map in
    rev_app {len; map} tail

let rev_cons (elist : 'a t) e =
  let len = elist.len + 1 in
  let map = IntMap.add elist.len e elist.map in
  {len; map}

let length (elist : 'a t) = elist.len

let nth (elist : 'a t) i =
  IntMap.find i elist.map

let nil = {len=0 ; map=IntMap.empty}

let rec tail_rec_map_helper f rev_ans to_conv =
  match to_conv with
  | [] -> List.rev rev_ans
  | hd :: tail -> tail_rec_map_helper f (f hd :: rev_ans) tail

let tail_rec_map f l = tail_rec_map_helper f [] l

let to_list elist =
  elist.map
  |> IntMap.bindings
  |> tail_rec_map snd

let from_list list = rev_app nil list

let mapi f elist = {elist with map=IntMap.mapi f elist.map}

let map f elist = {elist with map=IntMap.map f elist.map}
