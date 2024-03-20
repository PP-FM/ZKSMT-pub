
#include <string>
#include <iostream>
#include <vector>
#include <cassert>
#include "equal_checker.h"
using namespace std;

// class Expr {
// public:
//     NodeID node;
//     ExprID arg1;
//     ExprID arg2;
//     ListExprID listarg;
//     VarID var;
// };

// class ProofStep {
// public:
//     ClauseID result;
//     RuleID rule;
//     ExprID expr_args[MAX_EXPR_ARGS]; // why we need this?
//     ClauseID clause_args[MAX_CLAUSE_ARGS];
//     // Result is stored seperately in clause table with index result;
// };

void proof_check_symm(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_eq_expr = proof->expr_table[result_id];
    ClauseID prem_clause_id = step.clause_args[0];
    ExprID prem_expr_id = proof->clause_table[prem_clause_id].result;
    Expr prem_eq_expr = proof->expr_table[prem_expr_id];

    assert (result_eq_expr.node == EQ);
    assert (prem_eq_expr.node == EQ);
    assert (result_eq_expr.arg1 == prem_eq_expr.arg2);
    assert (result_eq_expr.arg2 == prem_eq_expr.arg1);
}

void proof_check_neg_symm(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_non_eq_expr = proof->expr_table[result_id];
    ExprID result_eq_expr_id = result_non_eq_expr.arg1;
    Expr result_eq_expr = proof->expr_table[result_eq_expr_id];
    
    ClauseID prem_clause_id = step.clause_args[0];
    ExprID prem_expr_id = proof->clause_table[prem_clause_id].result;
    Expr prem_non_eq_expr = proof->expr_table[prem_expr_id];
   
    ExprID prem_eq_expr_id = prem_non_eq_expr.arg1;
    Expr prem_eq_expr = proof->expr_table[prem_eq_expr_id];
    
    assert (result_non_eq_expr.node == NOT);
    assert (prem_non_eq_expr.node == NOT);
    assert (result_eq_expr.arg1 == prem_eq_expr.arg2);
    assert (prem_eq_expr.arg2 == prem_eq_expr.arg1);
}

// RESOLUTE version of symmetry
void proof_check_res_symm(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() == 2);
    Expr eq1_expr = proof->expr_table[result_args[0]];
    Expr not_expr = proof->expr_table[result_args[1]];
    Expr eq2_expr = proof->expr_table[not_expr.arg1];
    assert(not_expr.node == NOT);
    assert(eq1_expr.node == EQ);
    assert(eq2_expr.node == EQ);
    assert(eq1_expr.arg1 == eq2_expr.arg2);
    assert(eq1_expr.arg2 == eq2_expr.arg1);
}

void proof_check_refl(Proof *proof, ProofStep step)  {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr eq_expr = proof->expr_table[result_id];
    assert(eq_expr.node == EQ);
    assert(eq_expr.arg1 == eq_expr.arg2);
}

void proof_check_res_refl(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 1);
    Expr eq_expr = proof->expr_table[or_args[0]];
    assert(eq_expr.node == EQ);
    assert(eq_expr.arg1 == eq_expr.arg2);
}

void proof_check_trans(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_eq_expr = proof->expr_table[result_id];

    ClauseID prem_clause_id_0 = step.clause_args[0];
    ExprID  prem_expr_id_0 = proof->clause_table[prem_clause_id_0].result;
    Expr prem_eq_expr_0 = proof->expr_table[prem_expr_id_0];

    ClauseID prem_clause_id_1 = step.clause_args[1];
    ExprID  prem_expr_id_1 = proof->clause_table[prem_clause_id_1].result;
    Expr prem_eq_expr_1 = proof->expr_table[prem_expr_id_1];


    assert (result_eq_expr.node == EQ);
    assert (prem_eq_expr_0.node == EQ);
    assert (prem_eq_expr_1.node == EQ);

    assert(prem_eq_expr_0.arg2 == prem_eq_expr_1.arg1 );
    assert(result_eq_expr.arg1 == prem_eq_expr_0.arg1 );
    assert(result_eq_expr.arg2 == prem_eq_expr_1.arg2 );
}

void proof_check_res_trans(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() == 3);
    Expr eq0_expr = proof->expr_table[result_args[0]];
    Expr not1_expr = proof->expr_table[result_args[1]];
    Expr eq1_expr = proof->expr_table[not1_expr.arg1];
    Expr not2_expr = proof->expr_table[result_args[2]];
    Expr eq2_expr = proof->expr_table[not2_expr.arg1];
    assert(eq0_expr.node == EQ);
    assert(eq1_expr.node == EQ);
    assert(eq2_expr.node == EQ);
    assert(not1_expr.node == NOT);
    assert(not2_expr.node == NOT);
    assert(eq0_expr.arg1 == eq1_expr.arg1);
    assert(eq0_expr.arg2 == eq2_expr.arg2);
    assert(eq1_expr.arg2 == eq2_expr.arg1);
}

// this version is not n-ary, but the other is
void proof_check_cong(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_eq_expr = proof->expr_table[result_id];

    ExprID lhs_id = result_eq_expr.arg1;
    ExprID rhs_id = result_eq_expr.arg2;

    Expr lhs_expr = proof->expr_table[lhs_id];
    Expr rhs_expr = proof->expr_table[rhs_id];

    ClauseID prem_eq_cls_id_0 = step.clause_args[0];
    ExprID prem_eq_expr_id_0 = proof->clause_table[prem_eq_cls_id_0].result;
    Expr prem_eq_expr_0 = proof->expr_table[prem_eq_expr_id_0];

    ClauseID prem_eq_cls_id_1 = step.clause_args[1];
    ExprID prem_eq_expr_id_1 = proof->clause_table[prem_eq_cls_id_1].result;
    Expr prem_eq_expr_1 = proof->expr_table[prem_eq_expr_id_1];

    assert(lhs_expr.arg1 == prem_eq_expr_0.arg1);
    assert(rhs_expr.arg1 == prem_eq_expr_0.arg2);

    assert(lhs_expr.arg2 == prem_eq_expr_1.arg1);
    assert(rhs_expr.arg2 == prem_eq_expr_1.arg2);

    assert (result_eq_expr.node == EQ);
    assert (lhs_expr.node == APPLY);
    assert (rhs_expr.node == APPLY);
    assert (prem_eq_expr_0.node == EQ);
    assert (prem_eq_expr_1.node == EQ);
}

void proof_check_res_cong(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() >= 1);

    Expr app_eq_expr = proof->expr_table[result_args[0]];
    assert(app_eq_expr.node == EQ);
    Expr app1 = proof->expr_table[app_eq_expr.arg1];
    assert(app1.node == NAPPLY);
    vector<ExprID> app1_args = proof->expr_list_table[app1.listarg];
    Expr app2 = proof->expr_table[app_eq_expr.arg2];
    assert(app2.node == NAPPLY);
    vector<ExprID> app2_args = proof->expr_list_table[app2.listarg];

    int s = app1_args.size();
    assert(s == app2_args.size());
    assert(s + 1 == result_args.size());
    // same function name
    assert(app1.var == app2.var);

    for (int i = 0; i < s; i++) {
        Expr not_eq_expr = proof->expr_table[result_args[i+1]];
        assert(not_eq_expr.node == NOT);
        Expr arg_eq_expr = proof->expr_table[not_eq_expr.arg1];
        assert(arg_eq_expr.node == EQ);
        assert(arg_eq_expr.arg1 == app1_args[i]);
        assert(arg_eq_expr.arg2 == app2_args[i]);
    }
}

void proof_check_true_intro(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_eq_expr = proof->expr_table[result_id];
    
    ClauseID prem_eq_cls_id = step.clause_args[0];
    ExprID prem_eq_expr_id = proof->clause_table[prem_eq_cls_id].result;
    ExprID true_id = result_eq_expr.arg2;

    Expr true_expr = proof->expr_table[true_id];
    
    assert (true_expr.node == NODE_TRUE);
    assert (result_eq_expr.node == EQ);
    assert (prem_eq_expr_id == result_eq_expr.arg1);
}

void proof_check_true_elim(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    ClauseID prem_eq_cls_id = step.clause_args[0];
    ExprID prem_eq_expr_id = proof->clause_table[prem_eq_cls_id].result;
    Expr prem_eq_expr = proof->expr_table[prem_eq_expr_id];
    ExprID true_id = prem_eq_expr.arg2;
    Expr true_expr = proof->expr_table[true_id];

    assert (prem_eq_expr.node == EQ);
    assert (prem_eq_expr.arg1 == result_id);
    assert (true_expr.node == NODE_TRUE);
}

void proof_check_false_intro(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_eq_expr = proof->expr_table[result_id];
     
    
    ExprID false_id = result_eq_expr.arg2;
    Expr false_expr = proof->expr_table[false_id];

    ClauseID prem_eq_cls_id = step.clause_args[0];
    ExprID prem_eq_expr_id = proof->clause_table[prem_eq_cls_id].result;
    Expr  prem_eq_expr = proof->expr_table[prem_eq_expr_id];
    
    assert (false_expr.node == NODE_FALSE);
    assert (result_eq_expr.node == EQ);
    assert (prem_eq_expr.node == NOT);
    assert (prem_eq_expr.arg1 == result_eq_expr.arg1);
}

void proof_check_false_elim(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_eq_expr = proof->expr_table[result_id];

    ClauseID prem_eq_cls_id = step.clause_args[0];
    ExprID prem_eq_expr_id = proof->clause_table[prem_eq_cls_id].result;
    Expr prem_eq_expr = proof->expr_table[prem_eq_expr_id];
    
    ExprID false_id = prem_eq_expr.arg2;
    Expr false_expr = proof->expr_table[false_id];

    assert (result_eq_expr.node == NOT);
    assert (false_expr.node == NODE_FALSE);
    assert (prem_eq_expr.node == EQ);
    assert (prem_eq_expr.arg1 == result_eq_expr.arg1);
}
