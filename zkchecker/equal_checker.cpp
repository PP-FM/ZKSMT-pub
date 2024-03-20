#include <string>
#include <iostream>
#include <vector>
#include "equal_checker.h"
#include "utils.h"
using namespace std;

void proof_check_res_symm(ZProof *proof, ZProofStep step) {
    ZExprID or_expr_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, or_expr_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    //int s = or_args.size();
    //assert(s >= 2);
    // don't need to scan the whole thing to hide info here
    ZExpr eq1_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr not_expr = get_expr_pvt(proof, or_args[1]);
    ZExpr eq2_expr = get_expr_pvt(proof, not_expr.arg1);
    assert_eq(not_expr.node, ZNOT);
    assert_eq(eq1_expr.node, ZEQ);
    assert_eq(eq2_expr.node, ZEQ);
    assert_eq(eq1_expr.arg1, eq2_expr.arg2);
    assert_eq(eq1_expr.arg2, eq2_expr.arg1);
}

void proof_check_res_refl(ZProof *proof, ZProofStep step) {
    ZExprID or_expr_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, or_expr_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    // int s = or_args.size();
    // assert(s >= 1);

    ZExpr eq_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(eq_expr.node, ZEQ);
    assert_eq(eq_expr.arg1, eq_expr.arg2);
}

void proof_check_res_trans(ZProof *proof, ZProofStep step) {
    ZExprID or_expr_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, or_expr_id);
    assert_eq(or_expr.node, ZOR);
    
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);

    //assert(or_args.size() >= 3);
    ZExpr eq0_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr not1_expr = get_expr_pvt(proof, or_args[1]);
    ZExpr eq1_expr = get_expr_pvt(proof, not1_expr.arg1);
    ZExpr not2_expr = get_expr_pvt(proof, or_args[2]);
    ZExpr eq2_expr = get_expr_pvt(proof, not2_expr.arg1);
    assert_eq(eq0_expr.node, ZEQ);
    assert_eq(eq1_expr.node, ZEQ);
    assert_eq(eq2_expr.node, ZEQ);
    assert_eq(not1_expr.node, ZNOT);
    assert_eq(not2_expr.node, ZNOT);
    assert_eq(eq0_expr.arg1, eq1_expr.arg1);
    assert_eq(eq0_expr.arg2, eq2_expr.arg2);
    assert_eq(eq1_expr.arg2, eq2_expr.arg1);
}

// take vectors of the function arguments as expression args?
// doesn't solve problem of fake entries
// also I can get those arguments from result_args[0]
void proof_check_res_cong(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_id);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> result_args = get_expr_list_pvt(proof, result_expr.listarg);
   
    Integer result_size = real_size(result_args);
    
    ZExpr app_eq_expr = get_expr_pvt(proof, result_args[0]);
    assert_eq(app_eq_expr.node, ZEQ);
    
    ZExpr app1 = get_expr_pvt(proof, app_eq_expr.arg1);
    assert_eq(app1.node, ZNAPPLY);
    vector<ZExprID> app1_args = get_expr_list_pvt(proof, app1.listarg);
    Integer app1_size = real_size(app1_args);
    ZExpr app2 = get_expr_pvt(proof, app_eq_expr.arg2);
    assert_eq(app2.node, ZNAPPLY);
    vector<ZExprID> app2_args = get_expr_list_pvt(proof, app2.listarg);
    Integer app2_size = real_size(app2_args);

    int s = result_args.size();
    // assert(app1_args.size() == s);
    // assert(app2_args.size() == s);

    assert_eq(result_size, app1_size + Integer(32, 1, PUBLIC));
    assert_eq(app1_size, app2_size);
    assert_eq(app1.var, app2.var);

    for (int i = 0; i < s - 1; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC)).geq(app1_size);
        ZExpr not_eq_expr = get_expr_pvt(proof, result_args[i+1]);
        assert_eq(ZNOT.select(!is_fake, not_eq_expr.node), ZNOT);
        ZExpr arg_eq_expr = get_expr_pvt(proof, not_eq_expr.arg1);
        assert_eq(ZEQ.select(!is_fake, arg_eq_expr.node), ZEQ);
        ZExprID a1 = (arg_eq_expr.arg1).select(is_fake, app1_args[i]);
        assert_eq(a1, app1_args[i]);
        ZExprID a2 = (arg_eq_expr.arg2).select(is_fake, app2_args[i]);
        assert_eq(a2, app2_args[i]);
    }
}
