
#include <string>
#include <iostream>
#include <vector>
#include <cassert>
#include "boolean_checker.h"
#include "cnf_checker.h"
using namespace  std;

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

void proof_check_cnf_and_pos(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 
    ExprID neg_and_list_expr_ind = result_expr_args[0]; 
    Expr neg_and_list_expr = proof->expr_table[neg_and_list_expr_ind];
    
    ExprID and_list_expr_ind = neg_and_list_expr.arg1;
    Expr and_list_expr = proof->expr_table[and_list_expr_ind];
    ListExprID and_list_listarg_ind = and_list_expr.listarg; 
    vector<int> and_list_args = proof->expr_list_table[and_list_listarg_ind]; 

    assert_contain(result_expr_args[1], and_list_args); 
    assert(and_list_expr.node == AND); 
    assert(neg_and_list_expr.node == NOT); 
    assert(result_cl.node == OR);     
}

void proof_check_cnf_neg(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 
    ExprID and_list_expr_ind = result_expr_args[0]; 
    ExprID or_list_expr_ind = result_expr_args[1]; 

    Expr and_list_expr = proof->expr_table[and_list_expr_ind];
    Expr or_list_expr = proof->expr_table[or_list_expr_ind];
    vector<ExprID> and_list_args = proof->expr_list_table[and_list_expr.listarg]; 
    vector<ExprID> or_list_args = proof->expr_list_table[or_list_expr.listarg]; 

    for (int i =0; i < and_list_args.size(); i ++) assert_neg(and_list_args[i], or_list_args[i], proof->expr_table);  
    assert (result_cl.node == OR);
}

void proof_check_cnf_or(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 
    assert (result_cl.node == OR);
    assert_neg(result_expr_args[0], result_expr_args[1], proof->expr_table);
}

void proof_check_cnf_or_neg(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 
    
    ExprID or_list_expr_ind = result_expr_args[0]; 
    Expr or_list_expr = proof->expr_table[or_list_expr_ind];
    
    ExprID neg_expr_ind = result_expr_args[1];
    Expr neg_expr = proof->expr_table[neg_expr_ind];

    ListExprID or_list_listarg_ind = or_list_expr.listarg; 
    vector<int> or_list_args = proof->expr_list_table[or_list_listarg_ind]; 

    assert_contain(result_expr_args[1], or_list_args); 
    assert(or_list_expr.node == OR); 
    assert(neg_expr.node == NOT); 
    assert(result_cl.node == OR);     
}

// cnf implies
void proof_check_cnf_implies_pos(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 

    Expr expr_neg_f1_implies_f2 = proof->expr_table[result_expr_args[0]]; 
    assert (expr_neg_f1_implies_f2.node == NOT); 
    Expr expr_f1_implies_f2 = proof->expr_table[expr_neg_f1_implies_f2.arg1];
    assert (expr_f1_implies_f2.node == IMPLIES); 
    ExprID expr_f1_in_implies_id = expr_f1_implies_f2.arg1;
    ExprID expr_f2_in_implies_id = expr_f1_implies_f2.arg2;

    Expr expr_neg_f1 = proof->expr_table [result_expr_args[1]];
    assert (expr_neg_f1.node == NOT);  
    ExprID expr_f1_id = expr_neg_f1.arg1; 
    ExprID expr_f2_id  = result_expr_args[2];
    assert (expr_f1_in_implies_id == expr_f1_id);
    assert (expr_f2_in_implies_id == expr_f2_id);
}

void proof_check_cnf_implies_neg1(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 

    Expr expr_f1_implies_f2 = proof->expr_table[result_expr_args[0]]; 
    assert (expr_f1_implies_f2.node == IMPLIES); 
    ExprID expr_f1_in_implies_id = expr_f1_implies_f2.arg1;
    ExprID expr_f2_in_implies_id = expr_f1_implies_f2.arg2;

    ExprID expr_f1_id = result_expr_args[1];
    assert (expr_f1_in_implies_id == expr_f1_id);
}

void proof_check_cnf_implies_neg2(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 

    Expr expr_f1_implies_f2 = proof->expr_table[result_expr_args[0]]; 
    assert (expr_f1_implies_f2.node == IMPLIES); 
    ExprID expr_f1_in_implies_id = expr_f1_implies_f2.arg1;
    ExprID expr_f2_in_implies_id = expr_f1_implies_f2.arg2;

    Expr expr_neg_f2 = proof->expr_table [result_expr_args[1]];
    assert (expr_neg_f2.node == NOT);  
    ExprID expr_f2_id = expr_neg_f2.arg1; 

    assert (expr_f2_in_implies_id == expr_f2_id);
}

// cnf equiv 
// this handles only binary XOR
// those versions are more general than what we have here
void proof_check_cnf_equiv_xor_pos1(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 

    Expr expr_not_f1_equal_f2 = proof->expr_table[result_expr_args[0]]; 
    Expr expr_f1_equal_f2 = proof->expr_table[expr_not_f1_equal_f2.arg1]; 
    Expr expr_not_f1 = proof->expr_table[result_expr_args[1]]; 

    assert (expr_not_f1_equal_f2.node == NOT);
    assert (expr_not_f1.node == NOT);
    assert ((expr_f1_equal_f2.node == EQ) || (expr_f1_equal_f2.node == XOR));
    assert (expr_f1_equal_f2.arg1 == expr_not_f1.arg1);
    assert (expr_f1_equal_f2.arg2 == result_expr_args[2]);
}

void proof_check_cnf_equiv_xor_pos2(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 

    Expr expr_not_f1_equal_f2 = proof->expr_table[result_expr_args[0]]; 
    Expr expr_f1_equal_f2 = proof->expr_table[expr_not_f1_equal_f2.arg1]; 
    Expr expr_not_f2 = proof->expr_table[result_expr_args[2]]; 

    assert (expr_not_f1_equal_f2.node == NOT);
    assert (expr_not_f2.node == NOT);
    assert ((expr_f1_equal_f2.node == EQ) || (expr_f1_equal_f2.node == XOR));
    assert (expr_f1_equal_f2.arg1 == expr_not_f2.arg1);
    assert (expr_f1_equal_f2.arg2 == result_expr_args[1]);
}

void proof_check_cnf_equiv_xor_neg1(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 
    Expr expr_f1_equal_f2 = proof->expr_table[result_expr_args[0]]; 
    assert (result_expr_args[1] == expr_f1_equal_f2.arg1);
    assert (result_expr_args[2] == expr_f1_equal_f2.arg2);
    assert ((expr_f1_equal_f2.node == EQ) || (expr_f1_equal_f2.node == XOR));
}

void proof_check_cnf_equiv_xor_neg2(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;  
    Expr result_cl = proof->expr_table[result_id];
    assert (result_cl.node == OR);
    vector<ExprID> result_expr_args = proof->expr_list_table[result_cl.listarg]; 

    Expr expr_f1_equal_f2 = proof->expr_table[result_expr_args[0]]; 

    assert (result_expr_args[1] == proof->expr_table[expr_f1_equal_f2.arg1].arg1);
    assert (result_expr_args[2] == proof->expr_table[expr_f1_equal_f2.arg2].arg1);
    assert ((expr_f1_equal_f2.node == EQ) || (expr_f1_equal_f2.node == XOR));
    assert (proof->expr_table[expr_f1_equal_f2.arg1].node == NOT); 
    assert (proof->expr_table[expr_f1_equal_f2.arg2].node == NOT);
}

