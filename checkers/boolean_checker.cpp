
#include <string>
#include <iostream>
#include <vector>
#include <algorithm>
#include <cassert>
#include "boolean_checker.h"
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
void assert_contain(ExprID expr_ind, vector<ExprID>& l){
    assert(count(l.begin(), l.end(), expr_ind));    
}

int contained_copies(ExprID expr_ind, vector<ExprID>& l) {
    return count(l.begin(), l.end(), expr_ind);
}

void assert_all_identical(vector<ExprID>& l1, vector<ExprID>& l2){
    int s = l1.size();
    assert(s == l2.size());
    for (int i = 0; i < s; i++) {
        assert(l1[i] == l2[i]);
    }
}

void assert_neg(ExprID expr_id, ExprID neg_expr_id, const vector<Expr>& expr_table){
    Expr neg_expr = expr_table[neg_expr_id];
    assert (neg_expr.node == NOT); 
    assert (neg_expr.arg1 == expr_id);
}

// this is what's called "mapnot" in the paper
void assert_all_negated(vector<ExprID>& l1, vector<ExprID>& l2, const vector<Expr>& expr_table){
    int s = l1.size();
    assert(s == l2.size());
    for (int i = 0; i < s; i++) {
        assert_neg(l1[i], l2[i], expr_table);
    }
}

int list_poly(vector<ExprID> or_args) {
    // result needs to be independent of order of terms
    // however, it should not be independent of their multiplicity
    int s = or_args.size();
    int val = 1;
    for (int i = 0; i < s; i++) {
        val *= or_args[i];
    }
    return val;
}

int list_poly_with_pivot(vector<ExprID> or_args, ExprID pivot) {
    // this saves us the trouble of incorporating the pivot into the clause
    int s = or_args.size();
    int val = pivot;
    for (int i = 0; i < s; i++) {
        val *= or_args[i];
    }
    return val;
}

void proof_check_bool_resolution(Proof *proof, ProofStep step) {
    // three witnesses:  one for pivot and two for subsets
    // the first should be the negation of the pivot
    // that way I have IDs for both positive and negative versions
    // witnesses for subset relations should not contain pivots
    // can't use factoring as a helper function
    ExprID not_pivot_id = step.expr_args[0];
    Expr not_pivot = proof->expr_table[not_pivot_id];
    assert(not_pivot.node == NOT);
    ExprID pivot_id = not_pivot.arg1;
    ExprID subset1 = step.expr_args[1];
    // the arguments are IDs
    vector<ExprID> witness1 = proof->expr_list_table[proof->expr_table[subset1].listarg];
    ExprID subset2 = step.expr_args[2];
    // it doesn't really matter whether these have OR nodes
    // they never need to be proven
    vector<ExprID> witness2 = proof->expr_list_table[proof->expr_table[subset2].listarg];
    Expr resolved = proof->expr_table[proof->clause_table[step.clause].result];
    assert(resolved.node == OR);
    vector<ExprID> resolved_clause = proof->expr_list_table[resolved.listarg];
    Expr pos_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(pos_expr.node == OR);
    vector<ExprID> pos_clause = proof->expr_list_table[pos_expr.listarg];
    Expr neg_expr = proof->expr_table[proof->clause_table[step.clause_args[1]].result];
    assert(neg_expr.node == OR);
    vector<ExprID> neg_clause = proof->expr_list_table[neg_expr.listarg];

    assert_contain(pivot_id, pos_clause);
    assert_contain(not_pivot_id, neg_clause);
    assert(pos_clause.size() + witness1.size() == resolved_clause.size() + 1);
    assert(neg_clause.size() + witness2.size() == resolved_clause.size() + 1);
    assert(list_poly(pos_clause) * list_poly(witness1) == list_poly_with_pivot(resolved_clause, pivot_id));
    assert(list_poly(neg_clause) * list_poly(witness2) == list_poly_with_pivot(resolved_clause, not_pivot_id));
}

// This version is equal to the zk version (but with a very different algorithm)
void proof_check_bool_factoring(Proof *proof, ProofStep step) {
    Expr original_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(original_expr.node == OR);
    Expr factored_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(factored_expr.node == OR);
    vector<ExprID> original_args = proof->expr_list_table[original_expr.listarg];
    vector<ExprID> factored_args = proof->expr_list_table[factored_expr.listarg];

    vector<ExprID> original_copy_args(original_args);
    vector<ExprID> factored_copy_args(factored_args);
    sort(original_copy_args.begin(), original_copy_args.end());
    sort(factored_copy_args.begin(), factored_copy_args.end());

    int original_idx = 0;
    for (int i = 0; i < factored_copy_args.size(); i++) {
        bool found_one = false;
        while (
            original_idx < original_copy_args.size() &&
            original_copy_args[original_idx] == factored_copy_args[i]
              ) {
            original_idx += 1;
            found_one = true;
        }

        assert(found_one);
    }
}

void proof_check_split(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    // can I check size in constant time?
    assert(or_args.size() == 2);
    ExprID f1_id = or_args[0];
    Expr not_f2 = proof->expr_table[or_args[1]];
    assert(not_f2.node == NOT);
    assert(f1_id = not_f2.arg1);
}

void proof_check_eq_resolve(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    //vector<ClauseID> steps = step.clause_args;
    ClauseID prop_id = step.clause_args[0];
    ExprID prop_expr_id = proof->clause_table[prop_id].result;
    ClauseID eq_id = step.clause_args[1];
    ExprID eq_expr_id = proof->clause_table[eq_id].result;
    Expr eq_expr = proof->expr_table[eq_expr_id];
    ExprID eq_left_id = eq_expr.arg1;
    ExprID eq_right_id = eq_expr.arg2;

    assert(eq_expr.node == EQ);
    assert(prop_expr_id == eq_left_id);
    assert(result_id == eq_right_id);
}

void proof_check_modus_ponens(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    //vector<ClauseID> steps = step.clause_args;
    ClauseID prop_id = step.clause_args[0];
    ExprID prop_expr_id = proof->clause_table[prop_id].result;
    ClauseID impl_id = step.clause_args[1];
    ExprID impl_expr_id = proof->clause_table[impl_id].result;
    Expr impl_expr = proof->expr_table[impl_expr_id];
    ExprID antecedent_expr_id = impl_expr.arg1;
    ExprID consequent_expr_id = impl_expr.arg2;

    assert(prop_expr_id == antecedent_expr_id);
    assert(result_id == consequent_expr_id);
    assert(impl_expr.node == IMPLIES);
}

void proof_check_not_not_elim(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    //vector<ClauseID> steps = step.clause_args;
    ClauseID double_not_id = step.clause_args[0];
    ExprID double_not_expr_id = proof->clause_table[double_not_id].result;
    Expr double_not_expr = proof->expr_table[double_not_expr_id];
    ExprID single_not_expr_id = double_not_expr.arg1;
    Expr single_not_expr = proof->expr_table[single_not_expr_id];
    ExprID negated_id = single_not_expr.arg1;

    assert(result_id == negated_id);
    assert(double_not_expr.node == NOT);
    assert(single_not_expr.node == NOT);
}

// this is redundant with false from empty
void proof_check_contra(Proof *proof, ProofStep step) {
    // get false from f and not f
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    // positive comes before negative
    ClauseID positive_id = step.clause_args[0];
    ExprID positive_expr_id = proof->clause_table[positive_id].result;
    ClauseID negative_id = step.clause_args[1];
    ExprID negative_expr_id = proof->clause_table[negative_id].result;
    Expr negative_expr = proof->expr_table[negative_expr_id];
    ExprID negated_id = negative_expr.arg1;
    assert(result_expr.node == NODE_FALSE);
    assert(positive_expr_id == negated_id);
    assert(negative_expr.node == NOT);
}

// new step that CVC5 doesn't cover but that we need
// also works for RESOLUTE format
void proof_check_false_from_empty(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == NODE_FALSE);
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 0);
}

// no index taken for this version
void proof_check_bool_and_elim(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    ExprID and_expr_id = proof->clause_table[step.clause_args[0]].result;
    Expr and_expr = proof->expr_table[and_expr_id];
    ListExprID and_args_id = and_expr.listarg;
    vector<ExprID> and_args = proof->expr_list_table[and_args_id];

    assert_contain(result_id, and_args);
    assert(and_expr.node == AND);
}

void proof_check_bool_and_intro1(Proof *proof, ProofStep step) {
    ClauseID prop_id = step.clause_args[0];
    Expr and_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> and_args = proof->expr_list_table[and_expr.listarg];
    assert(and_args.size() == 1);
    assert(and_expr.node == AND);
    Clause prop_clause = proof->clause_table[prop_id];
    assert(prop_clause.result == and_args[0]);
}

void proof_check_bool_and_intro2(Proof *proof, ProofStep step) {
    Expr and_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(and_expr.node == AND);
    vector<ExprID> and_args = proof->expr_list_table[and_expr.listarg];
    assert(and_args.size() == 2);
    Clause c0 = proof->clause_table[step.clause_args[0]];
    Clause c1 = proof->clause_table[step.clause_args[1]];
    assert(c0.result == and_args[0]);
    assert(c1.result == and_args[1]);
}

// forgot to define or_expr before
void proof_check_bool_not_or_elim(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr neg_result_expr = proof->expr_table[result_id];
    ExprID negated_id = neg_result_expr.arg1;
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = (proof->clause_table[neg_id]).result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    ExprID or_expr_id = neg_expr.arg1;
    Expr or_expr = proof->expr_table[or_expr_id];
    ListExprID or_args_id = or_expr.listarg;
    vector<ExprID> or_args = proof->expr_list_table[or_args_id];

    assert_contain(negated_id, or_args);
    assert(neg_result_expr.node == NOT);
    assert(neg_expr.node == NOT);
    assert(or_expr.node == OR);
}

// I missed this before
void proof_check_bool_implies_elim(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);

    Expr impl_expr = proof->expr_table[(proof->clause_table[step.clause_args[0]]).result];
    assert(impl_expr.node == IMPLIES);

    assert_neg(impl_expr.arg1, or_args[0], proof->expr_table);
    assert(impl_expr.arg2 == or_args[1]);
}

void proof_check_bool_not_implies_elim1(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    ExprID impl_expr_id = neg_expr.arg1;
    Expr impl_expr = proof->expr_table[impl_expr_id];

    assert(impl_expr.node == IMPLIES);
    assert(neg_expr.node == NOT);
    assert(result_id == impl_expr.arg1);
}

void proof_check_bool_not_implies_elim2(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    ExprID impl_expr_id = neg_expr.arg1;
    Expr impl_expr = proof->expr_table[impl_expr_id];

    assert(impl_expr.node == IMPLIES);
    assert(neg_expr.node == NOT);
    assert_neg(impl_expr.arg2, result_id, proof->expr_table);
}

// this function does double duty
// it can be either RES_IMPL_POS1 or RES_IMPL_POS2
// TODO this is not actually correct, it only handles RES_IMPL_POS2
/*
void proof_check_impl_pos_res(Proof *proof, ProofStep step) {
    // positive for anything but the last term
    // negative for the last term
    // if the implication isn't true, every premise is true but conclusion isn't
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);

    Expr impl_expr = proof->expr_table[or_args[0]];
    assert(impl_expr.node == IMPLIES);
    vector<ExprID> impl_args = proof->expr_list_table[impl_expr.listarg];

    int s = impl_args.size();
    vector<ExprID> pos_args(impl_args.begin(), impl_args.end() - 1);
    if (contained_copies(or_args[1], pos_args) <= 0) {
        assert_neg(impl_args[s-1], or_args[1], proof->expr_table);
    }
}
*/

void proof_check_impl_pos_res1(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    Expr impl_expr = proof->expr_table[or_args[0]];
    assert(impl_expr.node == IMPLIES);
    assert(impl_expr.arg1 == or_args[1]);
}

void proof_check_impl_pos_res2(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    Expr impl_expr = proof->expr_table[or_args[0]];
    assert(impl_expr.node == IMPLIES);
    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    assert(impl_expr.arg2 == not_expr.arg1);
}

void proof_check_impl_neg_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 3);
    Expr not_impl_expr = proof->expr_table[or_args[0]];
    assert(not_impl_expr.node == NOT);
    Expr impl_expr = proof->expr_table[not_impl_expr.arg1];
    assert(impl_expr.node == IMPLIES);
    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    assert(impl_expr.arg1 == not_expr.arg1);
    assert(impl_expr.arg2 == or_args[2]);
}

// singleton implication is equivalent to the term on its own
// empty implication is not usable for anything, so it's fine
/*
void proof_check_impl_neg_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() > 0);
    Expr not_impl_expr = proof->expr_table[or_args[0]];
    assert(not_impl_expr.node == NOT);
    Expr impl_expr = proof->expr_table[not_impl_expr.arg1];
    assert(impl_expr.node == IMPLIES);
    vector<ExprID> impl_args = proof->expr_list_table[impl_expr.listarg];
    int s = impl_args.size();
    assert(or_args.size() == s + 1);
    if (s >= 1) {
        vector<ExprID> or_nots(or_args.begin() + 1, or_args.end() - 1);
        vector<ExprID> antecedents(impl_args.begin(), impl_args.end() - 1);
        assert_all_negated(antecedents, or_nots, proof->expr_table);
        assert(impl_args[s-1] == or_args[s]);
    }
}
*/

void proof_check_bool_equiv_elim1(Proof *proof, ProofStep step) {
    ClauseID eq_id = step.clause_args[0];
    ExprID eq_expr_id = proof->clause_table[eq_id].result;
    Expr eq_expr = proof->expr_table[eq_expr_id];
    assert(eq_expr.node == EQ);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert_neg(eq_expr.arg1, or_args[0], proof->expr_table);
    assert(eq_expr.arg2 == or_args[1]);
}

void proof_check_bool_equiv_elim2(Proof *proof, ProofStep step) {
    ClauseID eq_id = step.clause_args[0];
    ExprID eq_expr_id = proof->clause_table[eq_id].result;
    Expr eq_expr = proof->expr_table[eq_expr_id];
    assert(eq_expr.node == EQ);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert(eq_expr.arg1 == or_args[0]);
    assert_neg(eq_expr.arg2, or_args[1], proof->expr_table);
}

void proof_check_bool_not_equiv_elim1(Proof *proof, ProofStep step) {
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    assert(neg_expr.node == NOT);
    ExprID eq_expr_id = neg_expr.arg1;
    Expr eq_expr = proof->expr_table[eq_expr_id];
    assert(eq_expr.node == EQ);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert(eq_expr.arg1 == or_args[0]);
    assert(eq_expr.arg2 == or_args[1]);
}

void proof_check_bool_not_equiv_elim2(Proof *proof, ProofStep step) {
    // this one has three negations
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    assert(neg_expr.node == NOT);
    ExprID eq_expr_id = neg_expr.arg1;
    Expr eq_expr = proof->expr_table[eq_expr_id];
    assert(eq_expr.node == EQ);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert_neg(eq_expr.arg1, or_args[0], proof->expr_table);
    assert_neg(eq_expr.arg2, or_args[1], proof->expr_table);
}

// I presume that XOR still counts as binary
void proof_check_bool_xor_elim1(Proof *proof, ProofStep step) {
    ClauseID xor_id = step.clause_args[0];
    ExprID xor_expr_id = proof->clause_table[xor_id].result;
    Expr xor_expr = proof->expr_table[xor_expr_id];
    assert(xor_expr.node == XOR);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert(xor_expr.arg1 == or_args[0]);
    assert(xor_expr.arg2 == or_args[1]);
}

// same issue here
void proof_check_bool_xor_elim2(Proof *proof, ProofStep step) {
    ClauseID xor_id = step.clause_args[0];
    ExprID xor_expr_id = proof->clause_table[xor_id].result;
    Expr xor_expr = proof->expr_table[xor_expr_id];
    assert(xor_expr.node == XOR);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert_neg(xor_expr.arg1, or_args[0], proof->expr_table);
    assert_neg(xor_expr.arg2, or_args[1], proof->expr_table);
}

// same issue here
void proof_check_bool_not_xor_elim1(Proof *proof, ProofStep step) {
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    ExprID xor_expr_id = neg_expr.arg1;
    Expr xor_expr = proof->expr_table[xor_expr_id];
    assert(neg_expr.node == NOT);
    assert(xor_expr.node == XOR);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert(xor_expr.arg1 == or_args[0]);
    assert_neg(xor_expr.arg2, or_args[1], proof->expr_table);
}

// same issue here
void proof_check_bool_not_xor_elim2(Proof *proof, ProofStep step) {
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    ExprID xor_expr_id = neg_expr.arg1;
    Expr xor_expr = proof->expr_table[xor_expr_id];
    assert(neg_expr.node == NOT);
    assert(xor_expr.node == XOR);

    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    assert(or_expr.node == OR);
    assert_neg(xor_expr.arg1, or_args[0], proof->expr_table);
    assert(xor_expr.arg2 == or_args[1]);
}

void proof_check_xor_pos_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 3);

    Expr xor0_expr = proof->expr_table[or_args[0]];
    Expr xor1_expr = proof->expr_table[or_args[1]];
    Expr xor2_neg_expr = proof->expr_table[or_args[2]];
    assert(xor0_expr.node == XOR);
    assert(xor1_expr.node == XOR);
    assert(xor2_neg_expr.node == NOT);
    Expr xor2_expr = proof->expr_table[xor2_neg_expr.arg1];
    assert(xor2_expr.node == XOR);
    vector<ExprID> xor0_args = proof->expr_list_table[xor0_expr.listarg];
    vector<ExprID> xor1_args = proof->expr_list_table[xor1_expr.listarg];
    vector<ExprID> xor2_args = proof->expr_list_table[xor2_expr.listarg];

    // witnesses
    Expr witness1_expr = proof->expr_table[step.expr_args[0]];
    vector<ExprID> witness1 = proof->expr_list_table[witness1_expr.listarg];
    Expr witness2_expr = proof->expr_table[step.expr_args[1]];
    vector<ExprID> witness2 = proof->expr_list_table[witness2_expr.listarg];
    int p1 = list_poly(witness1);
    int p2 = list_poly(witness2);
    // we don't need to guarantee that elements of the first are distinct
    assert(list_poly(xor0_args) * list_poly(xor1_args) == p1);
    assert(p1 * list_poly(xor2_args) == p2 * p2);
}

void proof_check_xor_neg_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 3);

    Expr not0_expr = proof->expr_table[or_args[0]];
    Expr not1_expr = proof->expr_table[or_args[1]];
    Expr not2_expr = proof->expr_table[or_args[2]];
    assert(not0_expr.node == NOT);
    assert(not1_expr.node == NOT);
    assert(not2_expr.node == NOT);

    Expr xor0_expr = proof->expr_table[not0_expr.arg1];
    Expr xor1_expr = proof->expr_table[not1_expr.arg1];
    Expr xor2_expr = proof->expr_table[not2_expr.arg1];
    assert(xor0_expr.node == XOR);
    assert(xor1_expr.node == XOR);
    assert(xor2_expr.node == XOR);
    vector<ExprID> xor0_args = proof->expr_list_table[xor0_expr.listarg];
    vector<ExprID> xor1_args = proof->expr_list_table[xor1_expr.listarg];
    vector<ExprID> xor2_args = proof->expr_list_table[xor2_expr.listarg];

    // witnesses
    Expr witness1_expr = proof->expr_table[step.expr_args[0]];
    vector<ExprID> witness1 = proof->expr_list_table[witness1_expr.listarg];
    Expr witness2_expr = proof->expr_table[step.expr_args[1]];
    vector<ExprID> witness2 = proof->expr_list_table[witness2_expr.listarg];
    int p1 = list_poly(witness1);
    int p2 = list_poly(witness2);
    // we don't need to guarantee that elements of the first are distinct
    assert(list_poly(xor0_args) * list_poly(xor1_args) == p1);
    assert(p1 * list_poly(xor2_args) == p2 * p2);
}

void proof_check_bool_xor1_pos_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);

    Expr xor_expr = proof->expr_table[or_args[0]];
    assert(xor_expr.node == XOR);
    vector<ExprID> xor_args = proof->expr_list_table[xor_expr.listarg];
    assert(xor_args.size() == 1);

    Expr singleton_neg_expr = proof->expr_table[or_args[1]];
    assert(singleton_neg_expr.node == NOT);

    assert(xor_args[0] == singleton_neg_expr.arg1);
}

void proof_check_bool_xor1_neg_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);

    Expr neg_xor_expr = proof->expr_table[or_args[0]];
    assert(neg_xor_expr.node == NOT);
    Expr xor_expr = proof->expr_table[neg_xor_expr.arg1];
    assert(xor_expr.node == XOR);
    vector<ExprID> xor_args = proof->expr_list_table[xor_expr.listarg];
    assert(xor_args.size() == 1);

    assert(xor_args[0] == or_args[1]);
}

// ite rules take a list of arguments
void proof_check_bool_ite_elim1(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_expr.node == OR);
    assert(or_args.size() == 2);

    Expr ite_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(ite_expr.node == ITE);
    vector<ExprID> ite_args = proof->expr_list_table[ite_expr.listarg];
    assert(ite_args.size() == 3);

    assert_neg(ite_args[0], or_args[0], proof->expr_table);
    assert(ite_args[1] == or_args[1]);
}

void proof_check_bool_ite_elim2(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_expr.node == OR);
    assert(or_args.size() == 2);

    Expr ite_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(ite_expr.node == ITE);
    vector<ExprID> ite_args = proof->expr_list_table[ite_expr.listarg];
    assert(ite_args.size() == 3);

    assert(ite_args[0] == or_args[0]);
    assert(ite_args[2] == or_args[1]);
}

void proof_check_bool_not_ite_elim1(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_expr.node == OR);
    assert(or_args.size() == 2);

    Expr not_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(not_expr.node == NOT);
    Expr ite_expr = proof->expr_table[not_expr.arg1];
    assert(ite_expr.node == ITE);
    vector<ExprID> ite_args = proof->expr_list_table[ite_expr.listarg];
    assert(ite_args.size() == 3);

    assert_neg(ite_args[0], or_args[0], proof->expr_table);
    assert_neg(ite_args[1], or_args[1], proof->expr_table);
}

void proof_check_bool_not_ite_elim2(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_expr.node == OR);
    assert(or_args.size() == 2);

    Expr not_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(not_expr.node == NOT);
    Expr ite_expr = proof->expr_table[not_expr.arg1];
    assert(ite_expr.node == ITE);
    vector<ExprID> ite_args = proof->expr_list_table[ite_expr.listarg];
    assert(ite_args.size() == 3);

    assert(ite_args[0] == or_args[0]);
    assert_neg(ite_args[2], or_args[1], proof->expr_table);
}

// RESOLUTE ITE rules
void proof_check_bool_ite1_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_expr.node == OR);
    assert(or_args.size() == 2);

    Expr eq_expr = proof->expr_table[or_args[0]];
    assert(eq_expr.node == EQ);
    Expr ite_expr = proof->expr_table[eq_expr.arg1];
    assert(ite_expr.node == ITE);
    vector<ExprID> ite_args = proof->expr_list_table[ite_expr.listarg];
    assert(ite_args.size() == 3);
    assert(ite_args[1] == eq_expr.arg2);

    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    assert(ite_args[0] == not_expr.arg1);
}

void proof_check_bool_ite2_res(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_expr.node == OR);
    assert(or_args.size() == 2);

    Expr eq_expr = proof->expr_table[or_args[0]];
    assert(eq_expr.node == EQ);
    Expr ite_expr = proof->expr_table[eq_expr.arg1];
    assert(ite_expr.node == ITE);
    vector<ExprID> ite_args = proof->expr_list_table[ite_expr.listarg];
    assert(ite_args.size() == 3);
    assert(ite_args[2] == eq_expr.arg2);
    assert(ite_args[0] == or_args[1]);
}

void proof_check_bool_not_and(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr or_expr = proof->expr_table[result_id];
    assert(or_expr.node == OR);
    ClauseID neg_id = step.clause_args[0];
    ExprID neg_expr_id = proof->clause_table[neg_id].result;
    Expr neg_expr = proof->expr_table[neg_expr_id];
    assert(neg_expr.node == NOT);
    ExprID and_expr_id = neg_expr.arg1;
    Expr and_expr = proof->expr_table[and_expr_id];
    assert(and_expr.node == AND);
    ListExprID or_args_id = or_expr.listarg;
    vector<ExprID> or_args = proof->expr_list_table[or_args_id];
    ListExprID and_args_id = and_expr.listarg;
    vector<ExprID> and_args = proof->expr_list_table[and_args_id];
    assert_all_negated(and_args, or_args, proof->expr_table);
}

void proof_check_bool_not_and_rev(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr neg_expr = proof->expr_table[result_id];
    assert(neg_expr.node == NOT);
    ExprID and_expr_id = neg_expr.arg1;
    Expr and_expr = proof->expr_table[and_expr_id];
    assert(and_expr.node == AND);
    ClauseID or_id = step.clause_args[0];
    ExprID or_expr_id = proof->clause_table[or_id].result;
    Expr or_expr = proof->expr_table[or_expr_id];
    assert(or_expr.node == OR);
    ListExprID or_args_id = or_expr.listarg;
    vector<ExprID> or_args = proof->expr_list_table[or_args_id];
    ListExprID and_args_id = and_expr.listarg;
    vector<ExprID> and_args = proof->expr_list_table[and_args_id];
    assert_all_negated(and_args, or_args, proof->expr_table);
}

void proof_check_bool_process_scope(Proof *proof, ProofStep step) {
    // pivot point not taken as an argument
    ClauseID or_id = step.clause_args[0];
    ExprID or_expr_id = proof->clause_table[or_id].result;
    Expr or_expr = proof->expr_table[or_expr_id];
    ListExprID or_args_id = or_expr.listarg;
    vector<ExprID> or_args = proof->expr_list_table[or_args_id];
    assert(or_expr.node == OR);
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr pivoted_expr = proof->expr_table[result_id];
    assert(pivoted_expr.node == IMPLIES);
    ExprID and_expr_id = pivoted_expr.arg1;
    Expr and_expr = proof->expr_table[and_expr_id];
    ListExprID and_args_id = and_expr.listarg;
    vector<ExprID> and_args = proof->expr_list_table[and_args_id];
    assert(and_expr.node == AND);
    ExprID pivoted_or_expr_id = pivoted_expr.arg2;
    Expr pivoted_or_expr = proof->expr_table[pivoted_or_expr_id];
    ListExprID pivoted_or_args_id = pivoted_or_expr.listarg;
    vector<ExprID> pivoted_or_args = proof->expr_list_table[pivoted_or_args_id];
    assert(pivoted_or_expr.node == OR);
    // chop or_args into two vectors based on size of and_args
    vector<ExprID> or_args_start(or_args.begin(), or_args.begin() + and_args.size());
    vector<ExprID> or_args_end(or_args.begin() + and_args.size(), or_args.end());
    assert_all_negated(and_args, or_args_start, proof->expr_table);
    assert_all_identical(pivoted_or_args, or_args_end);
}

// might move these "gap" rules to a different file later
void proof_check_bool_or_single(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 1);
    assert(or_args[0] == proof->clause_table[step.clause_args[0]].result);
}

void proof_check_bool_or_single_rev(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause_args[0]].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 1);
    assert(or_args[0] == proof->clause_table[step.clause].result);
}

void proof_check_bool_true_pos(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 1);
    Expr true_expr = proof->expr_table[or_args[0]];
    assert(true_expr.node == NODE_TRUE);
}

void proof_check_bool_false_neg(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 1);
    Expr not_expr = proof->expr_table[or_args[0]];
    assert(not_expr.node == NOT);
    Expr false_expr = proof->expr_table[not_expr.arg1];
    assert(false_expr.node == NODE_FALSE);
}

void proof_check_bool_not_pos(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 2);
    Expr not_expr = proof->expr_table[or_args[0]];
    assert(not_expr.node == NOT);
    assert(not_expr.arg1 == or_args[1]);
}

// another RESOLUTE rule that was overlooked
void proof_check_bool_not_neg(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 2);
    Expr double_not_expr = proof->expr_table[or_args[0]];
    assert(double_not_expr.node == NOT);
    Expr not_expr = proof->expr_table[double_not_expr.arg1];
    assert(not_expr.node == NOT);
    assert(double_not_expr.arg1 == or_args[1]);
}

void proof_check_bool_and_pos(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> res_args = proof->expr_list_table[result_expr.listarg];
    Expr ordered_and = proof->expr_table[step.expr_args[0]];
    assert(ordered_and.node == AND);
    vector<ExprID> and_args = proof->expr_list_table[ordered_and.listarg];
    Expr ordered_or = proof->expr_table[step.expr_args[1]];
    assert(ordered_or.node == AND);
    vector<ExprID> or_args = proof->expr_list_table[ordered_or.listarg];
    assert(res_args.size() == or_args.size() + 1);
    assert_all_negated(and_args, or_args, proof->expr_table);
    assert(list_poly(res_args) == list_poly_with_pivot(or_args, step.expr_args[0]));
}

// no traversals should be required for this one except containment
void proof_check_bool_and_neg(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 2);
    Expr not_expr = proof->expr_table[or_args[0]];
    assert(not_expr.node == NOT);
    Expr and_expr = proof->expr_table[not_expr.arg1];
    assert(and_expr.node == AND);
    vector<ExprID> and_args = proof->expr_list_table[and_expr.listarg];
    assert_contain(or_args[1], and_args);
}

void proof_check_bool_or_pos(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 2);
    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    Expr or2_expr = proof->expr_table[or_args[0]];
    assert(or2_expr.node == OR);
    vector<ExprID> or2_args = proof->expr_list_table[or2_expr.listarg];
    assert_contain(not_expr.arg1, or2_args);
}

void proof_check_bool_or_neg(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> res_args = proof->expr_list_table[result_expr.listarg];
    
    Expr neg_expr = proof->expr_table[step.expr_args[0]];
    assert(neg_expr.node == NOT);
    Expr pos_expr = proof->expr_table[neg_expr.arg1];
    assert(pos_expr.node == OR);
    vector<ExprID> pos_args = proof->expr_list_table[pos_expr.listarg];
    // not really a pivot here; perhaps the function should be renamed
    // polynomial check because order might not be preserved
    assert(res_args.size() == pos_args.size() + 1);
    assert(list_poly(res_args) == list_poly_with_pivot(pos_args, step.expr_args[0]));
}

void proof_check_bool_impl_pos1(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 2);
    Expr impl_expr = proof->expr_table[or_args[0]];
    assert(impl_expr.node == IMPLIES);
    assert(impl_expr.arg1 == or_args[1]);
}

void proof_check_bool_impl_pos2(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 2);
    Expr impl_expr = proof->expr_table[or_args[0]];
    assert(impl_expr.node == IMPLIES);
    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    assert(impl_expr.arg2 == not_expr.arg1);
}

void proof_check_bool_impl_neg(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 3);
    Expr not_impl_expr = proof->expr_table[or_args[0]];
    assert(not_impl_expr.node == NOT);
    Expr impl_expr = proof->expr_table[not_impl_expr.arg1];
    assert(impl_expr.node == IMPLIES);
    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    assert(impl_expr.arg1 == not_expr.arg1);
    assert(impl_expr.arg2 == or_args[2]);
}

void proof_check_bool_equiv_pos1(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 3);
    Expr eq_expr = proof->expr_table[or_args[0]];
    assert(eq_expr.node == EQ);
    assert(eq_expr.arg1 == or_args[1]);
    assert(eq_expr.arg2 == or_args[2]);
}

void proof_check_bool_equiv_pos2(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 3);
    Expr eq_expr = proof->expr_table[or_args[0]];
    assert(eq_expr.node == EQ);
    Expr not_expr1 = proof->expr_table[or_args[1]];
    assert(not_expr1.node == NOT);
    Expr not_expr2 = proof->expr_table[or_args[2]];
    assert(not_expr2.node == NOT);
    assert(eq_expr.arg1 == not_expr1.arg1);
    assert(eq_expr.arg2 == not_expr2.arg1);
}

void proof_check_bool_equiv_neg1(Proof *proof, ProofStep step) {
    // equivalence is negated, not the first term
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 3);
    Expr not_eq_expr = proof->expr_table[or_args[0]];
    assert(not_eq_expr.node == NOT);
    Expr eq_expr = proof->expr_table[not_eq_expr.arg1];
    assert(eq_expr.node == EQ);
    Expr not_expr = proof->expr_table[or_args[2]];
    assert(not_expr.node == NOT);
    assert(eq_expr.arg1 == or_args[1]);
    assert(eq_expr.arg2 == not_expr.arg1);
}

void proof_check_bool_equiv_neg2(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[result_expr.listarg];
    assert(or_args.size() == 3);
    Expr not_eq_expr = proof->expr_table[or_args[0]];
    assert(not_eq_expr.node == NOT);
    Expr eq_expr = proof->expr_table[not_eq_expr.arg1];
    assert(eq_expr.node == EQ);
    Expr not_expr = proof->expr_table[or_args[1]];
    assert(not_expr.node == NOT);
    assert(eq_expr.arg1 == not_expr.arg1);
    assert(eq_expr.arg2 == or_args[2]);
}

void proof_check_not_cong(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() == 2);

    Expr app_eq_expr = proof->expr_table[result_args[0]];
    assert(app_eq_expr.node == EQ);
    Expr app1 = proof->expr_table[app_eq_expr.arg1];
    assert(app1.node == NOT);
    Expr app2 = proof->expr_table[app_eq_expr.arg2];
    assert(app2.node == NOT);

    Expr not_eq_expr = proof->expr_table[result_args[1]];
    assert(not_eq_expr.node == NOT);
    Expr arg_eq_expr = proof->expr_table[not_eq_expr.arg1];
    assert(arg_eq_expr.node == EQ);
    assert(arg_eq_expr.arg1 == app1.arg1);
    assert(arg_eq_expr.arg2 == app2.arg1);
}
