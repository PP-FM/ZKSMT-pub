%{
    open Resolute_raw

    let rec unwind_expr_expr lst end_expr =
      match lst with
        | [] -> end_expr
        | (name, e) :: tail ->
           LetExpr (name, e, unwind_expr_expr tail end_expr)

    let rec unwind_expr lst p =
      match lst with
        | [] -> p
        | (name, e) :: tail ->
           Let (name, e, unwind_expr tail p)

    let rec unwind_proof lst p =
      match lst with
        | [] -> p
        | (name, proof) :: tail ->
           LetProof (name, proof, unwind_proof tail p)
%}

%token Teof
%token <string> Tname
%token <int> Tnum
%token <string> Tann

%token Tunsat
%token Tlet
%token Tletproof
%token Tres
%token Tassume
%token Teq
%token Timpl
%token Tand
%token Tor
%token Tnot
%token Ttrue
%token Tfalse
%token Tdistinct
%token Txor
%token Tite
%token Tplus
%token Tminus
%token Tstar
%token Tlt
%token Tleq
%token Tgt
%token Tgeq

%token Timplpos
%token Tandneg
%token Torpos
%token Tdistinctneg
%token Tfarkas
%token Txorpos
%token Txorneg

%token Tlparen
%token Trparen
%token Tbang

%start fullproof
%type <Resolute_raw.proof> fullproof

%%

expr:
| Tname { Var $1 }
| Ttrue { True }
| Tfalse { False }
| Tlparen Tnot expr Trparen { Not $3 }
| Tlparen Tand list(expr) Trparen { And $3 }
| Tlparen Tor list(expr) Trparen { Or $3 }
| Tlparen Teq expr expr Trparen { Eq ($3, $4) }
| Tlparen Timpl expr expr Trparen { Impl ($3, $4) }
| Tlparen Tname list(expr) Trparen { App ($2, $3) }
| Tlparen Tdistinct list(expr) Trparen { Distinct $3 }
| Tlparen Tplus list(expr) Trparen { Add $3 }
| Tlparen Tstar list(expr) Trparen { Mul $3 }
| Tlparen Tminus list(expr) Trparen { Sub $3 }
| Tnum { Int $1 }
| Tlparen Tlt expr expr Trparen { Lt ($3, $4) }
| Tlparen Tleq expr expr Trparen { Leq ($3, $4) }
| Tlparen Tgt expr expr Trparen { Gt ($3, $4) }
| Tlparen Tgeq expr expr Trparen { Geq ($3, $4) }
| Tlparen Txor list(expr) Trparen { Xor $3 }
| Tlparen Tite expr expr expr Trparen { Ite ($3, $4, $5) }
| Tlparen Tlet Tlparen list(name_decl) Trparen expr Trparen
{
  unwind_expr_expr $4 $6
}

annotation_entry:
| expr { () }
| Tplus { () }
| Tminus { () }

annotation:
| Tann { () }
| Tann Tlparen list(annotation_entry) Trparen { () }

name_decl:
| Tlparen Tname expr Trparen { ($2, $3) }

int_expr_pair:
| Tnum expr { $1, $2 }

proof_decl:
| Tlparen Tname proof Trparen { ($2, $3) }

proof:
| Tlparen Tlet Tlparen list(name_decl) Trparen proof Trparen
    {
      unwind_expr $4 $6
    }
| Tlparen Tletproof Tlparen list(proof_decl) Trparen proof Trparen
    {
      unwind_proof $4 $6
    }
| Tlparen Tres expr proof proof Trparen { Res ($3, $4, $5) }
| Tlparen Tassume expr Trparen { Assume $3 }
| Tlparen Tbang proof list(annotation) Trparen { $3 }
| Tlparen Tname list(expr) Trparen { Axiom ($2, [], $3) }
| Tlparen Timplpos Tnum list(expr) Trparen { Axiom ("=>+", [$3], $4) }
| Tlparen Tandneg Tnum list(expr) Trparen { Axiom ("and-", [$3], $4) }
| Tlparen Torpos Tnum list(expr) Trparen { Axiom ("or+", [$3], $4) }
| Tlparen Tdistinctneg Tnum Tnum list(expr) Trparen { Axiom ("distinct-", [$3; $4], $5) }
| Tlparen Tfarkas list(int_expr_pair) Trparen
{
  Axiom ("farkas", List.map fst $3, List.map snd $3)
}
| Tlparen Txorpos Tlparen list(expr) Trparen Tlparen list(expr) Trparen
  Tlparen list(expr) Trparen Trparen
{
  Axiom ("xor+", [], [Xor $4; Xor $7; Xor $10])
}
| Tlparen Txorneg Tlparen list(expr) Trparen Tlparen list(expr) Trparen
  Tlparen list(expr) Trparen Trparen
{
  Axiom ("xor-", [], [Xor $4; Xor $7; Xor $10])
}
| Tname { ProofVar $1 }

fullproof:
| Tunsat proof Teof { $2 }
