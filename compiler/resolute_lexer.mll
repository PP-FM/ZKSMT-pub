{
  open Resolute_parser
}

rule read = parse
  | eof { Teof }
  | [' ' '\t' '\r' '\n'] { read lexbuf }

  | "unsat" { Tunsat }
  | "let" { Tlet }
  | "let-proof" { Tletproof }
  | "res" { Tres }
  | "assume" { Tassume }
  | "=" { Teq }
  | "=>" { Timpl }
  | "and" { Tand }
  | "or" { Tor }
  | "not" { Tnot }
  | "true" { Ttrue }
  | "false" { Tfalse }
  | "distinct" { Tdistinct }
  | "xor" { Txor }
  | "ite" { Tite }
  | '-' { Tminus }
  | '+' { Tplus }
  | '*' { Tstar }
  | '<' { Tlt }
  | "<=" { Tleq }
  | '>' { Tgt }
  | ">=" { Tgeq }

  (* Axiom names with integer arguments *)
  | "=>+" { Timplpos }
  | "and-" { Tandneg }
  | "or+" { Torpos }
  | "distinct-" { Tdistinctneg }
  | "farkas" { Tfarkas }
  | "xor+" { Txorpos }
  | "xor-" { Txorneg }

  | ['0'-'9']+ as lxm { Tnum (int_of_string lxm) }

  | ['A'-'Z' 'a'-'z' '0'-'9' '_' '.' '=' '>' '+' '-' '*' '@' '$' '|' '[' ']' '#']+ as lxm { Tname lxm }
  | ':' ['A'-'Z' 'a'-'z' '_']* as lxm { Tann lxm }

  | "(" { Tlparen }
  | ")" { Trparen }
  | "!" { Tbang }
