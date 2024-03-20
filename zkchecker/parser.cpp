#include <stdio.h>
#include "timing.h"
#include "parser.h"

ZExpr read_expr(FILE *file) {
    ZExpr expr;
    int temp;
    fscanf(file, "%d", &temp);
    expr.node = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.type = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.height = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.arg1 = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.arg2 = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.listarg = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.var = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    expr.numerator = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    // Redundant field not yet removed from proof.
    // expr.denominator = Integer(32, temp, ALICE);

    return expr;
}

ZClause read_clause(FILE *file) {
    // backptr & is_assumption are obsolete but it's easier to just implement them.
    ZClause clause;
    Integer int_is_assumption;
    int temp;
    fscanf(file, "%d", &temp);
    clause.result = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    int_is_assumption = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);

    return clause;
}

ZProofStep read_step(FILE *file) {
    ZProofStep step;
    int temp;
    fscanf(file, "%d", &temp);
    step.rule = Integer(32, temp, ALICE);
    fscanf(file, "%d", &temp);
    step.clause = Integer(32, temp, ALICE);
    for (int i = 0; i < MAX_EXPR_ARGS; i++) {
        fscanf(file, "%d", &temp);
        step.expr_args[i] = Integer(32, temp, ALICE);
    }
    for (int i = 0; i < MAX_CLAUSE_ARGS; i++) {
        fscanf(file, "%d", &temp);
        step.clause_args[i] = Integer(32, temp, ALICE);
    }
    return step;
}

vector<Integer> zexpr_to_vector(ZExpr e) {
    vector<Integer> result{
        e.node,
        e.type,
        e.height,
        e.arg1,
        e.arg2,
        e.listarg,
        e.var,
        e.numerator,
    };
    return result;
}

vector<Integer> zclause_to_vector(ZClause c) {
    vector<Integer> result{
        c.result,
    };
    return result;
}

vector<Integer> zufentry_to_vector(ZUfEntry ue) {
    vector<Integer> result;
    result.push_back(ue.ret_ty);
    for (int i = 0; i < ue.arg_ty.size(); i++) {
        result.push_back(ue.arg_ty[i]);
    }
    return result;
}

ZProof load_proof(int party, const char *filename, bool *success,
        microbenchmark_t microbenchmark) {
    FILE *file = fopen(filename, "r");
    if (file == nullptr) {
        fprintf(stderr, "failed to open file\n");
        *success = false;
        exit(1);
    }

    int num_variables;
    int expr_table_len;
    int max_expr_list_len;
    int expr_list_table_len;
    int clause_table_len;
    int num_assumptions;
    int uf_table_len;
    vector<ZExpr> expr_table;
    vector<vector<Integer> > expr_list_table;
    vector<ZClause> clause_table;
    vector<ZUfEntry> uf_table;
    vector<ZType> expr_list_type_table;
    vector<Integer> expr_list_max_height_table;

    fscanf(file, "%d", &num_variables);
    fscanf(file, "%d", &expr_table_len);
    fscanf(file, "%d", &max_expr_list_len);
    fscanf(file, "%d", &expr_list_table_len);
    fscanf(file, "%d", &clause_table_len);
    fscanf(file, "%d", &num_assumptions);
    fscanf(file, "%d", &uf_table_len);

    // Set microbenchmark padding for expr lists before constructing the ZProof.
    if (microbenchmark.active) {
        if (microbenchmark.max_expr_list_len < max_expr_list_len) {
            printf("microbenchmark error: max expr list len too small for proof\n");
            exit(1);
        }
        max_expr_list_len = microbenchmark.max_expr_list_len;
    }

    // timer_end_section("load proof start");

    ZProof proof(party, max_expr_list_len);
    proof.num_variables = num_variables;
    proof.expr_table_len = expr_table_len;
    proof.max_expr_list_len = max_expr_list_len;
    proof.expr_list_table_len = expr_list_table_len;
    proof.clause_table_len = clause_table_len;
    proof.num_assumptions = num_assumptions;
    proof.uf_table_len = uf_table_len;

    // timer_end_section("construct proof");

    for (int i = 0; i < proof.expr_table_len; i++) {
        expr_table.push_back(read_expr(file));
    }

    // timer_end_section("expr table");

    expr_list_table = vector<vector<ZExprID> >();
    for (int i = 0; i < proof.expr_list_table_len; i++) {
        vector<ZExprID> list_entry = vector<ZExprID>();
        int len;
        int type;
        int32_t max_height;
        fscanf(file, "%d", &type);
        fscanf(file, "%d", &max_height);
        fscanf(file, "%d", &len);
        expr_list_type_table.push_back(Integer(32, type, ALICE));
        expr_list_max_height_table.push_back(Integer(32, max_height, ALICE));
        for (int j = 0; j < proof.max_expr_list_len; j++) {
            if (j < len) {
                int e;
                fscanf(file, "%d", &e);
                list_entry.push_back(Integer(32, e, ALICE));
            } else {
                list_entry.push_back(Integer(32, DEFAULT, ALICE));
            }
        }
        expr_list_table.push_back(list_entry);
    }
    // timer_end_section("expr list tables");

    for (int i = 0; i < proof.clause_table_len; i++) {
        clause_table.push_back(read_clause(file));
    }
    // timer_end_section("clause table");

    for (int i = 0; i < proof.clause_table_len - proof.num_assumptions; i++) {
        proof.step_table.push_back(read_step(file));
    }
    // timer_end_section("step table");

    for (int i = 0; i < uf_table_len; i++) {
        ZUfEntry uf_entry;
        uf_entry.arg_ty = vector<ZType>();
        int ret_ty;
        int len;
        fscanf(file, "%d", &ret_ty);
        uf_entry.ret_ty = Integer(32, ret_ty, ALICE);
        fscanf(file, "%d", &len);
        for (int j = 0; j < proof.max_expr_list_len; j++) {
            if (j < len) {
                int ty;
                fscanf(file, "%d", &ty);
                uf_entry.arg_ty.push_back(Integer(32, ty, ALICE));
            } else {
                // Padding
                uf_entry.arg_ty.push_back(Integer(32, TY_DEFAULT, ALICE));
            }
        }
        uf_table.push_back(uf_entry);
    }
    // timer_end_section("uf table");

    // Pad as necessary if in microbenchmark mode.
    if (microbenchmark.active) {
        // Fail if padded length is smaller than proof.
        if (microbenchmark.expr_table_len < proof.expr_table_len) {
            printf("microbenchmark error: expr table len too small for proof\n");
            exit(1);
        }
        if (microbenchmark.expr_list_table_len < proof.expr_list_table_len) {
            printf("microbenchmark error: expr list table len too small for proof\n");
            exit(1);
        }
        if (microbenchmark.clause_table_len < proof.clause_table_len) {
            printf("microbenchmark error: clause table len too small for proof\n");
            exit(1);
        }

        // Set padding lengths.
        int expr_table_len_pad = microbenchmark.expr_table_len - proof.expr_table_len;
        int expr_list_table_len_pad = microbenchmark.expr_list_table_len - proof.expr_list_table_len;
        int clause_table_len_pad = microbenchmark.clause_table_len - proof.clause_table_len;

        // Set proof parameters to new settings.
        proof.expr_table_len = microbenchmark.expr_table_len;
        proof.expr_list_table_len = microbenchmark.expr_list_table_len;
        proof.clause_table_len = microbenchmark.clause_table_len;

        // Construct padding objects.
        ZExpr pad_expr;
        pad_expr.node = Integer(32, NODE_TRUE, ALICE);
        pad_expr.type = Integer(32, TY_BOOL, ALICE);
        pad_expr.height = Integer(32, 0, ALICE);
        pad_expr.arg1 = Integer(32, DEFAULT, ALICE);
        pad_expr.arg2 = Integer(32, DEFAULT, ALICE);
        pad_expr.listarg = Integer(32, DEFAULT, ALICE);
        pad_expr.var = Integer(32, DEFAULT, ALICE);
        pad_expr.numerator = Integer(0, DEFAULT, ALICE);

        Integer default_int = Integer(32, DEFAULT, ALICE);

        ZClause pad_clause;
        pad_clause.result = default_int;

        vector<ZExprID> pad_expr_list;
        for (int i = 0; i < proof.max_expr_list_len; i++) {
            pad_expr_list.push_back(default_int);
        }

        // Carry out the padding.
        for (int i = 0; i < expr_table_len_pad; i++) {
            expr_table.push_back(pad_expr);
        }

        for (int i = 0; i < expr_list_table_len_pad; i++) {
            expr_list_table.push_back(pad_expr_list);
            expr_list_type_table.push_back(Integer(32, TY_DEFAULT, ALICE));
            expr_list_max_height_table.push_back(Integer(32, 0, ALICE));
        }

        for (int i = 0; i < clause_table_len_pad; i++) {
            clause_table.push_back(pad_clause);
        }
    }

    // Initialize RORAM
    vector<vector<Integer> > vector_expr_table;
    for (int i = 0; i < proof.expr_table_len; i++) {
        vector<Integer> entry = zexpr_to_vector(expr_table[i]);
        vector_expr_table.push_back(entry);
    }
    // timer_end_section("vector expr table");
    proof.expr_table2.init(vector_expr_table);
    // timer_end_section("expr table init");

    proof.expr_list_table2.init(expr_list_table);
    // timer_end_section("list expr table init");

    vector<vector<Integer> > vector_clause_table;
    for (int i = 0; i < proof.clause_table_len; i++) {
        vector<Integer> entry = zclause_to_vector(clause_table[i]);
        vector_clause_table.push_back(entry);
    }
    // timer_end_section("vector clause table");
    proof.clause_table2.init(vector_clause_table);
    // timer_end_section("clause table init");

    vector<vector<Integer> > vector_expr_list_type_table;
    for (int i = 0; i < proof.expr_list_table_len; i++) {
        vector<Integer> entry {expr_list_type_table[i]};
        vector_expr_list_type_table.push_back(entry);
    }
    // timer_end_section("vector eltt");
    proof.expr_list_type_table2.init(vector_expr_list_type_table);
    // timer_end_section("eltt init");

    vector<vector<Integer> > vector_expr_list_max_height_table;
    for (int i = 0; i < proof.expr_list_table_len; i++) {
        vector<Integer> entry {expr_list_max_height_table[i]};
        vector_expr_list_max_height_table.push_back(entry);
    }
    // timer_end_section("vector elmt");
    proof.expr_list_max_height_table2.init(vector_expr_list_max_height_table);
    // timer_end_section("elmt init");

    vector<vector<Integer> > vector_uf_table;
    for (int i = 0; i < uf_table_len; i++) {
        vector<Integer> entry = zufentry_to_vector(uf_table[i]);
        vector_uf_table.push_back(entry);
    }
    // timer_end_section("vector uf table");
    proof.uf_table2.init(vector_uf_table);
    // timer_end_section("uf table init");

    *success = true;
    fclose(file);
    // timer_end_section("load_proof cleanup");
    return proof;
}
