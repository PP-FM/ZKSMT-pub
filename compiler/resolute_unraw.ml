open Resolute

exception ResRawError of string

(* Convert ResoluteRaw to Resolute *)

let const_var = Var const_varname

let rec turn_expr (e : Resolute_raw.expr) : expr =
  match e with
  | LetExpr _ -> raise (ResRawError "LetExpr in unraw")
  | True -> True
  | False -> False
  | Not e -> Not (turn_expr e)
  | And elist -> And (List.map turn_expr elist)
  | Or elist -> Or (List.map turn_expr elist)
  | Impl (e1, e2) -> Impl (turn_expr e1, turn_expr e2)
  | Eq (e1, e2) -> Eq (turn_expr e1, turn_expr e2)
  | App (name, elist) -> App (name, List.map turn_expr elist)
  | Distinct elist -> Distinct (List.map turn_expr elist)
  | Xor elist -> Xor (List.map turn_expr elist)
  | Ite (e1, e2, e3) -> Ite (turn_expr e1, turn_expr e2, turn_expr e3)
  | Var name -> Var name
  | Ivar _ ->
    raise (ResRawError "ivar deprecated")
  | Add elist ->
    Add (List.map turn_expr elist)
  | Mul [Int i; e] ->
    Mul (i, turn_expr e)
  | Mul [Add [Int i]; e] ->
    Mul (i, turn_expr e)
  | Mul [Sub [Int i]; e] ->
    Mul (-i, turn_expr e)
  | Mul [e; Int i] ->
    Mul (i, turn_expr e)
  | Mul [e; Add [Int i]] ->
    Mul (i, turn_expr e)
  | Mul [e; Sub [Int i]] ->
    Mul (-i, turn_expr e)
  | Mul elist ->
    print_endline "resolute unraw badmul:";
    elist
    |> List.map Resolute_raw.str_of_expr
    |> List.iter print_endline;
    raise (ResRawError "bad mul")
      (* TODO: less simple mul transformation
  | Mul [Int i; Ivar name] ->
    Ivar (i, 1, name)
  | Mul [Add [Int i]; Ivar name] ->
    Ivar (i, 1, name)
  | Mul [Sub [Int i]; Ivar name] ->
    Ivar (-i, 1, name)
  | Mul [Ivar name; Int i] ->
    Ivar (i, 1, name)
  | Mul [Ivar name; Add [Int i]] ->
    Ivar (i, 1, name)
  | Mul [Ivar name; Sub [Int i]] ->
    Ivar (-i, 1, name)
  | Mul [Int i; e] ->
    Mul (i, 1, turn_expr e)
  | Mul elist ->
    print_endline "resolute unraw badmul:";
    elist
    |> List.map Resolute_raw.str_of_expr
    |> List.iter print_endline;
    raise (ResRawError "bad mul") *)
(*  | Sub [] -> raise (ResRawError "null sub")
  | Sub [e] ->
    Mul (Ivar (-1, 1, const_varname), turn_expr e)
  | Sub (head :: tail) ->
    let add_neg e =
      Mul (Ivar (-1, 1, const_varname), turn_expr e) in
    Add (turn_expr head :: List.map add_neg tail) *)
  | Sub elist ->
    Sub (List.map turn_expr elist)
  | Int i -> Mul (i, Var const_varname)
  | Lt (e1, e2) -> Lt (turn_expr e1, turn_expr e2)
  | Leq (e1, e2) -> Leq (turn_expr e1, turn_expr e2)
  | Gt (e1, e2) -> Gt (turn_expr e1, turn_expr e2)
  | Geq (e1, e2) -> Geq (turn_expr e1, turn_expr e2)

let rec turn_proof (p : Resolute_raw.proof) : proof =
  match p with
  | Let (name, e, p) -> Let (name, turn_expr e, turn_proof p)
  | LetProof (name, p1, p2) -> LetProof (name, turn_proof p1, turn_proof p2)
  | Res (e, p1, p2) -> Res (turn_expr e, turn_proof p1, turn_proof p2)
  | Assume e -> Assume (turn_expr e)
  | Axiom (name, ilist, elist) -> Axiom (name, ilist, List.map turn_expr elist)
  | ProofVar name -> ProofVar name

let pass (proof : Resolute_raw.proof) : proof =
  turn_proof proof
