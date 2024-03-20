open Maps

type expect =
  | ExpConstant of string
  | ExpFiller of string
  | ExpApp of expect * expect
  | ExpNaryApp of string * (expect list)

type side_condition = {
  args : expect list;
  result_expect : expect;
  fn_name : string
}

type signature = {
  pure_args : expect list;
  hyp_args : expect list;
  sc_list : side_condition list;
  result : expect
}

type arg_type = ArgHole | ArgExpr | ArgHyp

(* Lookup codes for rules (used in table format) *)
val rule_codes : int StrMap.t

(* Lookup types of arguments of rules. *)
val rule_args : arg_type list StrMap.t

(* Lookup signature of rules. Calling this parses the rule file. *)
val init_sgn_map : unit -> signature StrMap.t

(* Lookup side condition functions. *)
val sc_eval_map : (Binary_untyped.expr list -> Binary_untyped.expr) StrMap.t

val debug_test : unit -> unit
