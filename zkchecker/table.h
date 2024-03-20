#pragma once;

#ifndef TABLE_H
#define TABLE_H

#include <vector>
#include <string>
#include <iostream>
#include <emp-zk/emp-zk.h>
#include <iostream>
#include "emp-tool/emp-tool.h"
#include "emp-zk/extensions/ram-zk/ostriple.h"
#include "roram.h"

using namespace std;

#define MAX_EXPR_ARGS 3
#define MAX_CLAUSE_ARGS 3

// For unused fields

// DEFAULT defined in commons.h
#define CLAUSE_DEFAULT 99999
// Index in uf table where the default UF entry resides
#define UF_DEFAULT 0

// Types
#define ZType Integer
#define TY_DEFAULT (0)
#define TY_BOOL (1)
#define TY_INT (2)

// TODO might not carry over exactly to ZK
const int32_t TY_DEF_SORT_BIT = (1 << 30);
const int32_t TY_UF_BIT = 0x80000000;

#define NodeID int

// Core
const NodeID APPLY      =  0; // Obsolete binary application
const NodeID VAR        =  1;
const NodeID EQ         =  2;
const NodeID AND        =  3;
const NodeID OR         =  4;
const NodeID NODE_TRUE  =  5;
const NodeID NODE_FALSE =  6;
const NodeID XOR        =  7;
const NodeID IMPLIES    =  8;
const NodeID ITE        =  9;
const NodeID NOT        = 10;

// EUF
const NodeID NAPPLY     = 11;

// LIA
const NodeID TERM       = 12;
const NodeID ADD        = 13;
const NodeID MUL        = 14;
const NodeID LEQ        = 15;
const NodeID GEQ        = 16;
const NodeID LT         = 17;
const NodeID GT         = 18;

const NodeID NODE_DEFAULT = 19;

#define RuleID int
const RuleID EQ_RESOLVE = 0;
const RuleID TRANS = 1;
const RuleID CONG = 2;
const RuleID REFL = 3;
const RuleID TRUST = 4;
const RuleID AND_ELIM = 5;
const RuleID AND_INTRO1 = 6;
const RuleID AND_INTRO2 = 7;
const RuleID RESOLUTION = 8;
const RuleID CONTRA = 9;
const RuleID CNF_AND_POS = 10;
const RuleID CNF_OR_POS = 11;
const RuleID REORDERING = 12;
const RuleID FACTORING = 13;
const RuleID NEG_SYMM = 14;
const RuleID SYMM = 15;
const RuleID NOT_EST = 16;
const RuleID OR_EST = 17;
const RuleID AND_EST = 18;
const RuleID EQ_EST = 19;
const RuleID CONSISTENCY = 20;
const RuleID AND_SINGLE = 21;
const RuleID AND_FLATTEN = 22;
const RuleID AND_CONS_TRUE = 23;
const RuleID AND_CONS_EQUIV = 24;
const RuleID OR_SINGLE = 25;
const RuleID OR_FLATTEN = 26;
const RuleID OR_CONS_FALSE = 27;
const RuleID OR_CONS_EQUIV = 28;
const RuleID REFL_EQUIV = 29;
const RuleID EVAL_TRUE = 30;
const RuleID EVAL_FALSE = 31;
const RuleID TRUE_INTRO = 32;
const RuleID TRUE_ELIM = 33;
const RuleID FALSE_INTRO = 34;
const RuleID FALSE_ELIM = 35;
const RuleID NOT_AND = 36;
const RuleID NOT_AND_REV = 37;
const RuleID CNF_AND_NEG = 38;
const RuleID IMPL_EST = 39;
const RuleID CNF_OR_NEG = 40;
const RuleID CNF_IMPLIES_POS = 41;
const RuleID CNF_IMPLIES_NEG1 = 42;
const RuleID CNF_IMPLIES_NEG2 = 43;
const RuleID CNF_EQUIV_POS1 = 44;
const RuleID CNF_EQUIV_POS2 = 45;
const RuleID CNF_EQUIV_NEG1 = 46;
const RuleID CNF_EQUIV_NEG2 = 47;
const RuleID SPLIT = 48;
const RuleID MODUS_PONENS = 49;
const RuleID NOT_NOT_ELIM = 50;
const RuleID NOT_OR_ELIM = 51;
const RuleID IMPLIES_ELIM = 52;
const RuleID NOT_IMPLIES_ELIM1 = 53;
const RuleID NOT_IMPLIES_ELIM2 = 54;
const RuleID PROCESS_SCOPE = 55;
const RuleID SCOPE_DISCHARGE = 56;
const RuleID SCOPE_ASSUME = 57;
const RuleID WEAKEN_SCOPE = 58;
const RuleID OR_SINGLE2 = 59;
const RuleID IMPLIES_SINGLE = 60;
const RuleID EQ_EQUIV = 61;
const RuleID XOR_EST = 62;
const RuleID ITE_EST = 63;
const RuleID XOR_EQ_FALSE1 = 64;
const RuleID XOR_EQ_FALSE2 = 65;
const RuleID XOR_EQ_EQ = 66;
const RuleID CNF_ITE_POS1 = 67;
const RuleID CNF_ITE_POS2 = 68;
const RuleID CNF_ITE_POS3 = 69;
const RuleID CNF_ITE_NEG1 = 70;
const RuleID CNF_ITE_NEG2 = 71;
const RuleID CNF_ITE_NEG3 = 72;
const RuleID EQUIV_ELIM1 = 73;
const RuleID EQUIV_ELIM2 = 74;
const RuleID NOT_EQUIV_ELIM1 = 75;
const RuleID NOT_EQUIV_ELIM2 = 76;
const RuleID XOR_ELIM1 = 77;
const RuleID XOR_ELIM2 = 78;
const RuleID NOT_XOR_ELIM1 = 79;
const RuleID NOT_XOR_ELIM2 = 80;
const RuleID ITE_ELIM1 = 81;
const RuleID ITE_ELIM2 = 82;
const RuleID NOT_ITE_ELIM1 = 83;
const RuleID NOT_ITE_ELIM2 = 84;
const RuleID EQUIV_NOT_FALSE = 85;
const RuleID ITE_MATCH = 86;
const RuleID SYMM_EQUIV = 100;
const RuleID TODO_REVAND = 101;
const RuleID TODO_OR_DUP = 102;
const RuleID OR_TRUE = 103;
const RuleID TODO_ANDNOTRUE = 104;
const RuleID NOT_NOT_EQUIV = 105;
const RuleID BOOL_DISCR_EQUIV = 106;

// RESOLUTE format rules

// Rules
const RuleID RES_RESOLUTION = 299;
const RuleID RES_FACTORING = 298;
const RuleID RES_OR_NIL = 297;
const RuleID RES_OR_SINGLE = 296;
const RuleID RES_OR_SINGLE_REV = 295;

// Boolean axioms
const RuleID RES_TRUE_POS = 200;
const RuleID RES_FALSE_NEG = 201;
const RuleID RES_NOT_POS = 202;
const RuleID RES_NOT_NEG = 203;
const RuleID RES_AND_POS = 204;
const RuleID RES_AND_NEG = 205;
const RuleID RES_OR_POS = 206;
const RuleID RES_OR_NEG = 207;
const RuleID RES_IMPL_POS1 = 208;
const RuleID RES_IMPL_POS2 = 209;
const RuleID RES_IMPL_NEG = 210;
const RuleID RES_EQ_POS1 = 211;
const RuleID RES_EQ_POS2 = 212;
const RuleID RES_EQ_NEG1 = 213;
const RuleID RES_EQ_NEG2 = 214;

// EUF axioms
const RuleID RES_REFL = 215;
const RuleID RES_SYMM = 216;
const RuleID RES_TRANS = 217;
const RuleID RES_CONG = 218;

// other Boolean axioms
const RuleID RES_XOR_POS = 219;
const RuleID RES_XOR_NEG = 220;
const RuleID RES_ITE1 = 221;
const RuleID RES_ITE2 = 222;
const RuleID RES_XOR1_POS = 294;
const RuleID RES_XOR1_NEG = 293;

const RuleID RES_NOT_CONG = 223;

// the subset of RESOLUTE's LIA axioms that are relevant for us
// some of these are consolidated
// TODO these values will likely need to change
const RuleID RES_POLY_ADD = 300;
const RuleID RES_POLY_MUL = 301;
const RuleID RES_FARKAS = 302;
const RuleID RES_TRICHOTOMY = 303;
const RuleID RES_TOTAL = 304;
const RuleID RES_OP_FLIP = 305;
const RuleID RES_TOTAL_INT = 306;
// other LIA rules that we created ourselves
// not all of these may be necessary
const RuleID LIA_SUM_REORDERING = 400;
const RuleID LIA_SUM_CONSOLIDATE = 401;
const RuleID LIA_DOUBLE_INEQ_EQ = 402;
const RuleID LIA_SELF_INEQ = 403;
const RuleID LIA_SINGLETON_ADD = 404;
const RuleID LIA_SINGLETON_REMOVE = 405;
const RuleID LIA_OP_WEAKEN = 406;
const RuleID LIA_CHAIN = 407;
const RuleID LIA_SUM_CONG = 408;
const RuleID LIA_CONST = 409;
const RuleID LIA_SUM_FLATTEN = 410;
const RuleID LIA_SCALED_SUM_FLATTEN = 411;
const RuleID LIA_ROW_ADD = 412;
const RuleID LIA_ROW_SCALING = 413;
const RuleID LIA_BINOP_CONG = 414;
const RuleID LIA_MUL_CONG = 415;
const RuleID LIA_MUL_SINGLE = 416;

// Dummy id for checking, used when assembling timing information.
const RuleID CHECK_EXPR = 699;
const RuleID CHECK_EXPR_LIST = 698;

#define VarID int

// not sure if we'll really need this
const VarID ZERO = 0;
// we should always treat this variable as equal to one
const VarID ONE = 1;

// Index into expression table
#define ExprID int
// Index into expression list table
#define ListExprID int
// Index into clause table
#define ClauseID int

// Plaintext classes not needed for zk checker.
/*
class Expr {
public:
    NodeID node;
    ExprID arg1;
    ExprID arg2;
    ListExprID listarg;
    VarID var;
    int numerator;
    int denominator;
};

class ProofStep {
public:
    RuleID rule;
    ClauseID clause;
    ExprID expr_args[MAX_EXPR_ARGS];
    ClauseID clause_args[MAX_CLAUSE_ARGS];
    // Result is stored seperately in clause table
};

class Clause {
public:
    ExprID result;
    bool is_assumption;
    int backptr;
};

// Top level structure.
class Proof {
public:
    int num_variables;
    int expr_table_len;
    // array with expr_table_len elements
    vector<Expr> expr_table;
    // maximum number of elements any single list will have
    int max_expr_list_len;
    int expr_list_table_len;
    // expr_list_table[i] is list i
    // expr_list_table[i][j] is element j of list i
    vector<vector<ExprID> > expr_list_table;
    int clause_table_len;
    int num_assumptions;
    // Each entry contains a pointer to the expr table of a clause that will be proven.
    // Entries 0 to num_assumptions-1 are assumptions, later entries are proven by steps.
    vector<Clause> clause_table;
    // Length is clause_table_len-num_assumptions.
    // Entry i is a proof of clause_table[i+num_assumptions].
    vector<ProofStep> step_table;
}; */

/*
// Example:
// Proving f b=a, assuming a=f b, using the symmetry rule.
// Variable a is 0, b is 1, f is 2
// This is the fields of Proof:

num_variables = 3;

expr_table_len = 6;

expr_table = [
{node=VAR    , arg1=DEFAULT, arg2=DEFAULT, listarg=DEFAULT, var=0      }, // a
{node=VAR    , arg1=DEFAULT, arg2=DEFAULT, listarg=DEFAULT, var=1      }, // b
{node=VAR    , arg1=DEFAULT, arg2=DEFAULT, listarg=DEFAULT, var=2      }, // f
{node=APPLY  , arg1=2      , arg2=1      , listarg=DEFAULT, var=DEFAULT}, // f b
{node=EQ     , arg1=3      , arg2=0      , listarg=DEFAULT, var=DEFAULT}, // f b= a
{node=EQ     , arg1=0      , arg2=3      , listarg=DEFAULT, var=DEFAULT}, // a=f b
];

max_expr_list_len = 0; // we don't actually have any lists
expr_list_table_len = 0;
expr_list_table = [];

clause_table_len = 2;
num_assumptions = 1;

clause_table = [
  5, // assumption: a = f b
  4  // proved in step 0: f b = a
]

step_table = [
{
  rule = SYMM;
  expr_args = [DEFAULT, DEFAULT];
  // We use the assumption, which is entry 0 in the clause table.
  clause_args = [0, DEFAULT, DEFAULT];
}
]


*/

// zero-knowledge types

#define ZNodeID Integer
#define ZExprID Integer
// Index into expression list table
#define ZListExprID Integer
// Index into clause table
#define ZClauseID Integer
#define ZVarID Integer
#define ZRuleID Integer

class ZExpr {
public:
    ZNodeID node;
    ZType type;
    Integer height;
    ZExprID arg1;
    ZExprID arg2;
    ZListExprID listarg;
    ZVarID var;
    Integer numerator;
};

class ZUfEntry {
public:
    // Return type
    ZType ret_ty;
    // Types of each argument
    // Should have size equal to proof.max_expr_list_length
    vector<ZType> arg_ty;
};

class ZClause {
public:
    ZExprID result;
};

class ZProofStep {
public:
    ZRuleID rule;
    ZClauseID clause;
    ZExprID expr_args[MAX_EXPR_ARGS];
    ZClauseID clause_args[MAX_CLAUSE_ARGS];
    // Result is stored seperately in clause table
};

class ZProof {
public:
// public information
    int32_t num_variables;
    int32_t expr_table_len;
    // array with expr_table_len elements
   
    // maximum number of elements any single list will have
    int32_t max_expr_list_len;
    int32_t expr_list_table_len;
    // expr_list_table[i] is list i
    // expr_list_table[i][j] is element j of list i
    RORAM<BoolIO<NetIO> > expr_list_table2;
    RORAM<BoolIO<NetIO> > expr_list_type_table2;
    RORAM<BoolIO<NetIO> > expr_list_max_height_table2;
    int32_t uf_table_len;
    RORAM<BoolIO<NetIO> > uf_table2;
    int32_t clause_table_len;
    int32_t num_assumptions;
    
    RORAM<BoolIO<NetIO> > expr_table2;
    // Each entry contains a pointer to the expr table of a clause that will be proven.
    // Entries 0 to num_assumptions-1 are assumptions, later entries are proven by steps.
    RORAM<BoolIO<NetIO> > clause_table2;
    // Length is clause_table_len-num_assumptions.
    // Entry i is a proof of clause_table[i+num_assumptions].
    vector<ZProofStep> step_table;
    
    // Constructor provided for constructing RORAM only. All fields still need to be
    // initialized.
    ZProof(int _party, int _max_expr_list_len)
        : expr_table2(RORAM<BoolIO<NetIO> >(_party, 32, 8, RORAM_EXPR)),
          expr_list_table2(RORAM<BoolIO<NetIO> >(_party, 32, _max_expr_list_len, RORAM_EXPR_LIST)),
          clause_table2(RORAM<BoolIO<NetIO> >(_party, 32, 1, RORAM_CLAUSE)),
          expr_list_type_table2(RORAM<BoolIO<NetIO> >(_party, 32, 1, RORAM_EXPR_LIST_TYPE)),
          expr_list_max_height_table2(RORAM<BoolIO<NetIO> >(_party, 32, 1, RORAM_EXPR_LIST_HEIGHT)),
          uf_table2(RORAM<BoolIO<NetIO> >(_party, 32, _max_expr_list_len+1, RORAM_UF))
    {}
};

#endif // TABLE_H
