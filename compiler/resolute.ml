open Maps
open Printf

exception ResoluteError of string

let const_varname = "ONE"

type expr =
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
  | Add of expr list
  | Mul of int * expr
  | Sub of expr list
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

(* Resolve a parser ambiguity between axioms with 0 arguments & proof variables *)
let rec zero_axiom p =
  match p with
  | Let (name, e1, p1) -> Let (name, e1, zero_axiom p1)
  | LetProof (name, p1, p2) -> LetProof (name, zero_axiom p1, zero_axiom p2)
  | Res (e1, p1, p2) -> Res (e1, zero_axiom p1, zero_axiom p2)
  | Assume e1 -> Assume e1
  | Axiom (name, ilist, elist) -> Axiom (name, ilist, elist)
  | ProofVar "true+" -> Axiom ("true+", [], [])
  | ProofVar "false-" -> Axiom ("false-", [], [])
  | ProofVar name -> ProofVar name

(* Listified version *)
type cmd_ref =
  | Premise of string
  | Derived of int

type cmd =
  | Res of expr * cmd_ref * cmd_ref
  | Axiom of string * (int list) * (expr list)

type prog = {
  vars : string list;
  premises : expr StrMap.t;
  cmd_list : cmd list;
}

(* Used for inference *)
type lit =
  | Pos of expr
  | Neg of expr

module Lit =
struct
  type t = lit
  let compare = compare
end

module LitSet = Set.Make(Lit)

(*
let fudge_cmd (cmd : cmd) : cmd =
  match cmd with
  | Res _ -> cmd
  | Axiom ("not-", [], [Not e]) ->
    Axiom ("not-", [], [e])
  | Axiom ("not+", [], [Not e]) ->
    Axiom ("not+", [], [e])
  | Axiom ("or-", [], [Or elist]) ->
    Axiom ("or-", [], elist)
  | Axiom ("or+", [i], [Or elist]) ->
    Axiom ("or+", [i], elist)
  | Axiom ("and-", [i], [And elist]) ->
    Axiom ("and-", [i], elist)
  | Axiom ("and+", [], [And elist]) ->
    Axiom ("and+", [], elist)
  | Axiom ("=+1", [], [Eq (e1, e2)]) ->
    Axiom ("=+1", [], [e1; e2])
  | Axiom ("=+2", [], [Eq (e1, e2)]) ->
    Axiom ("=+2", [], [e1; e2])
  | Axiom ("=-1", [], [Eq (e1, e2)]) ->
    Axiom ("=-1", [], [e1; e2])
  | Axiom ("=-2", [], [Eq (e1, e2)]) ->
    Axiom ("=-2", [], [e1; e2])
  | Axiom ("=>-", [], [Impl (e1, e2)]) ->
    Axiom ("=>-", [], [e1; e2])
  | Axiom ("=>+", [i], [Impl (e1, e2)]) ->
    Axiom ("=>+", [i], [e1; e2])
  | Axiom ("distinct-", [i1; i2], [Distinct elist]) ->
    Axiom ("distinct-", [i1; i2], elist)
  | Axiom ("distinct+", [], [Distinct elist]) ->
    Axiom ("distinct+", [], elist)
  | _ -> cmd

(* Remove a discrepancy between spec & SMTInterpol output *)
let fudge_prog (prog : prog) : prog =
  let cmd_list = List.map fudge_cmd prog.cmd_list in
  {prog with cmd_list} *)

(* Metrics *)
let metrics_cmd (m : Metrics.t) (cmd : cmd) : Metrics.t =
  let name =
    match cmd with
    | Res _ -> "resolution"
    | Axiom (name, _, _) -> name in
  match StrMap.find_opt name m with
  | Some i -> StrMap.add name (i+1) m
  | None -> StrMap.add name 1 m

let metrics (prog : prog) : Metrics.t =
  List.fold_left metrics_cmd StrMap.empty prog.cmd_list

(* Used for outputting integers in cpp table format. *)
let rule_codes = map_of_bindings [
  "resolution", 299;
  "factoring", 298;
  "or_nil", 297;
  "or_single", 296;
  "or_single_rev", 295;
  "not_cong", 223;
  "nary_cong", 408;

  "true+", 200;
  "false-", 201;
  "not+", 202;
  "not-", 203;
  "and+", 204;
  "and-", 205;
  "or+", 206;
  "or-", 207;
  "=>+1", 208;
  "=>+2", 209;
  "=>-", 210;
  "=+1", 211;
  "=+2", 212;
  "=-1", 213;
  "=-2", 214;

  "refl", 215;
  "symm", 216;
  "trans", 217;
  "cong", 218;

  "xor+", 219;
  "xor-", 220;
  "xor1+", 294;
  "xor1-", 293;
  "ite1", 221;
  "ite2", 222;
  "cong-ite", 292;

  "binop_cong", 414;
  "mul_cong", 415;
  "mul_single", 416;
  "add_single", 404;
  "multiply", 301;
  "consolidate", 401;
  "farkas", 302;
  "total-int", 306;
  "sum_cong", 408;
  "flatten", 410;
  "total", 304;
  "trichotomy", 303;

  (* For rules without conversion implemented yet. *)
  "trust", 300;
]

(* Print in RESOLUTE format. *)
let rec str_of_expr e =
  match e with
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

  | Add elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(+ %s)"
  | Mul (i, e1) -> sprintf "(* %d %s)" i (str_of_expr e1)
  | Sub elist ->
    elist
    |> List.map str_of_expr
    |> String.concat " "
    |> sprintf "(- %s)"
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

let str_of_cr (cr : cmd_ref) =
  match cr with
  | Premise s -> sprintf "prem_%s" s
  | Derived i -> sprintf "step_%d" i

let str_of_cmd (cmd : cmd) =
  match cmd with
  | Res (e1, cr1, cr2) ->
    sprintf "(res %s %s %s)" (str_of_expr e1) (str_of_cr cr1) (str_of_cr cr2)
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

let str_of_prem (n, e) =
  sprintf "(let-proof ((prem_%s (assume %s)))\n" n (str_of_expr e)

let str_of_cmd2 i cmd =
  sprintf "(let-proof ((step_%d %s))\n" i (str_of_cmd cmd)

let str_of_prog (prog : prog) =
  let premises =
    prog.premises
    |> StrMap.bindings
    |> List.map str_of_prem
    |> String.concat "" in
  let commands =
    prog.cmd_list
    |> List.mapi str_of_cmd2
    |> String.concat "" in
  let num_paren = StrMap.cardinal prog.premises + List.length prog.cmd_list in
  let last_step_proof = sprintf "step_%d\n" (List.length prog.cmd_list - 1) in
  let end_paren = String.init num_paren (fun _ -> ')') in
  sprintf "unsat\n%s%s%s%s" premises commands last_step_proof end_paren

let str_of_lit (lit : lit) =
  match lit with
  | Pos e1 -> sprintf "Pos %s" (str_of_expr e1)
  | Neg e1 -> sprintf "Neg %s" (str_of_expr e1)

let str_of_litset (ls : LitSet.t) =
  ls
  |> LitSet.elements
  |> List.map str_of_lit
  |> String.concat ", "
  |> sprintf "{%s}"

(*
(* Normalization of LIA term *)

let term_list (e : expr) : expr list =
  match e with
  | Ivar _ -> [e]
  | Add elist -> elist
  | _ -> raise (ResoluteError "non-ivar/add in term list")

let scale_term (n : int) (d : int) (e : expr) : expr =
  match e with
  | Ivar (n1, d1, v) -> Ivar (n*n1, d*d1, v)
  | _ -> raise (ResoluteError "non-term in mul-add case")

(* Should return either: an ivar, or a sum of ivars. Duplicate terms, 0 *)
(* coefficients, non-reduced fractions ok. *)
let rec flatten_expr (e : expr) : expr =
  match e with
  | Ivar (n, d, v) -> Ivar (n, d, v)
  | Add elist ->
    let flat_list =
      elist
      |> List.map flatten_expr
      |> List.map term_list
      |> List.flatten in
    Add flat_list
  | Mul (Ivar (n1, d1, cv1), Mul (Ivar (n2, d2, cv2), e))
    when cv1 = const_varname && cv2 = const_varname ->
    flatten_expr (Mul (Ivar (n1*n2, d1*d2, const_varname), e))
  | Mul (Ivar (n1, d1, cv1), Ivar (n2, d2, v))
    when cv1 = const_varname ->
    Ivar (n1*n2, d1*d2, v)
  | Mul (Ivar (n, d, cv1), Add elist)
    when cv1 = const_varname ->
    let flat_add = flatten_expr (Add elist) in
    (match flat_add with
     | Add flat_elist ->
       Add (List.map (fun e -> scale_term n d e) flat_elist)
     | _ -> raise (ResoluteError "flattened sum not sum in mul-add case")
    )
  | Mul _ -> raise (ResoluteError "flatten_expr with mul & non-arith inside")
  | _ -> raise (ResoluteError "flatten_expr with non-arith expr")
*)
