#include <string>
#include <iostream>
#include <vector>
#include <cassert>
#include "lia_checker.h"
#include "boolean_checker.h"
using namespace std;

/*
NodeID opposite_comparison(NodeID comp) {
    if (comp == EQ) {
        return EQ;
    } else if (comp == LEQ) {
        return GEQ;
    } else if (comp == GEQ) {
        return LEQ;
    } else if (comp == LT) {
        return GT;
    } else if (comp == GT) {
        return LT;
    }
    // should never be called on anything else
    assert(false);
    return comp;
}
*/

// if x is 0, either sign is fine for y
/*
bool same_sign(int x, int y) {
    return x * y >= 0;
}

void assert_frac_equiv(int n1, int d1, int n2, int d2) {
    assert(d1 != 0);
    assert(d2 != 0);
    assert(n1 * d2 == n2 * d1);
}
*/

/*
void assert_frac_lt(int n1, int d1, int n2, int d2) {
    assert(d1 != 0);
    assert(d2 != 0);
    if (d1 * d2 >= 0) {
        assert(n1 * d2 < n2 * d1);
    } else {
        assert(n2 * d1 < n1 * d2);
    }
}

void assert_frac_leq(int n1, int d1, int n2, int d2) {
    assert(d1 != 0);
    assert(d2 != 0);
    if (d1 * d2 >= 0) {
        assert(n1 * d2 <= n2 * d1);
    } else {
        assert(n2 * d1 <= n1 * d2);
    }
}
*/

// (n1/d1) * (nf/df) = (n2/d2)
/*
void assert_frac_scaling(int n1, int d1, int n2, int d2, int nf, int df) {
    assert_frac_equiv(n1 * nf, d1 * df, n2, d2);
}

void assert_frac_add(int n1, int d1, int n2, int d2, int nr, int dr) {
    int s = (n1 * d2) + (n2 * d1);
    assert_frac_equiv(s, d1 * d2, nr, dr);
}
*/

// m1 * m2 = res
// m2 is now the scaling factor
// invert is never actually used anymore
void assert_mul(Proof *proof, ExprID m1, int m2, ExprID res) {
    vector<Expr> expr_table = proof->expr_table;
    Expr m1_expr = expr_table[m1];
    assert(m1_expr.node == MUL);
    //Expr m2_expr = expr_table[m2];
    //assert(m2_expr.node == MUL);
    Expr res_expr = expr_table[res];
    assert(res_expr.node == MUL);
    //assert(res_expr.numerator == factor_expr.numerator);
    //assert(res_expr.denominator == factor_expr.denominator);
    assert(res_expr.arg1 == m1_expr.arg1);
    // int fnum = invert ? -factor_expr.numerator : factor_expr.numerator;
    assert(m1_expr.numerator * m2 == res_expr.numerator);
    //Expr m2_inner = expr_table[m2_expr.arg1];
    //assert(m2_inner.node == VAR);
    //assert(m2_inner.var == ONE);
    //assert_frac_scaling(m1_expr.numerator, m1_expr.denominator, res_expr.numerator, res_expr.denominator, fnum, m2_expr.denominator);
    // if (res_expr.var == ONE) {
    //     assert(m1_expr.var == ONE);
    //     assert(m2_expr.var == ONE);
    // } else if (m1_expr.var == ONE) {
    //     assert(res_expr.var == m2_expr.var);
    // } else if (m2_expr.var == ONE) {
    //     assert(res_expr.var == m1_expr.var);
    // } else {
    //     assert(false);
    // }
}

// a1 + a2 = res
/*
void assert_term_add(Proof *proof, ExprID a1, ExprID a2, ExprID res) {
    vector<Expr> expr_table = proof->expr_table;
    Expr a1_expr = expr_table[a1];
    assert(a1_expr.node == TERM);
    Expr a2_expr = expr_table[a2];
    assert(a2_expr.node == TERM);
    Expr res_expr = expr_table[res];
    assert(res_expr.node == TERM);
    assert_frac_add(a1_expr.numerator, a1_expr.denominator, a2_expr.numerator, a2_expr.denominator, res_expr.numerator, res_expr.denominator);
    assert(a1_expr.var == a2_expr.var);
    assert(a1_expr.var == res_expr.var);
}
*/

// t1 = -t2
/*
void assert_term_negate(Proof *proof, ExprID t1, ExprID t2) {
    vector<Expr> expr_table = proof->expr_table;
    Expr t1_expr = expr_table[t1];
    assert(t1_expr.node == MUL);
    Expr t2_expr = expr_table[t2];
    assert(t2_expr.node == MUL);
    assert(t1_expr.arg1 == t2_expr.arg1);
    assert(t1_expr.numerator == -t2_expr.numerator);
    //assert_frac_equiv(t1_expr.numerator, t1_expr.denominator, -t2_expr.numerator, t2_expr.denominator);
}
*/

// now factor should point to the MUL node
// that node has the numerator and denominator
void assert_sum_scaling(Proof *proof, ExprID sum_id, ExprID scaled_id, int factor) {
    vector<Expr> expr_table = proof->expr_table;
    vector<vector<ExprID> > arg_lists = proof->expr_list_table;
    Expr sum_expr = expr_table[sum_id];
    assert(sum_expr.node == ADD);
    vector<ExprID> sum_args = arg_lists[sum_expr.listarg];
    Expr scaled_expr = expr_table[scaled_id];
    assert(scaled_expr.node == ADD);
    vector<ExprID> scaled_args = arg_lists[scaled_expr.listarg];
    int s = sum_args.size();
    assert(s == scaled_args.size());
    for (int i = 0; i < s; i++) {
        assert_mul(proof, sum_args[i], factor, scaled_args[i]);
    }
}

/*
void assert_sum_add(ExprID sum1, ExprID sum2, ExprID res, const vector<Expr>& expr_table, const vector<vector<int> >& arg_lists) {
    Expr sum1_expr = expr_table[sum1];
    assert(sum1_expr.node == ADD);
    vector<ExprID> sum1_args = arg_lists[sum1_expr.listarg];
    Expr sum2_expr = expr_table[sum2];
    assert(sum2_expr.node == ADD);
    vector<ExprID> sum2_args = arg_lists[sum2_expr.listarg];
    Expr res_expr = expr_table[res];
    assert(res_expr.node == ADD);
    vector<ExprID> res_args = arg_lists[res_expr.listarg];
    int s = sum1_args.size();
    assert(s == sum2_args.size());
    assert(s == res_args.size());
    for (int i = 0; i < s; i++) {
        assert_term_add(sum1_args[i], sum2_args[i], res_args[i], expr_table);
    }
}
*/

// order of non-v terms is irrelevant
// no longer just about a variable ID
// we can consolidate other things
// take an expression ID
void assert_consolidation(Proof *proof, ExprID sum1, ExprID sum2, ExprID v) {
    vector<Expr> expr_table = proof->expr_table;
    vector<vector<ExprID> > arg_lists = proof->expr_list_table;
    Expr sum1_expr = expr_table[sum1];
    assert(sum1_expr.node == ADD);
    vector<ExprID> sum1_args = arg_lists[sum1_expr.listarg];
    Expr sum2_expr = expr_table[sum2];
    assert(sum2_expr.node == ADD);
    vector<ExprID> sum2_args = arg_lists[sum2_expr.listarg];
    // sum2 may be larger or smaller than sum1
    int num1 = 0;
    //int den1 = 1;
    int num2 = 0;
    //int den2 = 1;
    int s1 = sum1_args.size();
    int s2 = sum2_args.size();
    // real fractions seemingly never needed for examples covered
    for (int i = 0; i < s1; i++) {
        Expr t = expr_table[sum1_args[i]];
        assert(t.node == MUL);
        assert(t.arg1 == v);
        //assert(t.var == v);
        //int t_num = t.numerator;
        //int t_den = t.denominator;
        num1 += t.numerator;
        //num1 = (t_num * den1) + (num1 * t_den);
        //den1 *= t_den;
    }
    for (int i = 0; i < s2; i++) {
        Expr t = expr_table[sum2_args[i]];
        assert(t.node == MUL);
        assert(t.arg1 == v);
        num2 += t.numerator;
        // int t_num = t.numerator;
        // int t_den = t.denominator;
        // num2 = (t_num * den2) + (num2 * t_den);
        // den2 *= t_den;
    }
    assert(num1 == num2);
    //assert_frac_equiv(num1, den1, num2, den2);
}

void assert_scaled_constant(Proof *proof, ExprID c) {
    vector<Expr> expr_table = proof->expr_table;
    Expr c_expr = expr_table[c];
    assert(c_expr.node == MUL);
    Expr c_arg = expr_table[c_expr.arg1];
    assert(c_arg.node == VAR);
    assert(c_arg.var == ONE);
    //assert(c_expr.denominator != 0);
}

void assert_nonneg_constant(Proof *proof, ExprID c) {
    vector<Expr> expr_table = proof->expr_table;
    assert_scaled_constant(proof, c);
    Expr c_expr = expr_table[c];
    assert(c_expr.numerator >= 0);
    // Expr c_expr = expr_table[c];
    // assert(c_expr.node == TERM);
    // assert(c_expr.var == ONE);
    // assert(c_expr.denominator != 0);
    // return same_sign(c_expr.numerator, c_expr.denominator);
}

/*
void assert_farkas(ExprID plus_id, ExprID minus_id, ExprID neg_id, ExprID factor, const vector<Expr>& expr_table) {
    // no need to check nodes for plus and minus
    // multiplication checks take care of that
    assert(nonneg_constant(factor, expr_table));
    Expr neg_expr = expr_table[neg_id];
    assert(neg_expr.node == NOT);
    Expr comp_expr = expr_table[neg_expr.arg1];
    assert(comp_expr.node == EQ || comp_expr.node == LEQ || comp_expr.node == LT);
    assert_mul(comp_expr.arg1, plus_id, factor, expr_table, false);
    // negative factor, whereas the first part is positive
    assert_mul(comp_expr.arg2, minus_id, factor, expr_table, true);
}
*/

// text of this function doesn't need to change
/*
void assert_farkas_conversion(ExprID sum_id, ExprID or_id, const vector<ExprID>& factors, const vector<Expr>& expr_table, const vector<vector<int> >& arg_lists) {
    Expr sum_expr = expr_table[sum_id];
    assert(sum_expr.node == ADD);
    Expr or_expr = expr_table[or_id];
    assert(or_expr.node == OR);
    vector<ExprID> sum_args = arg_lists[sum_expr.listarg];
    vector<ExprID> or_args = arg_lists[or_expr.listarg];
    int s = sum_args.size();
    int o = or_args.size();
    assert(s == o * 2);
    assert(factors.size() == o);
    for (int i = 0; i < o; i++) {
        assert_farkas(sum_args[2*i], sum_args[(2*i)+1], or_args[i], factors[i], expr_table);
    }
}
*/

// eliminates the need for the expression argument
// entries are still in pairs, but multiplied explicitly
void assert_farkas_sum(Proof *proof, ExprID sum_id, ExprID or_id) {
    vector<Expr> expr_table = proof->expr_table;
    vector<vector<ExprID> > arg_lists = proof->expr_list_table;
    // every sum entry is a product
    Expr sum_expr = expr_table[sum_id];
    assert(sum_expr.node == ADD);
    Expr or_expr = expr_table[or_id];
    assert(or_expr.node == OR);
    vector<ExprID> sum_args = arg_lists[sum_expr.listarg];
    vector<ExprID> or_args = arg_lists[or_expr.listarg];
    int s = sum_args.size();
    int o = or_args.size();
    assert(s == o * 2);
    for (int i = 0; i < o; i++) {
        Expr plus_expr = expr_table[sum_args[2*i]];
        assert(plus_expr.node == MUL);
        Expr minus_expr = expr_table[sum_args[(2*i)+1]];
        assert(minus_expr.node == MUL);
        Expr not_expr = expr_table[or_args[i]];
        assert(not_expr.node == NOT);
        Expr comp_expr = expr_table[not_expr.arg1];
        assert(comp_expr.node == EQ || comp_expr.node == LEQ || comp_expr.node == LT);
        assert(plus_expr.numerator >= 0);
        assert(plus_expr.numerator == -minus_expr.numerator);
        // assert_nonneg_constant(proof, plus_expr.arg1);
        // assert_term_negate(proof, sum_args[2*i], sum_args[(2*i)+1]);
        assert(plus_expr.arg1 == comp_expr.arg1);
        assert(minus_expr.arg1 == comp_expr.arg2);
    }
}

void assert_zero_correctness(Proof *proof, ExprID c, ExprID or_id) {
    vector<Expr> expr_table = proof->expr_table;
    vector<vector<ExprID> > arg_lists = proof->expr_list_table;
    Expr c_expr = expr_table[c];
    // this is fine because we know c_expr is MUL
    if (c_expr.numerator == 0) {
        // get the whole disjunction
        // check that at least one is <
        Expr or_expr = expr_table[or_id];
        assert(or_expr.node == OR);
        vector<ExprID> or_args = arg_lists[or_expr.listarg];
        int s = or_args.size();
        bool lt_found = false;
        for(int i = 0; i < s; i++) {
            // no need to check node types; covered by other helpers
            Expr neg_expr = expr_table[or_args[i]];
            Expr comp_expr = expr_table[neg_expr.arg1];
            if (comp_expr.node == LT) {
                lt_found = true;
            }
        }
        assert(lt_found);
    }
}

/*
void assert_sum_cong(ExprID res_id, ExprID original_id, ExprID eq_id, const vector<Expr>& expr_table, const vector<vector<int> >& arg_lists) {
    // both res and original are sums
    Expr res_sum = expr_table[res_id];
    assert(res_sum.node == ADD);
    vector<ExprID> res_args = arg_lists[res_sum.listarg];
    Expr original_sum = expr_table[original_id];
    assert(original_sum.node == ADD);
    vector<ExprID> original_args = arg_lists[original_sum.listarg];
    int s = res_args.size();
    assert(s == original_args.size());
    Expr eq_expr = expr_table[eq_id];
    assert(eq_expr.node == EQ);
    for (int i = 0; i < s; i++) {
        if (res_args[i] != original_args[i]) {
            assert(original_args[i] == eq_expr.arg1);
            assert(res_args[i] == eq_expr.arg2);
        }
    }
}
*/

void assert_sum_cong_vector(Proof *proof, ExprID res_id, ExprID original_id, vector<ExprID> not_eqs) {
    vector<Expr> expr_table = proof->expr_table;
    vector<vector<ExprID> > arg_lists = proof->expr_list_table;
    Expr res_sum = expr_table[res_id];
    assert(res_sum.node == ADD || res_sum.node == AND || res_sum.node == OR || res_sum.node == XOR);
    vector<ExprID> res_args = arg_lists[res_sum.listarg];
    Expr original_sum = expr_table[original_id];
    assert(original_sum.node == res_sum.node);
    vector<ExprID> original_args = arg_lists[original_sum.listarg];
    int s = res_args.size();
    assert(s == original_args.size());
    assert(s == not_eqs.size());
    for (int i = 0; i < s; i++) {
        Expr not_expr = expr_table[not_eqs[i]];
        assert(not_expr.node == NOT);
        Expr eq_expr = expr_table[not_expr.arg1];
        assert(eq_expr.node == EQ);
        if (res_args[i] != original_args[i]) {
            assert(original_args[i] == eq_expr.arg1);
            assert(res_args[i] == eq_expr.arg2);
        }
    }
}

void assert_binop_cong(Proof *proof, ExprID res_id, ExprID original_id, ExprID eq1_id, ExprID eq2_id) {
    vector<Expr> expr_table = proof->expr_table;
    Expr res_op = expr_table[res_id];
    assert(res_op.node == EQ || res_op.node == LEQ || res_op.node == GEQ || res_op.node == LT || res_op.node == GT || res_op.node == IMPLIES);
    Expr original_op = expr_table[original_id];
    assert(original_op.node == res_op.node);
    Expr eq1_expr = expr_table[eq1_id];
    Expr eq2_expr = expr_table[eq2_id];
    // thing to be replaced is on left
    assert(eq1_expr.node == EQ);
    assert(eq2_expr.node == EQ);
    if (res_op.arg1 != original_op.arg1) {
        assert(original_op.arg1 == eq1_expr.arg1);
        assert(res_op.arg1 == eq1_expr.arg2);
    }
    if (res_op.arg2 != original_op.arg2) {
        assert(original_op.arg2 == eq2_expr.arg1);
        assert(res_op.arg2 == eq2_expr.arg2);
    }
}

void assert_mul_cong(Proof *proof, ExprID res_id, ExprID original_id, ExprID eq_id) {
    vector<Expr> expr_table = proof->expr_table;
    Expr res_op = expr_table[res_id];
    assert(res_op.node == MUL);
    Expr original_op = expr_table[original_id];
    assert(original_op.node == MUL);
    assert(res_op.numerator == original_op.numerator);
    Expr eq_expr = expr_table[eq_id];
    // thing to be replaced is on left
    assert(eq_expr.node == EQ);
    if (res_op.arg1 != original_op.arg1) {
        assert(original_op.arg1 == eq_expr.arg1);
        assert(res_op.arg1 == eq_expr.arg2);
    }
}

/*
void assert_integer_sum(Proof *proof, ExprID sum_id) {
    vector<Expr> expr_table = proof->expr_table;
    vector<vector<ExprID> > arg_lists = proof->expr_list_table;
    Expr sum_expr = expr_table[sum_id];
    assert(sum_expr.node == ADD);
    vector<ExprID> sum_args = arg_lists[sum_expr.listarg];
    int s = sum_args.size();
    for (int i = 0; i < s; i++) {
        Expr term_expr = expr_table[sum_args[i]];
        assert(term_expr.node == TERM);
        assert(term_expr.denominator == 1);
    }
}
*/

// no need to restrict usage to integer variables
// adjusted the format for OR
void proof_check_total(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr or_expr = proof->expr_table[result_id];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);

    Expr leq_expr = proof->expr_table[or_args[0]];
    Expr lt_expr = proof->expr_table[or_args[1]];

    assert(leq_expr.node == LEQ);
    assert(lt_expr.node == LT);
    assert(leq_expr.arg1 == lt_expr.arg2);
    assert(leq_expr.arg2 == lt_expr.arg1);
}

void proof_check_trichotomy(Proof *proof, ProofStep step) {
    // redundant with total, but SMTInterpol includes it
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 3);

    Expr lt_expr = proof->expr_table[or_args[0]];
    Expr eq_expr = proof->expr_table[or_args[1]];
    Expr swap_expr = proof->expr_table[or_args[2]];

    assert(lt_expr.node == LT);
    assert(eq_expr.node == EQ);
    assert(swap_expr.node == LT);
    assert(lt_expr.arg1 == eq_expr.arg1);
    assert(lt_expr.arg1 == swap_expr.arg2);
    assert(lt_expr.arg2 == eq_expr.arg2);
    assert(lt_expr.arg2 == swap_expr.arg1);
}

/*
void proof_check_res_op_flip(Proof *proof, ProofStep step) {
    Expr eq_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(eq_expr.node == EQ);
    Expr comp1 = proof->expr_table[eq_expr.arg1];
    Expr comp2 = proof->expr_table[eq_expr.arg2];
    assert(comp1.arg1 == comp2.arg2);
    assert(comp1.arg2 == comp2.arg1);
    assert(comp1.node == opposite_comparison(comp2.node));
}
*/

void proof_check_singleton_add_eq(Proof *proof, ProofStep step) {
    // this version doesn't need an inverse; it inverts itself
    // addition goes on the left for now
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_expr = proof->expr_table[result_id];
    assert(result_expr.node == EQ);
    Expr add_expr = proof->expr_table[result_expr.arg1];
    assert(add_expr.node == ADD);
    vector<ExprID> add_args = proof->expr_list_table[add_expr.listarg];
    assert(add_args.size() == 1);
    assert(add_args[0] == result_expr.arg2);
}

void proof_check_mul_single(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    Expr result_expr = proof->expr_table[result_id];
    assert(result_expr.node == EQ);
    Expr mul_expr = proof->expr_table[result_expr.arg1];
    assert(mul_expr.node == MUL);
    assert(mul_expr.numerator == 1);
    assert(mul_expr.arg1 == result_expr.arg2);
}

/*
void proof_check_sum_reordering_eq(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == EQ);
    // original goes on the left, for consistency with other rules
    // there isn't really an original for reordering, in a way
    Expr reordered = proof->expr_table[result_expr.arg2];
    assert(reordered.node == ADD);
    vector<ExprID> reordered_args = proof->expr_list_table[reordered.listarg];
    Expr original = proof->expr_table[result_expr.arg1];
    assert(original.node == ADD);
    vector<ExprID> original_args = proof->expr_list_table[original.listarg];
    assert(reordered_args.size() == original_args.size());
    assert(list_poly(reordered_args) == list_poly(original_args));
}
*/

// assert_integer_sum useless without denominators
void proof_check_total_int(Proof *proof, ProofStep step) {
    Expr or_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(or_expr.node == OR);
    vector<ExprID> or_args = proof->expr_list_table[or_expr.listarg];
    assert(or_args.size() == 2);
    Expr low_expr = proof->expr_table[or_args[0]];
    assert(low_expr.node == LEQ);
    Expr high_expr = proof->expr_table[or_args[1]];
    assert(high_expr.node == LEQ);

    //assert_integer_sum(low_expr.arg1, proof->expr_table, proof->expr_list_table);

    // no need to do this over again
    assert(low_expr.arg1 == high_expr.arg2);

    // now check that we have two different integers
    // Expr low_sum = proof->expr_table[low_expr.arg2];
    // assert(low_sum.node == ADD);
    // vector<ExprID> low_sum_args = proof->expr_list_table[low_sum.listarg];
    // assert(low_sum_args.size() == 1);
    Expr low_const = proof->expr_table[low_expr.arg2];
    assert(low_const.node == MUL);

    // Expr high_sum = proof->expr_table[high_expr.arg1];
    // assert(high_sum.node == ADD);
    // vector<ExprID> high_sum_args = proof->expr_list_table[high_sum.listarg];
    // assert(high_sum_args.size() == 1);
    Expr high_const = proof->expr_table[high_expr.arg1];
    assert(high_const.node == MUL);

    Expr low_const_arg = proof->expr_table[low_const.arg1];
    assert(low_const_arg.node == VAR);
    assert(low_const_arg.var == ONE);
    Expr high_const_arg = proof->expr_table[high_const.arg1];
    assert(high_const_arg.node == VAR);
    assert(high_const_arg.var == ONE);
    // assert(high_const.denominator == 1);
    // assert(low_const.denominator == 1);
    assert(high_const.numerator == low_const.numerator + 1);
}

void proof_check_res_mul(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == EQ);
    // multiplication is on the left, product on right
    Expr mul_expr = proof->expr_table[result_expr.arg1];
    assert(mul_expr.node == MUL);
    assert_sum_scaling(proof, mul_expr.arg1, result_expr.arg2, mul_expr.numerator);
}

// both nested sums on left need to be flat themselves
// I can flatten the left-hand side after the fact
// consolidate or reorder after that, if desired
/*
void proof_check_res_add(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == EQ);
    Expr sum_expr = proof->expr_table[result_expr.arg1];
    assert(sum_expr.node == ADD);
    vector<ExprID> sum_args = proof->expr_list_table[sum_expr.listarg];
    assert(sum_args.size() == 2);
    assert_sum_add(sum_args[0], sum_args[1], result_expr.arg2, proof->expr_table, proof->expr_list_table);
}
*/

// adjusted to be more like the cryptographic version
void proof_check_consolidate_eq(Proof *proof, ProofStep step) {
    // version with equality conclusion and no arguments
    // original goes on left
    Expr eq_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(eq_expr.node == EQ);
    Expr left_expr = proof->expr_table[eq_expr.arg1];
    assert(left_expr.node == ADD);
    vector<ExprID> left_args = proof->expr_list_table[left_expr.listarg];
    Expr right_expr = proof->expr_table[eq_expr.arg2];
    assert(right_expr.node == ADD);
    vector<ExprID> right_args = proof->expr_list_table[right_expr.listarg];
    Expr no_var = proof->expr_table[step.expr_args[0]];
    vector<ExprID> no_var_args = proof->expr_list_table[no_var.listarg];
    Expr left_var = proof->expr_table[step.expr_args[1]];
    vector<ExprID> left_var_args = proof->expr_list_table[left_var.listarg];
    Expr right_var = proof->expr_table[step.expr_args[2]];
    vector<ExprID> right_var_args = proof->expr_list_table[right_var.listarg];
    assert(list_poly(no_var_args) * list_poly(left_var_args) == list_poly(left_args));
    assert(list_poly(no_var_args) * list_poly(right_var_args) == list_poly(right_args));
    assert(left_var_args.size() >= 1);
    Expr target_expr = proof->expr_table[left_var_args[0]];
    assert(target_expr.node == MUL);
    // coefficient not used for anything, only the var matters
    assert_consolidation(proof, step.expr_args[1], step.expr_args[2], target_expr.arg1);
}

// more RESOLUTE-like version
void proof_check_sum_flatten_eq(Proof *proof, ProofStep step) {
    Expr eq_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(eq_expr.node == EQ);
    Expr orig_expr = proof->expr_table[eq_expr.arg1];
    assert(orig_expr.node == ADD);
    vector<ExprID> orig_args = proof->expr_list_table[orig_expr.listarg];
    Expr flat_expr = proof->expr_table[eq_expr.arg2];
    assert(flat_expr.node == ADD);
    vector<ExprID> flat_args = proof->expr_list_table[flat_expr.listarg];
    Expr inner = proof->expr_table[step.expr_args[1]];
    vector<ExprID> inner_args = proof->expr_list_table[inner.listarg];
    Expr orig_no_inner = proof->expr_table[step.expr_args[0]];
    vector<ExprID> orig_no_inner_args = proof->expr_list_table[orig_no_inner.listarg];
    assert(inner_args.size() == 1);
    Expr nested = proof->expr_table[inner_args[0]];
    vector<ExprID> nested_args = proof->expr_list_table[nested.listarg];
    assert(orig_no_inner_args.size() + nested_args.size() == flat_args.size());
    assert(orig_no_inner_args.size() + inner_args.size() == orig_args.size());
    assert(list_poly(orig_no_inner_args) * list_poly(nested_args) == list_poly(flat_args));
    assert(list_poly(orig_no_inner_args) * list_poly(inner_args) == list_poly(orig_args));
}

void proof_check_farkas(Proof *proof, ProofStep step) {
    ExprID result_id = proof->clause_table[step.clause].result;
    ExprID eq_id = proof->clause_table[step.clause_args[0]].result;
    Expr eq_expr = proof->expr_table[eq_id];
    assert(eq_expr.node == EQ);
    // another spot where singleton sum may be unnecessary
    Expr sum_of_constant = proof->expr_table[eq_expr.arg2];
    assert(sum_of_constant.node == ADD);
    vector<ExprID> constant_args = proof->expr_list_table[sum_of_constant.listarg];
    assert(constant_args.size() == 1);
    //assert_scaled_constant(constant_args[0], proof->expr_table);
    assert_nonneg_constant(proof, constant_args[0]);
    // this covers node type checking for the big sum and disjunction
    assert_farkas_sum(proof, eq_expr.arg1, result_id);
    // at least one strict inequality if constant is zero
    assert_zero_correctness(proof, constant_args[0], result_id);
}

// allow N substitutions at once
// every individual equality needs to be negated
// all substitutions are still optional for this version
void proof_check_sum_cong(Proof *proof, ProofStep step) {
    // size of this is size of sum size plus 1
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() >= 1);
    Expr subst_expr = proof->expr_table[result_args[0]];
    assert(subst_expr.node == EQ);
    vector<ExprID> not_substs(result_args.begin() + 1, result_args.end());
    assert_sum_cong_vector(proof, subst_expr.arg2, subst_expr.arg1, not_substs);
}

// might not be needed, but nice to have
void proof_check_mul_comm(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == EQ);
    Expr mul1 = proof->expr_table[result_expr.arg1];
    assert(mul1.node == MUL);
    Expr mul2 = proof->expr_table[result_expr.arg2];
    assert(mul2.node == MUL);
    assert(mul1.arg1 == mul2.arg2);
    assert(mul1.arg2 == mul2.arg1);
}

// allow two different substitutions, one for each side
void proof_check_binop_cong(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() == 3);
    Expr subst_expr = proof->expr_table[result_args[0]];
    assert(subst_expr.node == EQ);
    Expr not_eq1_expr = proof->expr_table[result_args[1]];
    assert(not_eq1_expr.node == NOT);
    Expr not_eq2_expr = proof->expr_table[result_args[2]];
    assert(not_eq2_expr.node == NOT);
    assert_binop_cong(proof, subst_expr.arg2, subst_expr.arg1, not_eq1_expr.arg1, not_eq2_expr.arg1);
}

// this is distinct from binop_subst now
void proof_check_mul_cong(Proof *proof, ProofStep step) {
    Expr result_expr = proof->expr_table[proof->clause_table[step.clause].result];
    assert(result_expr.node == OR);
    vector<ExprID> result_args = proof->expr_list_table[result_expr.listarg];
    assert(result_args.size() == 2);
    Expr subst_expr = proof->expr_table[result_args[0]];
    assert(subst_expr.node == EQ);
    Expr not_eq_expr = proof->expr_table[result_args[1]];
    assert(not_eq_expr.node == NOT);
    assert_mul_cong(proof, subst_expr.arg2, subst_expr.arg1, not_eq_expr.arg1);
}
