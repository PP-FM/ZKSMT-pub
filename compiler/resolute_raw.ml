open Printf

(* TODO: Ivar is deprecated. Remove it. *)

exception ResoluteRawError of string

type expr =
  | LetExpr of string * expr * expr
  | True
  | False
  | Not of expr
  | And of expr list
  | Or of expr list
  | Impl of expr * expr
  | Eq of expr * expr
  | App of string * (expr list)
  | Distinct of expr list
  | Xor of expr list
  | Ite of expr * expr * expr
  | Var of string
  (* LIA *)
  | Ivar of string
  | Add of expr list
  | Mul of expr list
  | Sub of expr list
  | Int of int
  | Lt of expr * expr
  | Leq of expr * expr
  | Gt of expr * expr
  | Geq of expr * expr

(* AST version *)
type proof =
  | Let of string * expr * proof
  | LetProof of string * proof * proof
  | Res of expr * proof * proof
  | Assume of expr
  | Axiom of string * int list * expr list
  | ProofVar of string

(* Pretty Printing *)
let rec str_of_expr e =
  match e with
  | LetExpr (s, e1, e2) ->
    sprintf "(let ((%s %s)) %s)"
      s
      (str_of_expr e1)
      (str_of_expr e2)
  | True -> "true"
  | False -> "false"
  | Not e1 -> sprintf "(not %s)" (str_of_expr e1)
  | And elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(and %s)"
  | Or elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(or %s)"
  | Impl (e1, e2) -> sprintf "(=> %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Eq (e1, e2) -> sprintf "(= %s %s)" (str_of_expr e1) (str_of_expr e2)
  | App (n, elist) ->
    let arg_str =
      elist
      |> List.map str_of_expr
      |> String.concat " " in
    sprintf "(%s %s)" n arg_str
  | Distinct elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(distinct %s)"
  | Xor elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(xor %s)"
  | Ite (e1, e2, e3) ->
    sprintf "(ite %s %s %s)" (str_of_expr e1) (str_of_expr e2) (str_of_expr e3)
  | Var s -> s
  | Ivar s -> sprintf "(ivar %s)" s
  | Add elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(+ %s)"
  | Mul elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(* %s)"
  | Sub elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(- %s)"
  | Int i -> sprintf "%d" i
  | Lt (e1, e2) -> sprintf "(< %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Leq (e1, e2) -> sprintf "(<= %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Gt (e1, e2) -> sprintf "(> %s %s)" (str_of_expr e1) (str_of_expr e2)
  | Geq (e1, e2) -> sprintf "(>= %s %s)" (str_of_expr e1) (str_of_expr e2)

let rec str_of_proof p =
  match p with
  | Let (name, e, p) ->
    sprintf "(let ((%s %s)) %s)" name (str_of_expr e) (str_of_proof p)
  | LetProof (name, p1, p2) ->
    sprintf "(let-proof ((%s %s)) %s)" name (str_of_proof p1) (str_of_proof p2)
  | Res (e1, p1, p2) ->
    sprintf "(res %s %s %s)" (str_of_expr e1) (str_of_proof p1) (str_of_proof p2)
  | Assume e1 -> sprintf "(assume %s)" (str_of_expr e1)
  | Axiom (name, ilist, elist) ->
    let istrlist =
      ilist
      |> List.map string_of_int in
    let estrlist =
      elist
      |> List.map str_of_expr in
    let ie_str =
      istrlist @ estrlist
      |> String.concat " " in
    sprintf "(%s %s)" name ie_str
  | ProofVar name -> name

let rec print_int_exprs (e : expr) : unit =
  match e with
  | LetExpr (_, e1, e2) -> print_int_exprs e1; print_int_exprs e2
  | True -> ()
  | False -> ()
  | Not e -> print_int_exprs e
  | And elist -> List.iter print_int_exprs elist
  | Or elist -> List.iter print_int_exprs elist
  | Impl (e1, e2) -> print_int_exprs e1; print_int_exprs e2
  | Eq (e1, e2) -> print_int_exprs e1; print_int_exprs e2
  | App (_name, elist) -> List.iter print_int_exprs elist
  | Distinct elist -> List.iter print_int_exprs elist
  | Xor elist -> List.iter print_int_exprs elist
  | Ite (e1, e2, e3) -> print_int_exprs e1; print_int_exprs e2; print_int_exprs e3
  | Var _s -> ()
  | Ivar _s -> ()
  | Add elist ->
    printf "iexpr: %s\n" (str_of_expr (Add elist))
  | Mul elist ->
    printf "iexpr: %s\n" (str_of_expr (Add elist))
  | Sub elist ->
    printf "iexpr: %s\n" (str_of_expr (Add elist))
  | Int i ->
    printf "iexpr: %d\n" i
  | Lt (e1, e2) ->
    printf "iexpr: (< %s %s)\n" (str_of_expr e1) (str_of_expr e2)
  | Leq (e1, e2) ->
    printf "iexpr: (<= %s %s)\n" (str_of_expr e1) (str_of_expr e2)
  | Gt (e1, e2) ->
    printf "iexpr: (> %s %s)\n" (str_of_expr e1) (str_of_expr e2)
  | Geq (e1, e2) ->
    printf "iexpr: (>= %s %s)\n" (str_of_expr e1) (str_of_expr e2)

(*
let rec pie_proof (p : proof) : unit =
  match p with
  | Let _ -> raise (ResoluteRawError "uncaght let")
  | LetProof (_, p1, p2) ->
    pie_proof p1; pie_proof p2
  | Res (e, p1, p2) ->
    print_int_exprs e;
    pie_proof p1;
    pie_proof p2
  | Assume e -> print_int_exprs e
  | Axiom (_, _, elist) -> List.iter (print_int_exprs) elist
  | ProofVar _ -> () *)

let rec pcong_proof (p : proof) : unit =
  match p with
  | Let _ -> raise (ResoluteRawError "uncaght let")
  | LetProof (_, p1, p2) ->
    pcong_proof p1; pcong_proof p2
  | Res (_, p1, p2) ->
    pcong_proof p1; pcong_proof p2
  | Assume _ -> ()
  | Axiom ("cong", [], elist) ->
    print_endline "cong:";
    elist
    |> List.map str_of_expr
    |> List.iter print_endline;
    print_endline ""
  | Axiom _ -> ()
  | ProofVar _ -> ()

let pie_proof = pcong_proof
