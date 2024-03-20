#include <string>
#include <iostream>
#include <vector>
#include "table.h"
#include "utils.h"
#include "lia_checker.h"
using namespace std;

// GENERAL TERMINOLOGY NOTES
// "pvt" means "private," not "pivot"
// "subst" means "substitution," not "subset"

/*
NEW LIA RULES
Multiplication is unary.  The numerator and denominator fields denote the
constant factor used for scaling.
TERM is no longer used.
The denominator field is no longer used.
There are no constants, only scaled ONE variables.

For multiply, everything in the inner sum needs to be a product.
We don't end up with pairs of stacked multiplications.
*/

/*
void assert_pvt_opp_comp(ZNodeID c1, ZNodeID c2) {
    Bit eq1eq2 = c1.equal(ZEQ) & c2.equal(ZEQ);
    Bit leq1geq2 = c1.equal(ZLEQ) & c2.equal(ZGEQ);
    Bit geq1leq2 = c1.equal(ZGEQ) & c2.equal(ZLEQ);
    Bit lt1gt2 = c1.equal(ZLT) & c2.equal(ZGT);
    Bit gt1lt2 = c1.equal(ZGT) & c2.equal(ZLT);
    assert_bit(eq1eq2 | leq1geq2 | geq1leq2 | lt1gt2 | gt1lt2);
}
*/

/*
Bit pvt_same_sign(Integer x, Integer y, int x_size = 32, int y_size = 32) {
    assert (x.size() == x_size); 
    assert (y.size() == y_size); 
    return !x.bits[x_size-1] ^ y.bits[y_size-1];
}

void assert_pvt_frac_equiv(Integer n1, Integer d1, Integer n2, Integer d2) {
    Integer z = Integer(32, 0, PUBLIC);
    assert_neq(d1, z);
    assert_neq(d2, z);
    assert_eq(n1 * d2, n2 * d1);
}
*/

/*
void assert_pvt_frac_lt(Integer n1, Integer d1, Integer n2, Integer d2) {
    Integer z = Integer(32, 0, PUBLIC);
    assert_neq(d1, z);
    assert_neq(d2, z);
    Bit comp = (n1 * d2).geq(n2 * d1);
    Bit invert = z.geq(d1 * d2);
    Bit comp_inv = (n2 * d1).geq(n1 * d2);
    assert_bit((!comp & !invert) | (!comp_inv & invert));
}

void assert_pvt_frac_leq(Integer n1, Integer d1, Integer n2, Integer d2) {
    Integer z = Integer(32, 0, PUBLIC);
    assert_neq(d1, z);
    assert_neq(d2, z);
    Bit comp = (n2 * d1).geq(n1 * d2);
    Bit invert = z.geq(d1 * d2);
    Bit comp_inv = (n1 * d2).geq(n2 * d1);
    assert_bit((comp & !invert) | (comp_inv & invert));
}
*/

/*
void assert_pvt_frac_scaling(Integer n1, Integer d1, Integer n2, Integer d2, Integer nf, Integer df) {
    assert_pvt_frac_equiv(n1 * nf, d1 * df, n2, d2);
}

void assert_pvt_frac_add(Integer n1, Integer d1, Integer n2, Integer d2, Integer nr, Integer dr) {
    Integer s = (n1 * d2) + (n2 * d1);
    assert_pvt_frac_equiv(s, d1 * d2, nr, dr);
}
*/

// the first argument must be a constant
// confirms that m1 * m2 = res
// This takes an is_real flag as an argument because it is used within a
// loop in assert_pvt_sum_scaling.  The loop may cover fake entries, and we
// don't want to reveal which entries are fake.  When this is used for a
// fake case, it computes a trivial result.
// deprecating invert parameter
void assert_pvt_mul(ZProof *proof, ZExprID m1, ZExprID m2, ZExprID res, Bit is_real) {
    ZExpr m1_expr = get_expr_pvt(proof, m1);
    assert_eq(ZMUL.select(is_real, m1_expr.node), ZMUL);
    ZExpr m2_expr = get_expr_pvt(proof, m2);
    assert_eq(ZMUL.select(is_real, m2_expr.node), ZMUL);
    ZExpr res_expr = get_expr_pvt(proof, res);
    assert_eq(ZMUL.select(is_real, res_expr.node), ZMUL);
    // Bit invert_bit = Bit(invert, PUBLIC);
    // Integer fnum = (m2_expr.numerator).select(invert_bit, -m2_expr.numerator);
    Integer fake_int = Integer(32, 1, PUBLIC);
    Integer m1n = fake_int.select(is_real, m1_expr.numerator);
    Integer m2n = fake_int.select(is_real, m2_expr.numerator);
    //Integer m1d = fake_int.select(is_real, m2_expr.denominator);
    Integer rn = fake_int.select(is_real, res_expr.numerator);
    //Integer rd = fake_int.select(is_real, res_expr.denominator);
    //Integer fn = fake_int.select(is_real, fnum);
    //Integer m2d = fake_int.select(is_real, m2_expr.denominator);
    // this is trivially true if is_real is false
    assert_eq(m1n * m2n, rn);
    //assert_pvt_frac_scaling(m1n, m1d, rn, rd, fn, m2d);
    // ZExpr m1_inner = get_expr_pvt(proof, m1_expr.arg1);
    // Integer one = Integer(32, ONE, PUBLIC);
    // assert_eq(ZVAR.select(is_real, m1_inner.node), ZVAR);
    // assert_eq(one.select(is_real, m1_inner.var), one);
    assert_eq((res_expr.arg1).select(is_real, m2_expr.arg1), res_expr.arg1);
}

// a1 + a2 = res
/*
void assert_pvt_term_add(ZProof *proof, ZExprID a1, ZExprID a2, ZExprID res, Bit is_real) {
    ZExpr a1_expr = get_expr_pvt(proof, a1);
    assert_eq(ZTERM.select(is_real, a1_expr.node), ZTERM);
    ZExpr a2_expr = get_expr_pvt(proof, a2);
    assert_eq(ZTERM.select(is_real, a2_expr.node), ZTERM);
    ZExpr res_expr = get_expr_pvt(proof, res);
    assert_eq(ZTERM.select(is_real, res_expr.node), ZTERM);



    Integer fake_int = Integer(32, 0, PUBLIC);
    Integer a1n = fake_int.select(is_real, a1_expr.numerator);
    Integer a1d = fake_int.select(is_real, a1_expr.denominator);
    Integer a2n = fake_int.select(is_real, a2_expr.numerator);
    Integer a2d = fake_int.select(is_real, a2_expr.denominator);
    Integer rn = fake_int.select(is_real, res_expr.numerator);
    Integer rd = fake_int.select(is_real, res_expr.denominator);
    assert_pvt_frac_add(a1n, a1d, a2n, a2d, rn, rd);
    assert_eq((a2_expr.var).select(is_real, a1_expr.var), a2_expr.var);
    assert_eq((res_expr.var).select(is_real, a1_expr.var), res_expr.var);
}
*/

// t1 = -t2
/*
void assert_pvt_term_negate(ZProof *proof, ZExprID t1, ZExprID t2, Bit is_real) {
    ZExpr t1_expr = get_expr_pvt(proof, t1);
    assert_eq(ZMUL.select(is_real, t1_expr.node), ZMUL);
    ZExpr t2_expr = get_expr_pvt(proof, t2);
    assert_eq(ZMUL.select(is_real, t2_expr.node), ZMUL);
    assert_eq((t2_expr.arg1).select(is_real, t1_expr.arg1), t2_expr.arg1);
    Integer fake_int = Integer(32, 1, PUBLIC);
    Integer t1n = fake_int.select(is_real, t1_expr.numerator);
    //Integer t1d = fake_int.select(is_real, t1_expr.denominator);
    Integer t2n = fake_int.select(is_real, -t2_expr.numerator);
    //Integer t2d = fake_int.select(is_real, t2_expr.denominator);
    assert_eq(t1n, t2n);
    //assert_pvt_frac_equiv(t1n, t1d, t2n, t2d);
}
*/

// factor * sum_id = scaled_id
void assert_pvt_sum_scaling(ZProof *proof, ZExprID sum_id, ZExprID scaled_id, ZExprID factor) {
    ZExpr sum_expr = get_expr_pvt(proof, sum_id);
    assert_eq(sum_expr.node, ZADD);
    vector<ZExprID> sum_args = get_expr_list_pvt(proof, sum_expr.listarg);
    Integer sum_size = real_size(sum_args);
    ZExpr scaled_expr = get_expr_pvt(proof, scaled_id);
    assert_eq(scaled_expr.node, ZADD);
    vector<ZExprID> scaled_args = get_expr_list_pvt(proof, scaled_expr.listarg);
    Integer scaled_size = real_size(scaled_args);
    // public max vector size
    int s = sum_args.size();
    //assert(s == scaled_args.size());
    assert_eq(sum_size, scaled_size);
    for (int i = 0; i < s; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC)).geq(sum_size);
        assert_pvt_mul(proof, factor, sum_args[i], scaled_args[i], !is_fake);
    }
}

// sum1 + sum2 = res
/*
void assert_pvt_sum_add(ZExprID sum1, ZExprID sum2, ZExprID res, const vector<ZExpr>& expr_table, const vector<vector<ZExprID> >& arg_lists) {
    ZExpr sum1_expr = get_pvt<ZExpr>(expr_table, sum1);
    assert_eq(sum1_expr.node, ZADD);
    vector<ZExprID> sum1_args = get_pvt<vector<ZExprID> >(arg_lists, sum1_expr.listarg);
    Integer sum1_size = real_size(sum1_args);
    ZExpr sum2_expr = get_pvt<ZExpr>(expr_table, sum2);
    assert_eq(sum2_expr.node, ZADD);
    vector<ZExprID> sum2_args = get_pvt<vector<ZExprID> >(arg_lists, sum2_expr.listarg);
    Integer sum2_size = real_size(sum2_args);
    ZExpr res_expr = get_pvt<ZExpr>(expr_table, res);
    assert_eq(res_expr.node, ZADD);
    vector<ZExprID> res_args = get_pvt<vector<ZExprID> >(arg_lists, res_expr.listarg);
    Integer res_size = real_size(res_args);
    int s = sum1_args.size();
    //assert(s == sum2_args.size());
    //assert(s == res_args.size());
    assert_eq(sum1_size, sum2_size);
    assert_eq(sum1_size, res_size);
    for (int i = 0; i < s; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC)).geq(res_size);
        assert_pvt_term_add(sum1_args[i], sum2_args[i], res_args[i], !is_fake, expr_table);
    }
}
*/

void assert_pvt_consolidation(ZProof *proof, ZExprID sum1, ZExprID sum2) {
    // sum1 not allowed to be empty
    ZExpr sum1_expr = get_expr_pvt(proof, sum1);
    assert_eq(sum1_expr.node, ZADD);
    vector<ZExprID> sum1_args = get_expr_list_pvt(proof, sum1_expr.listarg);
    Integer sum1_size = real_size(sum1_args);
    ZExpr sum2_expr = get_expr_pvt(proof, sum2);
    assert_eq(sum2_expr.node, ZADD);
    vector<ZExprID> sum2_args = get_expr_list_pvt(proof, sum2_expr.listarg);
    Integer sum2_size = real_size(sum2_args);
    int s = sum1_args.size();
    //assert(s == sum2_args.size());
    Integer zero = Integer(32, 0, PUBLIC);
    //Integer one = Integer(32, 1, PUBLIC);
    // if both sums are empty, it doesn't matter what v is
    // we can use the default value from the fake expr
    // if sum2 is non-empty, sum1 must be non-empty
    // TODO can we get rid of non-emptiness requirement?
    ZExpr v_outer = get_expr_pvt(proof, sum1_args[0]);
    assert_eq(v_outer.node, ZMUL);
    ZExprID v_id = v_outer.arg1;
    // ZExpr v_expr = get_expr_pvt(proof, sum1_args[0]);
    // ZVarID v = v_expr.var;
    Integer num1 = zero;
    //Integer den1 = one;
    Integer num2 = zero;
    //Integer den2 = one;
    for (int i = 0; i < s; i++) {
        Integer idx = Integer(32, i, PUBLIC);
        Bit fake1 = idx.geq(sum1_size);
        ZExpr t1 = get_expr_pvt(proof, sum1_args[i]);
        assert_eq(ZMUL, (t1.node).select(fake1, ZMUL));
        assert_eq(v_id, (t1.arg1).select(fake1, v_id));
        //Integer t1_num = t1.numerator;
        //Integer t1_den = t1.denominator;
        num1 = num1.select(!fake1, num1 + t1.numerator);
        //num1 = num1.select(!fake1, (t1_num * den1) + (num1 * t1_den));
        //den1 = den1.select(!fake1, den1 * t1_den);
        Bit fake2 = idx.geq(sum2_size);
        ZExpr t2 = get_expr_pvt(proof, sum2_args[i]);
        assert_eq(ZMUL, (t2.node).select(fake2, ZMUL));
        assert_eq(v_id, (t2.arg1).select(fake2, v_id));
        //Integer t2_num = t2.numerator;
        //Integer t2_den = t2.denominator;
        num2 = num2.select(!fake2, num2 + t2.numerator);
        //num2 = num2.select(!fake2, (t2_num * den2) + (num2 * t2_den));
        //den2 = den2.select(!fake2, den2 * t2_den);
    }
    assert_eq(num1, num2);
    //assert_pvt_frac_equiv(num1, den1, num2, den2);
}

void assert_pvt_scaled_constant(ZProof *proof, ZExprID c, Bit is_real) {
    // Integer one = Integer(32, ONE, PUBLIC);
    // Integer zero = Integer(32, 0, PUBLIC);
    // Integer nonzero = Integer(32, 1, PUBLIC);
    ZExpr c_expr = get_expr_pvt(proof, c);
    // assert_eq(ZTERM.select(is_real, c_expr.node), ZTERM);
    // assert_eq(one.select(is_real, c_expr.var), one);
    // assert_neq(nonzero.select(is_real, c_expr.denominator), zero);
    assert_eq(ZMUL, ZMUL.select(is_real, c_expr.node));
    ZExpr c_arg = get_expr_pvt(proof, c_expr.arg1);
    assert_eq(ZVAR, ZVAR.select(is_real, c_arg.node));
    assert_eq(c_arg.var, (c_arg.var).select(is_real, Integer(32, ONE, PUBLIC)));
}

void assert_pvt_nonneg_constant(ZProof *proof, ZExprID c, Bit is_real) {
    assert_pvt_scaled_constant(proof, c, is_real);
    ZExpr c_expr = get_expr_pvt(proof, c);
    Integer zero = Integer(32, 0, PUBLIC);
    //assert_bit(!(is_real & (c_expr.denominator).equal(zero)));
    //assert_bit(!is_real | zero.equal(c_expr.numerator) | pvt_same_sign(c_expr.numerator, c_expr.denominator));
    assert_bit(!is_real | (c_expr.numerator).geq(zero));
}

// This helper function confirms that the entries in the conclusion of
// Farkas' lemma correspond with the entries in its argument.
// The argument is a sum of paired terms, and those pairs of terms must
// appear together in the conclusion, in the same order that was used for
// the argument.
void assert_pvt_farkas_sum(ZProof *proof, ZExprID sum_id, ZExprID or_id) {
    ZExpr sum_expr = get_expr_pvt(proof, sum_id);
    assert_eq(sum_expr.node, ZADD);
    ZExpr or_expr = get_expr_pvt(proof, or_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> sum_args = get_expr_list_pvt(proof, sum_expr.listarg);
    Integer sum_size = real_size(sum_args);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    Integer or_size = real_size(or_args);
    int s = sum_args.size();
    //assert(s == or_args.size());
    assert_eq(sum_size, or_size * Integer(32, 2, PUBLIC));
    int o = s / 2;
    Integer zero = Integer(32, 0, PUBLIC);
    // no need to worry about even-odd issues here
    for (int i = 0; i < o; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC)).geq(or_size);
        ZExpr plus_expr = get_expr_pvt(proof, sum_args[2*i]);
        assert_eq(ZMUL, (plus_expr.node).select(is_fake, ZMUL));
        ZExpr minus_expr = get_expr_pvt(proof, sum_args[(2*i)+1]);
        assert_eq(ZMUL, (minus_expr.node).select(is_fake, ZMUL));
        ZExpr not_expr = get_expr_pvt(proof, or_args[i]);
        assert_eq(ZNOT, (not_expr.node).select(is_fake, ZNOT));
        ZExpr comp_expr = get_expr_pvt(proof, not_expr.arg1);
        assert_bit(is_fake | ZEQ.equal(comp_expr.node) | ZLEQ.equal(comp_expr.node) | ZLT.equal(comp_expr.node));
        assert_bit(is_fake | (plus_expr.numerator).geq(zero));
        assert_eq(plus_expr.numerator, (-minus_expr.numerator).select(is_fake, plus_expr.numerator));
        // assert_pvt_nonneg_constant(proof, plus_expr.arg1, !is_fake);
        // assert_pvt_term_negate(proof, plus_expr.arg1, minus_expr.arg1, !is_fake);
        assert_eq(comp_expr.arg1, (plus_expr.arg1).select(is_fake, comp_expr.arg1));
        assert_eq(comp_expr.arg2, (minus_expr.arg1).select(is_fake, comp_expr.arg2));
    }
}

// If the constant in the sum for Farkas' lemma is 0, then at least one of
// the binary relations in the conclusion needs to be strict inequality.
// This helper function confirms that that condition is satisfied.
// If the constant is not 0, this still runs anyway in order to avoid
// revealing information about the constant.
// we should know that c_expr is a MUL
void assert_pvt_zero_correctness(ZProof *proof, ZExprID c, ZExprID or_id) {
    ZExpr c_expr = get_expr_pvt(proof, c);
    Bit is_zero = (c_expr.numerator).equal(Integer(32, 0, PUBLIC));
    ZExpr or_expr = get_expr_pvt(proof, or_id);
    // do we need OR even if it's nonzero?
    // it should always be there
    // maybe I should change the non-crypto version too
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    Integer or_size = real_size(or_args);
    int s = or_args.size();
    Bit lt_found = Bit(false, PUBLIC);
    for (int i = 0; i < s; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC)).geq(or_size);
        ZExpr neg_expr = get_expr_pvt(proof, or_args[i]);
        assert_eq(ZNOT, (neg_expr.node).select(is_fake, ZNOT));
        ZExpr comp_expr = get_expr_pvt(proof, neg_expr.arg1);
        lt_found = lt_found | (!is_fake & (comp_expr.node).equal(ZLT));
    }
    assert_bit(lt_found | !is_zero);
}

// this can cover n-ary Boolean operations too
void assert_pvt_sum_cong(ZProof *proof, ZExprID res_id, ZExprID original_id, ZExprID nots_id) {
    ZExpr res_sum = get_expr_pvt(proof, res_id);
    ZNodeID res_node = res_sum.node;
    Bit is_nary = (res_node.equal(ZADD) | res_node.equal(ZAND) | res_node.equal(ZOR) | res_node.equal(ZXOR));
    assert_bit(is_nary);
    vector<ZExprID> res_args = get_expr_list_pvt(proof, res_sum.listarg);
    Integer res_size = real_size(res_args);
    ZExpr original_sum = get_expr_pvt(proof, original_id);
    assert_eq(original_sum.node, res_node);
    vector<ZExprID> original_args = get_expr_list_pvt(proof, original_sum.listarg);
    Integer original_size = real_size(original_args);
    ZExpr nots_expr = get_expr_pvt(proof, nots_id);
    // don't need to repeat checks for these
    vector<ZExprID> nots_args = get_expr_list_pvt(proof, nots_expr.listarg);
    Integer nots_size = real_size(nots_args);
    int s = res_args.size();
    // index 0 is still there
    //assert(s == original_args.size());
    //assert(s == nots_args.size());
    assert_eq(res_size, original_size);
    assert_eq(res_size + Integer(32, 1, PUBLIC), nots_size);
    for (int i = 0; i < s - 1; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC).geq(res_size));
        ZExpr not_expr = get_expr_pvt(proof, nots_args[i+1]);
        assert_eq(ZNOT, (not_expr.node).select(is_fake, ZNOT));
        ZExpr eq_expr = get_expr_pvt(proof, not_expr.arg1);
        assert_eq(ZEQ, (eq_expr.node).select(is_fake, ZEQ));
        assert_eq(eq_expr.arg1, (original_args[i]).select(is_fake, eq_expr.arg1));
        assert_eq(eq_expr.arg2, (res_args[i]).select(is_fake, eq_expr.arg2));
    }
}

void assert_pvt_binop_cong(ZProof *proof, ZExprID res_id, ZExprID original_id, ZExprID eq1_id, ZExprID eq2_id) {
    ZExpr res_op = get_expr_pvt(proof, res_id);
    ZNodeID res_node = res_op.node;
    Bit is_binop = (res_node.equal(ZEQ) | res_node.equal(ZLEQ) | res_node.equal(ZGEQ) | res_node.equal(ZLT) | res_node.equal(ZGT) | res_node.equal(ZIMPLIES));
    assert_bit(is_binop);
    ZExpr original_op = get_expr_pvt(proof, original_id);
    assert_eq(res_node, original_op.node);
    ZExpr eq1_expr = get_expr_pvt(proof, eq1_id);
    assert_eq(eq1_expr.node, ZEQ);
    ZExpr eq2_expr = get_expr_pvt(proof, eq2_id);
    assert_eq(eq2_expr.node, ZEQ);
    assert_eq(res_op.arg1, eq1_expr.arg1);
    assert_eq(res_op.arg2, eq2_expr.arg1);
    assert_eq(original_op.arg1, eq1_expr.arg2);
    assert_eq(original_op.arg2, eq2_expr.arg2);
}

void assert_pvt_mul_cong(ZProof *proof, ZExprID res_id, ZExprID original_id, ZExprID eq_id) {
    ZExpr res_op = get_expr_pvt(proof, res_id);
    assert_eq(res_op.node, ZMUL);
    ZExpr original_op = get_expr_pvt(proof, original_id);
    assert_eq(original_op.node, ZMUL);
    assert_eq(res_op.numerator, original_op.numerator);
    ZExpr eq_expr = get_expr_pvt(proof, eq_id);
    assert_eq(eq_expr.node, ZEQ);
    assert_eq(res_op.arg1, eq_expr.arg1);
    assert_eq(original_op.arg1, eq_expr.arg2);
}

// This confirms that an ADD expression is a flat sum of TERM nodes whose
// coefficients are all integers.  Even though we support fractions, LIA
// variables can only assume integer values, so this confirms that the sum
// as a whole can assume only integer values.
/*
void assert_pvt_integer_sum(ZProof *proof, ZExprID sum_id) {
    // need to avoid fake entries
    ZExpr sum_expr = get_expr_pvt(proof, sum_id);
    assert_eq(sum_expr.node, ZADD);
    vector<ZExprID> sum_args = get_expr_list_pvt(proof, sum_expr.listarg);
    Integer sum_size = real_size(sum_args);
    int s = sum_args.size();
    Integer one = Integer(32, 1, PUBLIC);
    for (int i = 0; i < s; i++) {
        Bit is_fake = (Integer(32, i, PUBLIC)).geq(sum_size);
        ZExpr term_expr = get_expr_pvt(proof, sum_args[i]);
        assert_eq(ZTERM.select(!is_fake, term_expr.node), ZTERM);
        assert_eq(one.select(!is_fake, term_expr.denominator), one);
    }
}
*/

void proof_check_total(ZProof *proof, ZProofStep step) {
    ZExprID or_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, or_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    //assert(or_args.size() >= 2);
    // don't use get_pvt on OR and ADD arguments
    // public indexing for them, not private
    // EMP requires x86 architecture
    // polynomial checks will be added later
    // no index shuffling
    ZExpr leq_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr lt_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(leq_expr.node, ZLEQ);
    assert_eq(lt_expr.node, ZLT);
    assert_eq(leq_expr.arg1,  lt_expr.arg2);
    assert_eq(leq_expr.arg2,  lt_expr.arg1);
}

void proof_check_trichotomy(ZProof *proof, ZProofStep step) {
    ZExprID or_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, or_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    //assert(or_args.size() >= 3);
    ZExpr lt_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr eq_expr = get_expr_pvt(proof, or_args[1]);
    ZExpr swap_expr = get_expr_pvt(proof, or_args[2]);
    assert_eq(lt_expr.node, ZLT);
    assert_eq(eq_expr.node, ZEQ);
    assert_eq(swap_expr.node, ZLT);
    assert_eq(lt_expr.arg1, eq_expr.arg1);
    assert_eq(lt_expr.arg1, swap_expr.arg2);
    assert_eq(lt_expr.arg2, eq_expr.arg2);
    assert_eq(lt_expr.arg2, swap_expr.arg1);
}

/*
void proof_check_res_op_flip(ZProof *proof, ZProofStep step) {
    ZExprID eq_id = get_clause_pvt(proof, step.clause).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_id);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr comp1 = get_expr_pvt(proof, eq_expr.arg1);
    ZExpr comp2 = get_expr_pvt(proof, eq_expr.arg2);
    assert_eq(comp1.arg1, comp2.arg2);
    assert_eq(comp1.arg2, comp2.arg1);
    assert_pvt_opp_comp(comp1.node, comp2.node);
}
*/

void proof_check_singleton_add_eq(ZProof *proof, ZProofStep step) {
    ZExprID eq_expr_id = get_clause_pvt(proof, step.clause).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_expr_id);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr add_expr = get_expr_pvt(proof, eq_expr.arg1);
    assert_eq(add_expr.node, ZADD);
    vector<ZExprID> add_args = get_expr_list_pvt(proof, add_expr.listarg);
    //assert(add_args.size() >= 1);
    assert_real_size(add_args, 1);
    assert_eq(add_args[0], eq_expr.arg2);
}

void proof_check_mul_single(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_id);
    assert_eq(result_expr.node, ZEQ);
    ZExpr mul_expr = get_expr_pvt(proof, result_expr.arg1);
    assert_eq(mul_expr.node, ZMUL);
    assert_eq(mul_expr.numerator, Integer(32, 1, PUBLIC));
    assert_eq(mul_expr.arg1, result_expr.arg2);
}

/*
void proof_check_sum_reordering_eq(ZProof *proof, ZProofStep step) {
    ZExprID result_expr_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_expr_id);
    assert_eq(result_expr.node, ZEQ);
    ZExpr reordered = get_expr_pvt(proof, result_expr.arg2);
    assert_eq(reordered.node, ZADD);
    vector<ZExprID> reordered_args = get_expr_list_pvt(proof, reordered.listarg);
    ZExpr original = get_expr_pvt(proof, result_expr.arg1);
    assert_eq(original.node, ZADD);
    vector<ZExprID> original_args = get_expr_list_pvt(proof, original.listarg);
    // no need for size equality check; degree takes care of that
    assert_set_equal(original_args, reordered_args);
}
*/

void proof_check_total_int(ZProof *proof, ZProofStep step) {
    ZExprID or_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, or_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    // int s = or_args.size();
    //assert(s >= 2);
    ZExpr low_expr = get_expr_pvt(proof, or_args[0]);
    assert_eq(low_expr.node, Integer(32, LEQ, PUBLIC));
    ZExpr high_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(high_expr.node, Integer(32, LEQ, PUBLIC));
    //assert_pvt_integer_sum(proof, low_expr.arg1);
    assert_eq(low_expr.arg1, high_expr.arg2);
    // ZExpr low_sum = get_expr_pvt(proof, low_expr.arg2);
    // assert_eq(low_sum.node, ZADD);
    // vector<ZExprID> low_sum_args = get_expr_list_pvt(proof, low_sum.listarg);
    // this list can have only one real entry
    // would it be better not to have a sum here at all?
    // I'll stick with it for now
    // some of these size checks are redundant
    // assert(s == low_sum_args.size());
    // assert_real_size(low_sum_args, 1);

    // ZExpr high_sum = get_expr_pvt(proof, high_expr.arg1);
    // assert_eq(high_sum.node, ZADD);
    // vector<ZExprID> high_sum_args = get_expr_list_pvt(proof, high_sum.listarg);
    // // assert(s == high_sum_args.size());
    // assert_real_size(high_sum_args, 1);

    ZExpr low_const = get_expr_pvt(proof, low_expr.arg2);
    ZExpr high_const = get_expr_pvt(proof, high_expr.arg1);
    assert_eq(low_const.node, ZMUL);
    assert_eq(high_const.node, ZMUL);
    ZExpr low_const_arg = get_expr_pvt(proof, low_const.arg1);
    ZExpr high_const_arg = get_expr_pvt(proof, high_const.arg1);
    assert_eq(low_const_arg.node, ZVAR);
    assert_eq(high_const_arg.node, ZVAR);
    Integer one = Integer(32, ONE, PUBLIC);
    assert_eq(low_const_arg.var, one);
    assert_eq(high_const_arg.var, one);
    //assert_eq(low_const.denominator, Integer(32, 1, PUBLIC));
    //assert_eq(high_const.denominator, Integer(32, 1, PUBLIC));
    assert_eq(high_const.numerator, low_const.numerator + Integer(32, 1, PUBLIC));
}

// for padding pointers, no correspondence matters
void proof_check_res_mul(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_id);
    assert_eq(result_expr.node, ZEQ);
    ZExpr mul_expr = get_expr_pvt(proof, result_expr.arg1);
    assert_eq(mul_expr.node, ZMUL);
    assert_pvt_sum_scaling(proof, mul_expr.arg1, result_expr.arg2, result_expr.arg1);
}

/*
void proof_check_res_add(ZProof *proof, ZProofStep step) {
    ZExprID eq_id = get_clause_pvt(proof, step.clause).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_id);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr sum_expr = get_expr_pvt(proof, eq_expr.arg1);
    assert_eq(sum_expr.node, ZADD);
    vector<ZExprID> sum_args = get_expr_list_pvt(proof, sum_expr.listarg);
    assert_real_size(sum_args, 2);
    //assert(sum_args.size() >= 2);
    assert_pvt_sum_add(sum_args[0], sum_args[1], eq_expr.arg2, proof->expr_table, proof->expr_list_table);
}
*/

void proof_check_consolidate_zk(ZProof *proof, ZProofStep step) {
    // three expression arguments
    ZExprID eq_id = get_clause_pvt(proof, step.clause).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_id);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr left_expr = get_expr_pvt(proof, eq_expr.arg1);
    assert_eq(left_expr.node, ZADD);
    vector<ZExprID> left_args = get_expr_list_pvt(proof, left_expr.listarg);
    ZExpr right_expr = get_expr_pvt(proof, eq_expr.arg2);
    assert_eq(right_expr.node, ZADD);
    vector<ZExprID> right_args = get_expr_list_pvt(proof, right_expr.listarg);
    // node types for these don't matter
    ZExpr no_var = get_expr_pvt(proof, step.expr_args[0]);
    vector<ZExprID> no_var_args = get_expr_list_pvt(proof, no_var.listarg);
    ZExpr left_var = get_expr_pvt(proof, step.expr_args[1]);
    vector<ZExprID> left_var_args = get_expr_list_pvt(proof, left_var.listarg);
    ZExpr right_var = get_expr_pvt(proof, step.expr_args[2]);
    vector<ZExprID> right_var_args = get_expr_list_pvt(proof, right_var.listarg);
    assert_union_subset(no_var_args, left_var_args, left_args);
    assert_union_subset(no_var_args, right_var_args, right_args);
    assert_pvt_consolidation(proof, step.expr_args[1], step.expr_args[2]);
}

void proof_check_sum_flatten_zk(ZProof *proof, ZProofStep step) {
    // weakened version that flattens only one at a time
    ZExprID eq_id = get_clause_pvt(proof, step.clause).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_id);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr orig_expr = get_expr_pvt(proof, eq_expr.arg1);
    assert_eq(orig_expr.node, ZADD);
    vector<ZExprID> orig_args = get_expr_list_pvt(proof, orig_expr.listarg);
    ZExpr flat_expr = get_expr_pvt(proof, eq_expr.arg2);
    assert_eq(flat_expr.node, ZADD);
    vector<ZExprID> flat_args = get_expr_list_pvt(proof, flat_expr.listarg);
    // node types for expression arguments are irrelevant
    ZExpr inner = get_expr_pvt(proof, step.expr_args[1]);
    vector<ZExprID> inner_args = get_expr_list_pvt(proof, inner.listarg);
    ZExpr orig_no_inner = get_expr_pvt(proof, step.expr_args[0]);
    vector<ZExprID> orig_no_inner_args = get_expr_list_pvt(proof, orig_no_inner.listarg);
    // need this size check so extra terms aren't smuggled into the sum
    // it's fine for this to be an upper bound
    // the line afterward will fail if it's 0
    assert_real_size(inner_args, 1);
    ZExpr nested = get_expr_pvt(proof, inner_args[0]);
    //assert_eq(nested.node, ZADD);
    vector<ZExprID> nested_args = get_expr_list_pvt(proof, nested.listarg);
    //int s = orig_args.size();
    //assert(s == flat_args.size());
    //assert(s == inner_args.size());
    //assert(s == orig_no_inner_args.size());
    //assert(s == nested_args.size());
    assert_union_subset(orig_no_inner_args, nested_args, flat_args);
    assert_union_subset(orig_no_inner_args, inner_args, orig_args);
}

void proof_check_farkas(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_id);
    // clause argument for this one
    ZExprID eq_id = get_clause_pvt(proof, step.clause_args[0]).result;
    ZExpr eq_expr = get_expr_pvt(proof, eq_id);
    assert_eq(eq_expr.node, ZEQ);
    ZExpr sum_of_constant = get_expr_pvt(proof, eq_expr.arg2);
    assert_eq(sum_of_constant.node, ZADD);
    vector<ZExprID> constant_args = get_expr_list_pvt(proof, sum_of_constant.listarg);
    assert_real_size(constant_args, 1);
    //assert(constant_args.size() >= 1);
    Bit true_bit = Bit(true, PUBLIC);
    //assert_pvt_scaled_constant(proof, constant_args[0], true_bit);
    assert_pvt_nonneg_constant(proof, constant_args[0], true_bit);
    assert_pvt_farkas_sum(proof, eq_expr.arg1, result_id);
    assert_pvt_zero_correctness(proof, constant_args[0], result_id);
}

void proof_check_sum_cong(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_id);
    assert_eq(result_expr.node, ZOR);
    vector<ZExprID> result_args = get_expr_list_pvt(proof, result_expr.listarg);
    ZExpr subst_expr = get_expr_pvt(proof, result_args[0]);
    assert_eq(subst_expr.node, ZEQ);
    // entry 0 of result_args is irrelevant for this part
    // all of the lists are the same physical size
    // logical size of result_args is 1 higher than that of not_substs
    // logical sizes of res_sum and original sum are k
    // then logical size of result_args is k+1
    // don't care about entry 0
    assert_pvt_sum_cong(proof, subst_expr.arg2, subst_expr.arg1, result_id);
}

/*
void proof_check_mul_comm(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr result_expr = get_expr_pvt(proof, result_id);
    assert_eq(result_expr.node, ZEQ);
    ZExpr mul1 = get_expr_pvt(proof, result_expr.arg1);
    assert_eq(mul1.node, ZMUL);
    ZExpr mul2 = get_expr_pvt(proof, result_expr.arg2);
    assert_eq(mul2.node, ZMUL);
    assert_eq(mul1.arg1, mul2.arg2);
    assert_eq(mul1.arg2, mul2.arg1);
}
*/

void proof_check_binop_cong(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, result_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    //assert(or_args.size() >= 3);
    ZExpr subst_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr not1_expr = get_expr_pvt(proof, or_args[1]);
    ZExpr not2_expr = get_expr_pvt(proof, or_args[2]);
    assert_eq(subst_expr.node, ZEQ);
    assert_eq(not1_expr.node, ZNOT);
    assert_eq(not2_expr.node, ZNOT);
    assert_pvt_binop_cong(proof, subst_expr.arg1, subst_expr.arg2, not1_expr.arg1, not2_expr.arg1);
}

void proof_check_mul_cong(ZProof *proof, ZProofStep step) {
    ZExprID result_id = get_clause_pvt(proof, step.clause).result;
    ZExpr or_expr = get_expr_pvt(proof, result_id);
    assert_eq(or_expr.node, ZOR);
    vector<ZExprID> or_args = get_expr_list_pvt(proof, or_expr.listarg);
    ZExpr subst_expr = get_expr_pvt(proof, or_args[0]);
    ZExpr not_expr = get_expr_pvt(proof, or_args[1]);
    assert_eq(subst_expr.node, ZEQ);
    assert_eq(not_expr.node, ZNOT);
    assert_pvt_mul_cong(proof, subst_expr.arg1, subst_expr.arg2, not_expr.arg1);
}
