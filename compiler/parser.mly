%{
open Raw_ast
open Rule_ast

%}

%token Teof
%token <string> Tname

%token Tunsat
%token Tdeclare
%token Tdefine
%token Tcheck
%token Tunderscore
%token Tplet
%token Tscope
%token Tholds

%token Tat
%token Tcolon
%token Tslash
%token Thash
%token Tlparen
%token Trparen
%token Texclamation
%token Tcaret

%start derivation
%type <Raw_ast.prog> derivation

%start rule_file2
%type <(string * Rule_ast.rule_ty) list> rule_file2

%%

rule_term:
| Tname { Atom $1 }
| Tlparen list(rule_term) Trparen { App $2 }

rule_ty1:
| rule_term { false, $1 }
| Tlparen Tholds rule_term Trparen { true, $3 }

rule_ty2:
| rule_ty1 { End $1 }
| Tlparen
    Texclamation
    Tname
    Tlparen Tcaret
      Tlparen Tname list(Tname) Trparen
      rule_term
    Trparen
    rule_ty2
  Trparen
  {
    SideCondition ($3, $7, $8, $10, $12)
  }
| Tlparen Texclamation Tname rule_ty1 rule_ty2 Trparen {
            Arg ($3, $4, $5)
          }

rule2:
| Tlparen Tdeclare Tname rule_ty2 Trparen { $3, $4 }

rule_file2:
| list(rule2) Teof { $1 }

ignore_term:
| Tname { () }
| Tlparen Tname list(ignore_term) Trparen { () }

term:
| Tname { Atom $1 }
| Tunderscore { Hole }
| Tlparen Tname list(term) Trparen { App ($2, $3) }
| Tlparen Tplet term term term Tlparen Tslash Tname term Trparen Trparen
  { Let ($3, $4, $5, $8, $9) }
| Tlparen Tscope term term Tlparen Tslash Tname term Trparen Trparen
  { Scope ($3, $4, $7, $8) }

declaration:
| Tlparen Tdeclare Tname Tname Trparen { () }

definition:
| Tlparen Tdefine Tname ignore_term Trparen { $3 }

holds_term:
| Tlparen Tholds term Trparen { $3 }

colon:
| Tlparen Tcolon holds_term term Trparen { $3, $4 }

premise:
| Tlparen Thash Tname holds_term premise Trparen {
            let premise_list, c = $5 in
            (($3, $4) :: premise_list), c
          }
| colon { [], $1 }

entry:
| Tlparen Tat Tname term entry Trparen {
            let entry_list, premise_cmd = $5 in
            (($3, $4) :: entry_list), premise_cmd
          }
| premise { [], $1 }

check:
| Tlparen Tcheck entry Trparen { $3 }

def_check:
| check {
           let (temps, (premises, (conclusion, derivation))) = $1 in
           {
             vars=[];
             temps;
             premises;
             conclusion;
             derivation
           }
    }
| definition def_check {
               let d = $2 in
               {d with vars=($1::d.vars)}
             }

decl_def_check:
| def_check { $1 }
| declaration decl_def_check { $2 }

derivation:
| Tunsat decl_def_check Teof { $2 }
