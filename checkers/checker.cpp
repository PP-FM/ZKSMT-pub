#include <cassert>
#include <string.h>
#include "table.h"
#include "parser.h"
#include "boolean_checker.h"
#include "cnf_checker.h"
#include "equal_checker.h"
#include "lia_checker.h"
#include "typing.h"
#include "parser.h"

using namespace std;

void check(Proof *proof) {
    // Perform type checking and depth checking on expression and expression
    // list tables.
    check_expr_table_types(proof);
    check_list_types(proof);
    check_expr_table_heights(proof);
    check_list_heights(proof);

    // checkmarks[i]: step with true index i has been checked
    vector<bool> checkmarks;
    for (int i = 0; i < proof->clause_table_len; i++) {
        checkmarks.push_back(false);
    }

    // Assumptions are already checked
    for (int i = 0; i < proof->num_assumptions; i++) {
        checkmarks[i] = true;
    }

    // Per-step checking
    for (int i = 0; i < proof->clause_table_len-proof->num_assumptions; i++) {
        ProofStep step = proof->step_table[i];
        Clause clause = proof->clause_table[step.clause];

        // Backpointer Check
        // WEAKEN_SCOPE and SCOPE_DISCHARGE backpointer checks are part of
        // their subproof checker, so they automatically pass this phase.
        if (step.rule != WEAKEN_SCOPE && step.rule != SCOPE_DISCHARGE) {
            for (int j = 0; j < MAX_CLAUSE_ARGS; j++) {
                if (step.clause_args[j] == CLAUSE_DEFAULT) {
                    continue;
                }
                Clause arg_clause = proof->clause_table[step.clause_args[j]];
                if(arg_clause.is_assumption) {
                    assert(clause.backptr == step.clause_args[j]);
                } else {
                    assert(clause.backptr == arg_clause.backptr);
                }
            }
        }
        // Small extra well-formedness check: clause's is_assumption flag
        // and rule id match
        assert(!clause.is_assumption ||
               clause.is_assumption && step.rule == SCOPE_ASSUME);

        // Clause Ordering Check
        for (int j = 0; j < MAX_CLAUSE_ARGS; j++) {
            if (step.clause_args[j] == CLAUSE_DEFAULT) {
                continue;
            }
            assert(step.clause_args[j] < step.clause);
        }

        // Boolean Typing Check
        Expr res_expr = proof->expr_table[clause.result];
        assert(res_expr.type == TY_BOOL);

        // Subproof Check
        // call the subproof checker based on rule id
        // possibly replace assertions with rules themselves
        // other rules are set up to return void
        // with assertion failures if something is invalid
        switch (step.rule) {
            // Equality Rules
            case TRANS:
                proof_check_trans(proof, step);
                break;
            case CONG:
                proof_check_cong(proof, step);
                break;
            case REFL:
                proof_check_refl(proof, step);
                break;
            // Boolean Rules
            case AND_ELIM:
                proof_check_bool_and_elim(proof, step);
                break;
            case AND_INTRO1:
                proof_check_bool_and_intro1(proof, step);
                break;
            case AND_INTRO2:
                proof_check_bool_and_intro2(proof, step);
                break;
            case RESOLUTION:
                proof_check_bool_resolution(proof, step);
                break;
            case CONTRA:
                proof_check_contra(proof, step);
                break;
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
                proof_check_impl_pos_res1(proof, step);
                break;
            case RES_IMPL_POS2:
                proof_check_impl_pos_res2(proof, step);
                break;
            case RES_IMPL_NEG:
                proof_check_impl_neg_res(proof, step);
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
            // these ones don't take clause arguments
            case RES_ITE1:
                proof_check_bool_ite1_res(proof, step);
                break;
            case RES_ITE2:
                proof_check_bool_ite2_res(proof, step);
                break;
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
            // CNF Rules
            case CNF_AND_POS:
                // LFSC / RESOLUTE conventions are opposite
                proof_check_bool_and_neg(proof, step);
                break;
            case CNF_OR_POS:
                proof_check_bool_or_neg(proof, step);
                break;
            case CNF_AND_NEG:
                proof_check_bool_and_pos(proof, step);
                break;
            case CNF_OR_NEG:
                proof_check_bool_or_pos(proof, step);
                break;
            case CNF_IMPLIES_POS:
                proof_check_bool_impl_neg(proof, step);
                break;
            case CNF_IMPLIES_NEG1:
                proof_check_bool_impl_pos1(proof, step);
                break;
            case CNF_IMPLIES_NEG2:
                proof_check_bool_impl_pos2(proof, step);
                break;
            case CNF_EQUIV_POS1:
                // 1 and 2 are inverted as well
                proof_check_bool_equiv_neg2(proof, step);
                break;
            case CNF_EQUIV_POS2:
                proof_check_bool_equiv_neg1(proof, step);
                break;
            case CNF_EQUIV_NEG1:
                // 1 and 2 same for this side
                proof_check_bool_equiv_pos1(proof, step);
                break;
            case CNF_EQUIV_NEG2:
                proof_check_bool_equiv_pos2(proof, step);
                break;
            // TODO xor rules for CNF
            // ite rules
            // TODO these are not covered in the table
            // numbering might be off
            // these versions take clause arguments
            case ITE_ELIM1:
                proof_check_bool_ite_elim1(proof, step);
                break;
            case ITE_ELIM2:
                proof_check_bool_ite_elim2(proof, step);
                break;
            case NOT_ITE_ELIM1:
                proof_check_bool_not_ite_elim1(proof, step);
                break;
            case NOT_ITE_ELIM2:
                proof_check_bool_not_ite_elim2(proof, step);
                break;
            // LIA Rules
            // case RES_POLY_ADD:
            //     proof_check_res_add(proof, step);
            //     break;
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
            // case RES_OP_FLIP:
            //     proof_check_res_op_flip(proof, step);
            //     break;
            case RES_TOTAL_INT:
                proof_check_total_int(proof, step);
                break;
            // additional LIA rules not covered by RESOLUTE
            // case LIA_SUM_REORDERING:
            //     proof_check_sum_reordering_eq(proof, step);
            //     break;
            case LIA_SUM_CONSOLIDATE:
                proof_check_consolidate_eq(proof, step);
                break;
            case LIA_SINGLETON_ADD:
                proof_check_singleton_add_eq(proof, step);
                break;
            case LIA_SINGLETON_REMOVE:
                proof_check_singleton_add_eq(proof, step);
                break;
            case LIA_SUM_CONG:
                proof_check_sum_cong(proof, step);
                break;
            case LIA_SUM_FLATTEN:
                proof_check_sum_flatten_eq(proof, step);
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
                printf("rule %d not supported\n", step.rule);
                assert(false);
        }

        // Per-step check successful, mark off checkmark
        checkmarks[step.clause] = true;
    }

    // Final overall checks

    // Every individual step is correct
    for (int i = 0; i < proof->clause_table_len; i++) {
        assert(checkmarks[i]);
    }

    // The final conclusion is false
    Clause final_clause = proof->clause_table[proof->clause_table_len - 1];
    Expr final_conclusion = proof->expr_table[final_clause.result];
    assert(final_conclusion.node == NODE_FALSE);

    // normally we would check some general "failure" flag, but that was
    // implemented by assertions here.
}

int main(int argc, char **argv) {
    if (argc == 2) {
        bool success = false;
        Proof proof = load_proof(argv[1], &success);
        if (!success) {
            printf("failed to load proof\n");
        } else {
            check(&proof);
            printf("check finished\n");
        }
    } else if (argc == 3) {
        if (strcmp(argv[1], "-p") != 0) {
            printf("usage: ./checker [-p] <filename>\n");
        } else {
            bool success = false;
            Proof proof = load_proof(argv[2], &success);
            if (!success) {
                printf("failed to load proof\n");
            } else {
                print_proof(stdout, &proof);
            }
        }
    } else {
        printf("usage: ./checker [-p] <filename>\n");
    }

    return 0;
}
