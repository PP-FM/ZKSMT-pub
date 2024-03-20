#include "utils.h"
#include "polynomial.h"
#include "boolean_checker.h"

void proof_check_split(ZProof *proof, ZProofStep step) {

    ZClauseID or_expr_id =  get_clause_pvt(proof, step.clause).result; 
    ZExpr or_expr =  get_expr_pvt(proof, or_expr_id); 
    assert_eq(or_expr.node, ZOR);

    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    ZExprID f1_id = or_args[0];
    ZExpr not_f2 = get_expr_pvt(proof, or_args[1]);
    assert_eq(not_f2.node, ZOR);
    assert_eq(f1_id, not_f2.arg1);
}


void proof_check_bool_resolution(ZProof *proof, ZProofStep step) {
    ZExprID not_pivot_id = step.expr_args[0];
    ZExpr not_pivot = get_expr_pvt(proof, not_pivot_id); 
    assert_eq(not_pivot.node, ZNOT); 
    
    ZExprID pivot_id = not_pivot.arg1;
    ZExprID subset1 = step.expr_args[1];
    ZListExprID list_id_1 = get_expr_pvt(proof, subset1).listarg; 
    vector<ZExprID> witness1 = get_expr_list_pvt(proof, list_id_1); 
    
 
    ZExprID subset2 = step.expr_args[2];
    ZListExprID list_id_2 = get_expr_pvt(proof, subset2).listarg; 
    vector<ZExprID> witness2 = get_expr_list_pvt(proof, list_id_2); 
 
    
    ZClause resolved_clause = get_clause_pvt(proof, step.clause); 
    ZExpr resolved = get_expr_pvt(proof, resolved_clause.result); 
    assert_eq(resolved.node , ZOR); 
    vector<ZExprID> resolved_set = get_expr_list_pvt(proof, resolved.listarg);
    // proof->expr_list_table[resolved.listarg];

    ZClause pos_expr_clause = get_clause_pvt(proof, step.clause_args[0]); 
    ZExpr pos_expr = get_expr_pvt(proof, pos_expr_clause.result); 
    assert_eq(pos_expr.node , ZOR); 
    vector<ZExprID> pos_set = get_expr_list_pvt(proof, pos_expr.listarg);

    ZClause neg_expr_clause = get_clause_pvt(proof, step.clause_args[1]); 
    ZExpr neg_expr = get_expr_pvt(proof, neg_expr_clause.result); 
    assert_eq(neg_expr.node , ZOR); 
    vector<ZExprID> neg_set = get_expr_list_pvt(proof, neg_expr.listarg);

    assert_contain(pivot_id, pos_set);
    assert_contain(not_pivot_id, neg_set);
    assert_resolution(pos_set, resolved_set, witness1, pivot_id);
    assert_resolution(neg_set, resolved_set, witness2, not_pivot_id);
}

void proof_check_bool_factoring(ZProof *proof, ZProofStep step) {
    // this version takes a witness
    ZClause original_clause = get_clause_pvt(proof, step.clause_args[0]); 
    ZExpr original_expr = get_expr_pvt(proof, original_clause.result);
    assert_eq(original_expr.node , ZOR); 
    
    ZClause factored_clause = get_clause_pvt(proof, step.clause); 
    ZExpr factored_expr = get_expr_pvt(proof, factored_clause.result);
    assert_eq(factored_expr.node , ZOR); 

    vector<ZExprID> original_args = get_expr_list_pvt(proof, original_expr.listarg);
    vector<ZExprID> factored_args = get_expr_list_pvt(proof, factored_expr.listarg);
    assert_remove_duplicate(factored_args, original_args);
}

void proof_check_eq_resolve(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZClauseID prop_id = step.clause_args[0];
    ZExprID prop_expr_id = get_clause_pvt(proof, prop_id).result;
    ZClauseID eq_id = step.clause_args[1];
    ZExprID eq_expr_id = get_clause_pvt(proof, eq_id).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_expr_id);
    ZExprID eq_left_id = eq_expr.arg1;
    ZExprID eq_right_id = eq_expr.arg2;
    assert_eq(eq_expr.node, ZEQ);
    assert_eq(prop_expr_id, eq_left_id);
    assert_eq(result_id, eq_right_id);
}




void proof_check_modus_ponens(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result; 
    ZClauseID prop_id = step.clause_args[0];
    ZExprID prop_expr_id = get_clause_pvt(proof, prop_id).result; 
    ZClauseID impl_id = step.clause_args[1];
    ZExprID impl_expr_id =  get_clause_pvt(proof, impl_id).result; 

    ZExpr impl_expr = get_expr_pvt(proof, impl_expr_id);
    ZExprID antecedent_expr_id = impl_expr.arg1;
    ZExprID consequent_expr_id = impl_expr.arg2;

    assert_eq(prop_expr_id, antecedent_expr_id);
    assert_eq(result_id, consequent_expr_id);
    assert_eq(impl_expr.node, Integer(32, IMPLIES, PUBLIC)); 
}

void proof_check_not_not_elim(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    //vector<ClauseID> steps = step.clause_args;
    ZClauseID double_not_id = step.clause_args[0];
    ZExprID double_not_expr_id = get_clause_pvt(proof, double_not_id).result;
    ZExpr double_not_expr = get_expr_pvt(proof, double_not_expr_id);
    ZExprID single_not_expr_id = double_not_expr.arg1;
    ZExpr single_not_expr = get_expr_pvt(proof,single_not_expr_id);
    ZExprID negated_id = single_not_expr.arg1;
    assert_eq(result_id,  negated_id);
    assert_eq(double_not_expr.node, ZNOT);
    assert_eq(single_not_expr.node, ZNOT);
}

void proof_check_contra(ZProof *proof, ZProofStep step) {
    // get false from f and not f
    // positive comes before negative
    ZExprID result_expr_id = get_clause_pvt(proof, step.clause).result; 
    ZExpr result_expr = get_expr_pvt(proof, result_expr_id);
    ZClauseID positive_id = step.clause_args[0];
    ZExprID positive_expr_id = get_clause_pvt(proof, positive_id).result;
    ZClauseID negative_id = step.clause_args[1];
    ZExprID negative_expr_id = get_clause_pvt(proof, negative_id).result;
    ZExpr negative_expr = get_expr_pvt(proof, negative_expr_id);
    ZExprID negated_id = negative_expr.arg1;
    assert_eq(result_expr.node, Integer(32, NODE_FALSE, PUBLIC));
    assert_eq(positive_expr_id, negated_id);
    assert_eq(negative_expr.node, ZNOT);
}

void proof_check_false_from_empty(ZProof *proof, ZProofStep step) {
    ZExprID result_expr_id = get_clause_pvt(proof, step.clause).result; 
    ZExpr result_expr = get_expr_pvt(proof, result_expr_id);
    // Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert_eq(result_expr.node, Integer(32, NODE_FALSE, PUBLIC));
    ZExprID or_expr_id = get_clause_pvt(proof, step.clause_args[0]).result;
    ZExpr or_expr =  get_expr_pvt(proof, or_expr_id); 
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    // this is an upper bound, and the size check is necessary here
    assert_real_size(or_args, 0);
}


void proof_check_bool_and_elim(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExprID and_expr_id = get_clause_pvt(proof, step.clause_args[0]).result;
    ZExpr and_expr = get_expr_pvt(proof, and_expr_id);
    ZListExprID and_args_id = and_expr.listarg;
    vector<ZExprID> and_args = get_expr_list_pvt(proof, and_args_id);
    assert_contain(result_id, and_args);
    assert_eq(and_expr.node, Integer(32, AND, PUBLIC));
}

void proof_check_bool_and_intro1(ZProof *proof, ZProofStep step) {
    ZClauseID prop_id = step.clause_args[0];
    ZExpr and_expr = get_result_pvt(proof, step.clause);
    vector<ZExprID> and_args = get_expr_list_pvt(proof, and_expr.listarg);
    //assert(and_args.size() == 1); 
    /*
    Q: why this assertion is necessary?
    */
    assert_eq(and_expr.node, Integer(32, AND, PUBLIC));
    ZClause prop_clause = get_clause_pvt(proof, prop_id);
    assert_contain(prop_clause.result, and_args);
    /*
    can we do assert_contain(prop_clause.result, and_args) ?
    */
}


void proof_check_bool_and_intro2(ZProof *proof, ZProofStep step) {
    ZExpr and_expr = get_result_pvt(proof, step.clause);
    vector<ZExprID> and_args = get_expr_list_pvt(proof,and_expr.listarg);
    assert_eq(and_expr.node, Integer(32, AND, PUBLIC));
    // 
    ZClause c0 = get_clause_pvt(proof, step.clause_args[0]);
    ZClause c1 = get_clause_pvt(proof, step.clause_args[1]);
    assert_eq(c0.result, and_args[0]);
    assert_eq(c1.result, and_args[1]);
    /*
    can we do assert_contain(prop_clause.result, and_args) ?
    */
}

void proof_check_bool_not_or_elim(ZProof *proof, ZProofStep step) {
    ZExpr neg_result_expr = get_result_pvt(proof, step.clause);
    ZExprID negated_id = neg_result_expr.arg1;
    ZClauseID neg_id = step.clause_args[0];
    ZExprID neg_expr_id = get_clause_pvt(proof, neg_id).result;
    ZExpr neg_expr = get_expr_pvt(proof,neg_expr_id);
    ZExprID or_expr_id = neg_expr.arg1;
    ZExpr or_expr = get_expr_pvt(proof, or_expr_id);
    ZListExprID or_args_id = or_expr.listarg;
    vector<ZExprID> or_args =get_expr_list_pvt(proof,or_args_id);
    assert_contain(negated_id, or_args);
    assert_eq(neg_result_expr.node, ZNOT);
    assert_eq(neg_expr.node, ZNOT);
    assert_eq(or_expr.node, Integer (32, OR, PUBLIC));
}

void proof_check_bool_or_single(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause); 
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    // assert(or_args.size() == 1);
    assert_eq(or_args[0], get_clause_pvt(proof, step.clause_args[0]).result);
}

void proof_check_bool_or_single_rev(ZProof *proof, ZProofStep step) {
    ZExpr or_expr = get_result_pvt(proof, step.clause_args[0]);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    assert_contain(get_clause_pvt(proof, step.clause).result, or_args);
}


void proof_check_bool_true_pos(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    //assert_real_size(or_args, 1);
    ZExpr true_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(true_expr.node, Integer(32, NODE_TRUE, PUBLIC));
}

void proof_check_bool_false_neg(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    //assert_real_size(or_args, 1);
    ZExpr not_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(not_expr.node, ZNOT);
    ZExpr false_expr = get_expr_pvt(proof, not_expr.arg1);
    assert_eq(false_expr.node, Integer(32, NODE_FALSE, PUBLIC));
}

void proof_check_bool_not_pos(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    // proof->expr_table[proof->clause_table[step.clause].result];
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    //assert_real_size(or_args, 2);
    ZExpr not_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(not_expr.arg1, or_args[1]);
}


// another RESOLUTE rule that was overlooked
void proof_check_bool_not_neg(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    //assert_real_size(or_args, 2);
    ZExpr double_not_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(double_not_expr.node, ZNOT);
    ZExpr not_expr = get_expr_pvt(proof, double_not_expr.arg1);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(double_not_expr.arg1, or_args[1]);
}

void proof_check_bool_and_pos(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);    
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> res_args = get_expr_list_pvt(proof, result_expr.listarg);
    ZExpr ordered_and = get_expr_pvt(proof, step.expr_args[0]);
    assert_eq(ordered_and.node, Integer(32, AND, PUBLIC));
    vector<ZExprID> and_args = get_expr_list_pvt(proof, ordered_and.listarg);
    ZExpr ordered_or = get_expr_pvt(proof, step.expr_args[1]);
    assert_eq(ordered_or.node, Integer(32, AND, PUBLIC));
    vector<ZExprID> or_args = get_expr_list_pvt(proof, ordered_or.listarg);
    vector<ZExprID> tmp{step.expr_args[0]}; 
    assert_union_subset(or_args, tmp, res_args);
}


// no traversals should be required for this one except containment
void proof_check_bool_and_neg(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    //assert(or_args.size() == 2); Is it necessary for checking the size of or argments? 
    ZExpr not_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(not_expr.node, ZNOT);
    ZExpr and_expr = get_expr_pvt(proof, not_expr.arg1);
    assert_eq(and_expr.node, Integer(32, AND, PUBLIC));
    vector<ZExprID> and_args = get_expr_list_pvt(proof, and_expr.listarg);
    assert_contain(or_args[1], and_args);
}


void proof_check_bool_or_pos(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> res_args = get_expr_list_pvt(proof, result_expr.listarg);
    // assert_eq(or_args.size() == 2);
    ZExpr not_expr = get_expr_pvt(proof, res_args[1]);
    assert_eq(not_expr.node, ZNOT);
    ZExpr or2_expr = get_expr_pvt(proof, res_args[0]);
    assert_eq(or2_expr.node, Integer(32, OR, PUBLIC));
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or2_expr.listarg);
    assert_contain(not_expr.arg1, or_args);
}


void proof_check_bool_or_neg(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> res_args = get_expr_list_pvt(proof, result_expr.listarg);
    ZExpr neg_expr = get_expr_pvt(proof, step.expr_args[0]);
    assert_eq(neg_expr.node, ZNOT);
    ZExpr pos_expr = get_expr_pvt(proof, neg_expr.arg1);
    assert_eq(pos_expr.node, ZOR);
    vector<ZExprID> pos_args = get_expr_list_pvt(proof, pos_expr.listarg);
    // not really a pivot here; perhaps the function should be renamed
    // polynomial check because order might not be preserved
    vector<ZExprID> tmp{step.expr_args[0]}; 
    assert_union_subset(pos_args, tmp, res_args);
}

void proof_check_bool_impl_pos1(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    // assert_eq(or_args.size() == 2);
    ZExpr impl_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(impl_expr.node, Integer(32, IMPLIES,PUBLIC));
    assert_eq(impl_expr.arg1, or_args[1]);
}

void proof_check_bool_impl_pos2(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    // assert(or_args.size() == 2);
    ZExpr impl_expr = get_expr_pvt(proof,or_args[0]);
    assert_eq(impl_expr.node, Integer(32, IMPLIES, PUBLIC));
    ZExpr not_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(impl_expr.arg2, not_expr.arg1);
}


void proof_check_bool_impl_neg(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    ZExpr not_impl_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(not_impl_expr.node, ZNOT);
    ZExpr impl_expr = get_expr_pvt(proof, not_impl_expr.arg1);
    assert_eq(impl_expr.node, Integer(32, IMPLIES, PUBLIC));
    ZExpr not_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(impl_expr.arg1, not_expr.arg1);
    assert_eq(impl_expr.arg2, or_args[2]);
}

void proof_check_bool_equiv_pos1(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    ZExpr eq_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(eq_expr.node, ZEQ);
    assert_eq(eq_expr.arg1, or_args[1]);
    assert_eq(eq_expr.arg2, or_args[2]);
}

void proof_check_bool_equiv_pos2(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    // assert(or_args.size() == 3);
    ZExpr eq_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr not_expr1 = get_expr_pvt(proof, or_args[1]);
    assert_eq(not_expr1.node, ZNOT);
    ZExpr not_expr2 = get_expr_pvt(proof, or_args[2]);
    assert_eq(not_expr2.node, ZNOT);
    assert_eq(eq_expr.arg1,  not_expr1.arg1);
    assert_eq(eq_expr.arg2, not_expr2.arg1);
}

void proof_check_bool_equiv_neg1(ZProof *proof, ZProofStep step) {
    // equivalence is negated, not the first term
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);
    ZExpr not_eq_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(not_eq_expr.node, ZNOT);
    ZExpr eq_expr = get_expr_pvt(proof, not_eq_expr.arg1);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr not_expr = get_expr_pvt(proof, or_args[2]);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(eq_expr.arg1,  or_args[1]);
    assert_eq(eq_expr.arg2, not_expr.arg1);
}


void proof_check_bool_equiv_neg2(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, result_expr.listarg);

    ZExpr not_eq_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(not_eq_expr.node, ZNOT);
    ZExpr eq_expr = get_expr_pvt(proof, not_eq_expr.arg1);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr not_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(eq_expr.arg1,  not_expr.arg1);
    assert_eq(eq_expr.arg2,  or_args[2]);
}

// translating new XOR rules into ZK format
void proof_check_bool_xor1_pos_res(ZProof *proof, ZProofStep step) {
    ZExpr or_expr = get_result_pvt(proof, step.clause);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);

    ZExpr xor_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(xor_expr.node, ZXOR);
    vector<ZExprID> xor_args = get_expr_list_pvt(proof, xor_expr.listarg);
    assert_real_size(xor_args, 1);

    ZExpr singleton_neg_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(singleton_neg_expr.node, ZNOT);

    assert_eq(xor_args[0], singleton_neg_expr.arg1);
}

void proof_check_bool_xor1_neg_res(ZProof *proof, ZProofStep step) {
    //Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    ZExpr or_expr = get_result_pvt(proof, step.clause);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);

    ZExpr neg_xor_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(neg_xor_expr.node, ZNOT);
    ZExpr xor_expr = get_expr_pvt(proof, neg_xor_expr.arg1);
    assert_eq(xor_expr.node, ZXOR);
    vector<ZExprID> xor_args = get_expr_list_pvt(proof, xor_expr.listarg);
    assert_real_size(xor_args, 1);

    assert_eq(xor_args[0], or_args[1]);
}

void proof_check_xor_pos_res(ZProof *proof, ZProofStep step) {
    ZExpr or_expr = get_result_pvt(proof, step.clause);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);

    ZExpr xor0_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr xor1_expr = get_expr_pvt(proof, or_args[1]);
    ZExpr xor2_neg_expr = get_expr_pvt(proof, or_args[2]);
    assert_eq(xor0_expr.node, ZXOR);
    assert_eq(xor1_expr.node, ZXOR);
    assert_eq(xor2_neg_expr.node, ZNOT);
    ZExpr xor2_expr = get_expr_pvt(proof, xor2_neg_expr.arg1);
    assert_eq,(xor2_expr.node, ZXOR);
    vector<ZExprID> xor0_args = get_expr_list_pvt(proof, xor0_expr.listarg);
    vector<ZExprID> xor1_args = get_expr_list_pvt(proof, xor1_expr.listarg);
    vector<ZExprID> xor2_args = get_expr_list_pvt(proof, xor2_expr.listarg);

    ZExpr witness1_expr = get_expr_pvt(proof, step.expr_args[0]);
    vector<ZExprID> witness1 = get_expr_list_pvt(proof, witness1_expr.listarg);
    ZExpr witness2_expr = get_expr_pvt(proof, step.expr_args[1]);
    vector<ZExprID> witness2 = get_expr_list_pvt(proof, witness2_expr.listarg);
    // TODO we don't really need witness1 with this setup
    vector<vector<ZExprID> > all_args = {xor0_args, xor1_args, xor2_args};
    vector<vector<ZExprID> > double_witness = {witness2, witness2};
    assert_unions_equal({xor0_args, xor1_args, xor2_args}, {witness2, witness2});
}

void proof_check_xor_neg_res(ZProof *proof, ZProofStep step) {
    ZExpr or_expr = get_result_pvt(proof, step.clause);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);

    ZExpr not0_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr not1_expr = get_expr_pvt(proof, or_args[1]);
    ZExpr not2_expr = get_expr_pvt(proof, or_args[2]);
    assert_eq(not0_expr.node, ZNOT);
    assert_eq(not1_expr.node, ZNOT);
    assert_eq(not2_expr.node, ZNOT);

    ZExpr xor0_expr = get_expr_pvt(proof, not0_expr.arg1);
    ZExpr xor1_expr = get_expr_pvt(proof, not1_expr.arg1);
    ZExpr xor2_expr = get_expr_pvt(proof, not2_expr.arg1);
    assert_eq(xor0_expr.node, ZXOR);
    assert_eq(xor1_expr.node, ZXOR);
    assert_eq(xor2_expr.node, ZXOR);
    vector<ZExprID> xor0_args = get_expr_list_pvt(proof, xor0_expr.listarg);
    vector<ZExprID> xor1_args = get_expr_list_pvt(proof, xor1_expr.listarg);
    vector<ZExprID> xor2_args = get_expr_list_pvt(proof, xor2_expr.listarg);

    ZExpr witness1_expr = get_expr_pvt(proof, step.expr_args[0]);
    vector<ZExprID> witness1 = get_expr_list_pvt(proof, witness1_expr.listarg);
    ZExpr witness2_expr = get_expr_pvt(proof, step.expr_args[1]);
    vector<ZExprID> witness2 = get_expr_list_pvt(proof, witness2_expr.listarg);
    // TODO witness1 not needed
    vector<vector<ZExprID> > all_args = {xor0_args, xor1_args, xor2_args};
    vector<vector<ZExprID> > double_witness = {witness2, witness2};
    assert_unions_equal({xor0_args, xor1_args, xor2_args}, {witness2, witness2});
}

void proof_check_not_cong(ZProof *proof, ZProofStep step) {
    ZExpr result_expr = get_result_pvt(proof, step.clause);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> result_args = get_expr_list_pvt(proof, result_expr.listarg);

    ZExpr app_eq_expr = get_expr_pvt(proof, result_args[0]);
    assert_eq(app_eq_expr.node, ZEQ);
    ZExpr app1 = get_expr_pvt(proof, app_eq_expr.arg1);
    assert_eq(app1.node, ZNOT);
    ZExpr app2 = get_expr_pvt(proof, app_eq_expr.arg2);
    assert_eq(app2.node, ZNOT);

    ZExpr not_eq_expr = get_expr_pvt(proof, result_args[1]);
    assert_eq(not_eq_expr.node, ZNOT);
    ZExpr arg_eq_expr = get_expr_pvt(proof, not_eq_expr.arg1);
    assert_eq(arg_eq_expr.node, ZEQ);
    assert_eq(arg_eq_expr.arg1, app1.arg1);
    assert_eq(arg_eq_expr.arg2, app2.arg1);
}
