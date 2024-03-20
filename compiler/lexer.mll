{
  open Parser
}

rule read = parse
  | eof { Teof }
  | [' ' '\t' '\r' '\n'] { read lexbuf }
  | ";"[^'\n']*'\n'      { read lexbuf }
  | ";"[^'\n']* eof      { Teof }

  | "unsat" { Tunsat }
  | "declare" { Tdeclare }
  | "define" { Tdefine }
  | "check" { Tcheck }
  | "_" { Tunderscore }
  | "plet" { Tplet }
  | "scope" { Tscope }
  | "holds" { Tholds }

  | ['A'-'Z' 'a'-'z' '0'-'9' '_' '.' '=' '>']* as lxm { Tname lxm }

  | "@" { Tat }
  | ":" { Tcolon }
  | '\\' { Tslash }
  | "#" { Thash }
  | '(' { Tlparen }
  | ')' { Trparen }
  | '!' { Texclamation }
  | '^' { Tcaret }
