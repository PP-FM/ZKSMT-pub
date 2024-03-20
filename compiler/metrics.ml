open Maps
open Printf

type t = int StrMap.t

let str_of_metrics (m : t) (fname : string) (phase : string) =
  let body_str =
    m
    |> StrMap.bindings
    |> List.map (fun (name, i) -> sprintf "%15s : %4d" name i)
    |> String.concat "\n" in
  let total_str =
    m
    |> StrMap.bindings
    |> List.map (fun (_, i) -> i)
    |> List.fold_left (+) 0
    |> (sprintf "%15s : %4d" "total") in
  sprintf "Metrics for file %s as %s:\n%s\n%s" fname phase body_str total_str

let print_metrics (m : t) (fname : string) (phase : string) : unit =
  printf "%s\n\n" (str_of_metrics m fname phase)

let print_metrics_flag
    (flag : bool)
    (f : 'a -> t)
    (p : 'a)
    (fname : string)
    (phase : string)
  : unit =
  if flag then
    print_metrics (f p) fname phase
  else
    ()
