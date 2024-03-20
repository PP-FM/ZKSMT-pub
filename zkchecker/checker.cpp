#include <stdio.h>

#include "timing.h"
#include "microbenchmark.h"
#include "table.h"
#include "parser.h"
#include "boolean_checker.h"
#include "equal_checker.h"
#include "lia_checker.h"
#include "typing.h"
#include "checker.h"

void check_interval(vector<Integer> s, int32_t start,  int32_t end){
    vector<Integer> tmp; 
    for (uint64_t i = start ; i < end; i ++) tmp.push_back(Integer(32, i, PUBLIC)); 
    assert_set_equal(s, tmp);
}

void check(ZProof *proof, microbenchmark_t microbenchmark) {
    uint64_t check_expr_time = 0;
    uint64_t check_expr_list_time = 0;
    if (!microbenchmark.active) {
        // Perform type checking and depth checking on expression and expression
        // list tables.
        if (verbose_printing) {
            printf("check expr table\n");
        }
        array_timer_start();
        current_rule = CHECK_EXPR;
        check_expr_table_types(proof);
        array_timer_stop(CHECK_EXPR);
        timer_end_section("check expr table");
        if (verbose_printing) {
            printf("check expr list table\n");
        }
        array_timer_start();
        current_rule = CHECK_EXPR_LIST;
        check_list_types(proof);
        array_timer_stop(CHECK_EXPR_LIST);
        timer_end_section("check list table");
    }
    current_rule = 1;

    // checkmarks[i]: step with true index i has been checked
    vector<Integer> record;

    Integer ty_bool_int = Integer(32, TY_BOOL, PUBLIC);

    // In microbenchmarking mode, repeat step 0 `repetitions` number of times
    int micro_repetitions = 0;

    for (int i = 0; i < proof->clause_table_len - proof->num_assumptions; i++) {
        array_timer_start();
        if (microbenchmark.active) {
            if (micro_repetitions >= microbenchmark.repetitions) {
                break;
            }
            micro_repetitions += 1;
            i = 0;
        }

        if (verbose_printing) {
            printf("step %d\n", i);
        }
        ZProofStep step = proof->step_table[i];
        current_rule = step.rule.reveal<int32_t>();
        ZClause clause = get_clause_pvt(proof, step.clause);
        record.push_back(step.clause);

        // Backpointer checks are obsolete and not implemented
        
        // Is-assumption checks are obsolete and not implemented

        // Clause Ordering Check
        for (int j = 0; j < MAX_CLAUSE_ARGS; j++) {
            Bit skip_check = step.clause_args[j].equal(Integer(32, CLAUSE_DEFAULT, PUBLIC));
            Bit check_ok = step.clause.geq(step.clause_args[j]);
            Bit check_overall = skip_check | check_ok;
            assert_bit(check_overall);
        }

        // Boolean Typing Check
        ZExpr res_expr = get_expr_pvt(proof, clause.result);
        assert_eq(res_expr.type, ty_bool_int);

        //printf("Rule %d, Iteration %d\n", step.rule.reveal<int32_t>(), i);
        // Subproof Check
        switch (step.rule.reveal<int32_t>()) {
//            // Equality Rules
//            case TRANS:
//                proof_check_trans(proof, step);
//                break;
//            case CONG:
//                proof_check_cong(proof, step);
//                break;
//            case REFL:
//                proof_check_refl(proof, step);
//                break;
//             // Boolean Rules
//             case AND_ELIM:
//                 proof_check_bool_and_elim(proof, step);
//                 break;
//             case AND_INTRO1:
//                 proof_check_bool_and_intro1(proof, step);
//                 break;
//             case AND_INTRO2:
//                 proof_check_bool_and_intro2(proof, step);
//                 break;
//             case RESOLUTION:
//                 proof_check_bool_resolution(proof, step);
//                 break;
//             case CONTRA:
//                 proof_check_contra(proof, step);
//                 break;
            // RESOLUTE Rules
            case RES_RESOLUTION:
                // same as regular resolution
                proof_check_bool_resolution(proof, step);
                break;
            case RES_FACTORING:
                proof_check_bool_factoring(proof, step);
                break;
            case RES_OR_NIL:
                proof_check_false_from_empty(proof, step);
                break;
            case RES_OR_SINGLE:
                proof_check_bool_or_single(proof, step);
                break;
            case RES_OR_SINGLE_REV:
                proof_check_bool_or_single_rev(proof, step);
                break;
            case RES_TRUE_POS:
                proof_check_bool_true_pos(proof, step);
                break;
            case RES_FALSE_NEG:
                proof_check_bool_false_neg(proof, step);
                break;
            case RES_NOT_POS:
                proof_check_bool_not_pos(proof, step);
                break;
            case RES_NOT_NEG:
                proof_check_bool_not_neg(proof, step);
                break;
            case RES_AND_POS:
                proof_check_bool_and_pos(proof, step);
                break;
            case RES_AND_NEG:
                proof_check_bool_and_neg(proof, step);
                break;
            case RES_OR_POS:
                proof_check_bool_or_pos(proof, step);
                break;
            case RES_OR_NEG:
                proof_check_bool_or_neg(proof, step);
                break;
            case RES_IMPL_POS1:
                proof_check_bool_impl_pos1(proof, step);
                break;
            case RES_IMPL_POS2:
                proof_check_bool_impl_pos2(proof, step);
                break;
            case RES_IMPL_NEG:
                proof_check_bool_impl_neg(proof, step);
                break;
            case RES_EQ_POS1:
                proof_check_bool_equiv_pos1(proof, step);
                break;
            case RES_EQ_POS2:
                proof_check_bool_equiv_pos2(proof, step);
                break;
            case RES_EQ_NEG1:
                proof_check_bool_equiv_neg1(proof, step);
                break;
            case RES_EQ_NEG2:
                proof_check_bool_equiv_neg2(proof, step);
                break;
            case RES_XOR_POS:
                proof_check_xor_pos_res(proof, step);
                break;
            case RES_XOR_NEG:
                proof_check_xor_neg_res(proof, step);
                break;
            case RES_XOR1_POS:
                proof_check_bool_xor1_pos_res(proof, step);
                break;
            case RES_XOR1_NEG:
                proof_check_bool_xor1_neg_res(proof, step);
                break;
//            // these ones don't take clause arguments
//            case RES_ITE1:
//                proof_check_bool_ite1_res(proof, step);
//                break;
//            case RES_ITE2:
//                proof_check_bool_ite2_res(proof, step);
//                break;
            case RES_REFL:
                proof_check_res_refl(proof, step);
                break;
            case RES_SYMM:
                proof_check_res_symm(proof, step);
                break;
            case RES_TRANS:
                proof_check_res_trans(proof, step);
                break;
            case RES_CONG:
                proof_check_res_cong(proof, step);
                break;
            case RES_NOT_CONG:
                proof_check_not_cong(proof, step);
                break;
//            // CNF Rules
//            case CNF_AND_POS:
//                // LFSC / RESOLUTE conventions are opposite
//                proof_check_bool_and_neg(proof, step);
//                break;
//            case CNF_OR_POS:
//                proof_check_bool_or_neg(proof, step);
//                break;
//            case CNF_AND_NEG:
//                proof_check_bool_and_pos(proof, step);
//                break;
//            case CNF_OR_NEG:
//                proof_check_bool_or_pos(proof, step);
//                break;
//            case CNF_IMPLIES_POS:
//                proof_check_bool_impl_neg(proof, step);
//                break;
//            case CNF_IMPLIES_NEG1:
//                proof_check_bool_impl_pos1(proof, step);
//                break;
//            case CNF_IMPLIES_NEG2:
//                proof_check_bool_impl_pos2(proof, step);
//                break;
//            case CNF_EQUIV_POS1:
//                // 1 and 2 are inverted as well
//                proof_check_bool_equiv_neg2(proof, step);
//                break;
//            case CNF_EQUIV_POS2:
//                proof_check_bool_equiv_neg1(proof, step);
//                break;
//            case CNF_EQUIV_NEG1:
//                // 1 and 2 same for this side
//                proof_check_bool_equiv_pos1(proof, step);
//                break;
//            case CNF_EQUIV_NEG2:
//                proof_check_bool_equiv_pos2(proof, step);
//                break;
            // TODO xor rules for CNF
            // ite rules
            // TODO these are not covered in the table
            // numbering might be off
            // these versions take clause arguments
//            case ITE_ELIM1:
//                proof_check_bool_ite_elim1(proof, step);
//                break;
//            case ITE_ELIM2:
//                proof_check_bool_ite_elim2(proof, step);
//                break;
//            case NOT_ITE_ELIM1:
//                proof_check_bool_not_ite_elim1(proof, step);
//                break;
//            case NOT_ITE_ELIM2:
//                proof_check_bool_not_ite_elim2(proof, step);
//                break;
//            // LIA Rules
//            case RES_POLY_ADD:
//                proof_check_res_add(proof, step);
//                break;
            case RES_POLY_MUL:
                proof_check_res_mul(proof, step);
                break;
            case RES_FARKAS:
                proof_check_farkas(proof, step);
                break;
            case RES_TRICHOTOMY:
                proof_check_trichotomy(proof, step);
                break;
            case RES_TOTAL:
                proof_check_total(proof, step);
                break;
//            case RES_OP_FLIP:
//                proof_check_res_op_flip(proof, step);
//                break;
            case RES_TOTAL_INT:
                proof_check_total_int(proof, step);
                break;
//            // additional LIA rules not covered by RESOLUTE
//            case LIA_SUM_REORDERING:
//                proof_check_sum_reordering_eq(proof, step);
//                break;
            case LIA_SUM_CONSOLIDATE:
                proof_check_consolidate_zk(proof, step);
                break;
            case LIA_SINGLETON_ADD:
                proof_check_singleton_add_eq(proof, step);
                break;
//            case LIA_SINGLETON_REMOVE:
//                proof_check_singleton_add_eq(proof, step);
//                break;
            case LIA_SUM_CONG:
                proof_check_sum_cong(proof, step);
                break;
            case LIA_SUM_FLATTEN:
                proof_check_sum_flatten_zk(proof, step);
                break;
            case LIA_BINOP_CONG:
                proof_check_binop_cong(proof, step);
                break;
            case LIA_MUL_CONG:
                proof_check_mul_cong(proof, step);
                break;
            case LIA_MUL_SINGLE:
                proof_check_mul_single(proof, step);
                break;
            default:
                // not a supported rule
                printf("failed at: %d\n", step.rule.reveal<int32_t>());
                assert(false);
        }
        array_timer_stop(current_rule);
    }

    if (microbenchmark.active) {
        // Don't do a full flush as not all tables are used.
        proof->expr_table2.check();
        proof->expr_list_table2.check();
        proof->clause_table2.check();
        check_zero_MAC(zero_block, 0);

        bool cheat = finalize_zk_bool<BoolIO<NetIO>>();
        if(cheat)error("cheat!\n");
        timer_end_section("main loop");
        timer_end_all();
        alt_timer_finish("roram checking");
        printf("total et  step  : %ld\n", proof->expr_table2.get_total_step());
        printf("total et  check : %ld\n", proof->expr_table2.get_total_check());
        printf("total elt step  : %ld\n", proof->expr_list_table2.get_total_step());
        printf("total elt check : %ld\n", proof->expr_list_table2.get_total_check());

        exit(1);
    }

    timer_end_section("rules");
    flush(proof);
    timer_end_section("check RORAM");

    // Final overall checks

    // The clause table and step table are permutations
    check_interval(record, proof->num_assumptions, proof->clause_table_len); 

    // The final conclusion is false
    ZClause final_clause = get_clause_pvt(proof, Integer(32, proof->clause_table_len-1, PUBLIC));
    ZExpr final_conclusion = get_expr_pvt(proof, final_clause.result);
    assert_eq(final_conclusion.node, Integer(32, NODE_FALSE, PUBLIC));

    check_zero_MAC(zero_block, 0);
    timer_end_section("permutation");

    // Print specific rule info
    if (!microbenchmark.active) {
        for (int i = 0; i < 1024; i++) {
            if (array_timer_get(i) == 0) {
                continue;
            }
            // array_timer_print(i);
            // printf("roram count : expr table      : %d : %d\n", i, proof->expr_table2.per_rule_count[i]);
            // printf("roram count : expr list table : %d : %d\n", i, proof->expr_list_table2.per_rule_count[i]);
            uint64_t rule_time = array_timer_get(i);
            rule_time += proof->expr_table2.get_nanos_per_rule(i);
            rule_time += proof->expr_list_table2.get_nanos_per_rule(i);
            rule_time += proof->clause_table2.get_nanos_per_rule(i);
            rule_time += proof->expr_list_type_table2.get_nanos_per_rule(i);
            rule_time += proof->expr_list_max_height_table2.get_nanos_per_rule(i);
            rule_time += proof->uf_table2.get_nanos_per_rule(i);
            printf("specific rule : %d : ", i);
            fprint_nanos(stdout, rule_time);
            printf("\n");
        }
    }
}

// Equivalent of the main function in plaintext, but without the -p option
void run_on_file(BoolIO<NetIO> **ios, int threads, int party, const char *filename,
        microbenchmark_t microbenchmark) {
	//setup_zk_bool<BoolIO<NetIO>>(ios, threads, party);

    bool success = false;
    ZProof proof = load_proof(party, filename, &success, microbenchmark);
    timer_end_section("load proof");
    if (!success) {
        printf("parsing failed\n");
        assert(false);
    }

    check(&proof, microbenchmark);
    if (!microbenchmark.active) {
        printf("check complete\n");
    }
}
