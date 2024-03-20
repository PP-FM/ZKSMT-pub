(* Ast for rules *)
type term =
  | Atom of string
  | App of (term list)

type ty = bool * term

type rule_ty =
  | End of ty
  | SideCondition of string * string * (string list) * term * rule_ty
  | Arg of string * ty * rule_ty
