type expr =
  | Atom of string
  | ScopeVar of string
  | Hole
  | App of string * (expr list)
  | Let of expr * expr * expr * string * expr
  | Scope of expr * expr * string * expr
[@@deriving show]

type entry = string * expr
[@@deriving show]

type prog = {
  vars : string list;
  (* Temporary variables, all of which are inlined in Inline_temp. *)
  temps : entry list;
  premises : entry list;
  (* Should always be false for unsat. *)
  conclusion : expr;
  (* The entire proof tree. *)
  derivation : expr
}
[@@deriving show]
