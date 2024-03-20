#include <stdio.h>
#include "parser.h"

using namespace std;

void print_expr(FILE *file, Expr *expr, Proof *proof);

void print_expr_list(FILE *file, vector<ExprID>& l, Proof *proof) {
    for (int i = 0; i < l.size(); i++) {
        ExprID eid = l[i];
        if (eid == DEFAULT) {
            break;
        }
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[eid], proof);
    }
}

void print_expr(FILE *file, Expr *expr, Proof *proof) {
    if (expr->node == VAR) {
        fprintf(file, "%d", expr->var);
    } else if (expr->node == APPLY) {
        fprintf(file, "(");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == NODE_TRUE) {
        fprintf(file, "true");
    } else if (expr->node == NODE_FALSE) {
        fprintf(file, "false");
    } else if (expr->node == XOR) {
        fprintf(file, "(xor");

        print_expr_list(file, proof->expr_list_table[expr->listarg], proof);

        fprintf(file, ")");
    } else if (expr->node == IMPLIES) {
        fprintf(file, "(=> ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == EQ) {
        fprintf(file, "(= ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == ITE) {
        ExprID a0 = proof->expr_list_table[expr->listarg][0];
        ExprID a1 = proof->expr_list_table[expr->listarg][1];
        ExprID a2 = proof->expr_list_table[expr->listarg][2];
        fprintf(file, "(ite ");
        print_expr(file, &proof->expr_table[a0], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[a1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[a2], proof);
        fprintf(file, ")");
    } else if (expr->node == AND) {
        fprintf(file, "(and");

        print_expr_list(file, proof->expr_list_table[expr->listarg], proof);

        fprintf(file, ")");
    } else if (expr->node == OR) {
        fprintf(file, "(or");

        print_expr_list(file, proof->expr_list_table[expr->listarg], proof);

        fprintf(file, ")");
    } else if (expr->node == NOT) {
        fprintf(file, "(not ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, ")");
    } else if (expr->node == NAPPLY) {
        fprintf(file, "(%d ", expr->var);

        print_expr_list(file, proof->expr_list_table[expr->listarg], proof);

        fprintf(file, ")");
    } else if (expr->node == TERM) {
        if (expr->var == ONE) {
            fprintf(file, "(%d/%d const)",
                    expr->numerator,
                    expr->denominator);
        } else {
            fprintf(file, "(%d/%d %d)",
                    expr->numerator,
                    expr->denominator,
                    expr->var);
        }
    } else if (expr->node == ADD) {
        fprintf(file, "(+");

        print_expr_list(file, proof->expr_list_table[expr->listarg], proof);

        fprintf(file, ")");
    } else if (expr->node == MUL) {
        fprintf(file, "(* ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == LEQ) {
        fprintf(file, "(<= ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == GEQ) {
        fprintf(file, "(>= ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == LT) {
        fprintf(file, "(< ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else if (expr->node == GT) {
        fprintf(file, "(> ");
        print_expr(file, &proof->expr_table[expr->arg1], proof);
        fprintf(file, " ");
        print_expr(file, &proof->expr_table[expr->arg2], proof);
        fprintf(file, ")");
    } else {
        fprintf(file, "?");
    }
}

void print_step_clause(FILE *file, int clause_idx, int step_idx, Proof *proof) {
    ProofStep step = proof->step_table[step_idx];
    Clause clause = proof->clause_table[clause_idx];
    fprintf(file, "%d clause_idx:%7d is_assm:%d\n",
            step.rule, clause_idx, (int)clause.is_assumption);
    fprintf(file, "result_idx:%7d step_idx:%7d backptr:",
            clause.result, step_idx);
    if (clause.backptr == CLAUSE_DEFAULT) {
        fprintf(file, "nil\n");
    } else {
        fprintf(file, "%7d\n", clause.backptr);
    }
    for (int i = 0; i < MAX_EXPR_ARGS; i++) {
        if (step.expr_args[i] == DEFAULT) {
            fprintf(file, "expr_arg   %d : nil\n", i);
        } else {
            fprintf(file, "expr_arg   %d : ", i);
            print_expr(file, &proof->expr_table[step.expr_args[i]], proof);
            fprintf(file, "\n");
        }
    }
    for (int i = 0; i < MAX_CLAUSE_ARGS; i++) {
        if (step.clause_args[i] == CLAUSE_DEFAULT) {
            fprintf(file, "clause_arg %d : nil\n", i);
        } else {
            fprintf(file, "clause_arg %d : %d\n", i, step.clause_args[i]);
        }
    }
    fprintf(file, "result : ");
    print_expr(file, &proof->expr_table[clause.result], proof);
    fprintf(file, "\n");
}

void print_premise_clause(FILE *file, int clause_idx, Proof *proof) {
    Clause clause = proof->clause_table[clause_idx];
    fprintf(file, "PREMISE clause_idx:%7d is_assm:%d\n",
            clause_idx, (int)clause.is_assumption);
    fprintf(file, "result_idx:%7d step_idx:    nil backptr:", clause.result);
    if (clause.backptr == CLAUSE_DEFAULT) {
        fprintf(file, "nil\n");
    } else {
        fprintf(file, "%7d\n", clause.backptr);
    }
    fprintf(file, "result : ");
    print_expr(file, &proof->expr_table[clause.result], proof);
    fprintf(file, "\n");
}

void print_proof(FILE *file, Proof *proof) {
    fprintf(file, "ZKSMT proof\n");
    fprintf(file, "num_variables       : %7d\n", proof->num_variables);
    fprintf(file, "expr_table_len      : %7d\n", proof->expr_table_len);
    fprintf(file, "max_expr_list_len   : %7d\n", proof->max_expr_list_len);
    fprintf(file, "expr_list_table_len : %7d\n", proof->expr_list_table_len);
    fprintf(file, "clause_table_len    : %7d\n", proof->clause_table_len);
    fprintf(file, "num_assumptions     : %7d\n", proof->num_assumptions);

    // Assemble mapping of clause -> step
    vector<int> step_of_clause;
    for (int i = 0; i < proof->clause_table_len; i++) {
        step_of_clause.push_back(-1);
    }
    for (int i = 0; i < proof->clause_table_len - proof->num_assumptions; i++) {
        step_of_clause[proof->step_table[i].clause] = i;
    }

    for (int i = 0; i < proof->clause_table_len; i++) {
        fprintf(file, "\n");
        if (i < proof->num_assumptions) {
            print_premise_clause(file, i, proof);
        } else {
            print_step_clause(file, i, step_of_clause[i], proof);
        }
    }
}

Expr read_expr(FILE *file) {
    Expr expr;
    fscanf(file, "%d", &expr.node);
    fscanf(file, "%d", &expr.type);
    fscanf(file, "%d", &expr.height);
    fscanf(file, "%d", &expr.arg1);
    fscanf(file, "%d", &expr.arg2);
    fscanf(file, "%d", &expr.listarg);
    fscanf(file, "%d", &expr.var);
    fscanf(file, "%d", &expr.numerator);
    fscanf(file, "%d", &expr.denominator);
    return expr;
}

Clause read_clause(FILE *file) {
    Clause clause;
    int int_is_assumption;
    fscanf(file, "%d", &clause.result);
    fscanf(file, "%d", &int_is_assumption);
    fscanf(file, "%d", &clause.backptr);
    clause.is_assumption = int_is_assumption==0 ? false : true;
    return clause;
}

ProofStep read_step(FILE *file) {
    ProofStep step;
    fscanf(file, "%d", &step.rule);
    fscanf(file, "%d", &step.clause);
    for (int i = 0; i < MAX_EXPR_ARGS; i++) {
        fscanf(file, "%d", &step.expr_args[i]);
    }
    for (int i = 0; i < MAX_CLAUSE_ARGS; i++) {
        fscanf(file, "%d", &step.clause_args[i]);
    }
    return step;
}

Proof load_proof(const char *filename, bool *success) {
    Proof proof;
    proof.expr_table = vector<Expr>();
    proof.expr_list_table = vector<vector<ExprID>>();
    proof.clause_table = vector<Clause>();

    FILE *file = fopen(filename, "r");
    if (file == nullptr) {
        fprintf(stderr, "failed to open file\n");
        *success = false;
        return proof;
    }

    int uf_table_len;
    fscanf(file, "%d", &proof.num_variables);
    fscanf(file, "%d", &proof.expr_table_len);
    fscanf(file, "%d", &proof.max_expr_list_len);
    fscanf(file, "%d", &proof.expr_list_table_len);
    fscanf(file, "%d", &proof.clause_table_len);
    fscanf(file, "%d", &proof.num_assumptions);
    fscanf(file, "%d", &uf_table_len);

    for (int i = 0; i < proof.expr_table_len; i++) {
        proof.expr_table.push_back(read_expr(file));
    }

    proof.expr_list_table = vector<vector<int> >();
    for (int i = 0; i < proof.expr_list_table_len; i++) {
        vector<int> list_entry = vector<int>();
        int len;
        Type type;
        int32_t max_height;
        fscanf(file, "%d", &type);
        fscanf(file, "%d", &max_height);
        fscanf(file, "%d", &len);
        proof.expr_list_type_table.push_back(type);
        proof.expr_list_max_height_table.push_back(max_height);
        for (int j = 0; j < len; j++) {
            int e;
            fscanf(file, "%d", &e);
            list_entry.push_back(e);
        }
        proof.expr_list_table.push_back(list_entry);
    }

    for (int i = 0; i < proof.clause_table_len; i++) {
        proof.clause_table.push_back(read_clause(file));
    }

    for (int i = 0; i < proof.clause_table_len - proof.num_assumptions; i++) {
        proof.step_table.push_back(read_step(file));
    }

    for (int i = 0; i < uf_table_len; i++) {
        UfEntry uf_entry;
        uf_entry.arg_ty = vector<Type>();
        int len;
        fscanf(file, "%d", &uf_entry.ret_ty);
        fscanf(file, "%d", &len);
        for (int j = 0; j < proof.max_expr_list_len; j++) {
            if (j < len) {
                Type ty;
                fscanf(file, "%d", &ty);
                uf_entry.arg_ty.push_back(ty);
            } else {
                // Padding
                uf_entry.arg_ty.push_back(TY_DEFAULT);
            }
        }
        proof.uf_table.push_back(uf_entry);
    }

    *success = true;
    fclose(file);
    return proof;
}
