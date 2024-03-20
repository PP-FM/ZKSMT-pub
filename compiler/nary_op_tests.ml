open Binary_untyped

(* Check for problematic expressions when converting and's & or's to n-ary arguments. *)

let rec and_check e =
  match e with
  | NaryApp ("and", [_; Constant "true"]) -> []
  | NaryApp ("and", [_; NaryApp ("and", a)]) ->
    and_check (NaryApp ("and", a))
  | NaryApp ("and", [_; _]) -> [e]
  | _ -> []

let rec or_check e =
  match e with
  | NaryApp ("or", [_; Constant "false"]) -> []
  | NaryApp ("or", [_; NaryApp ("or", a)]) ->
    or_check (NaryApp ("or", a))
  | NaryApp ("or", [_; _]) -> [e]
  | _ -> []

let rec find_bad_and_or e =
  match e with
  | Var _ -> []
  | Constant _ -> []
  | App (e1, e2) ->
    find_bad_and_or e1 @ find_bad_and_or e2
  | NaryApp (_, expr_list) ->
    and_check e @ or_check e @ (List.concat (List.map find_bad_and_or expr_list))

let check e =
  let bad_exprs = find_bad_and_or e in
  match bad_exprs with
  (*| [] -> Printf.sprintf "good: %s" (noindent_str_of_expr e)*)
  | [] -> ""
  | lst ->
    let bad_str =
      lst
      |> List.map noindent_str_of_expr
      |> List.map (Printf.sprintf "  %s\n")
      |> String.concat "" in
    Printf.sprintf "bad : %s\n%s" (noindent_str_of_expr e) bad_str

let nary_op_check e_lst =
  e_lst
  |> List.map check
  |> List.iter print_endline
