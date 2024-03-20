#include <string>
#include <iostream>
#include <vector>
#include <cassert>
#include "typing.h"

using namespace std;

// Contains two versions of each checking function: a straightforward version using
// switch statements or ifs, and a version without those to be similar to the ZK
// version.
// Currently unused, but an alternate version of typing without a switch statement.
void check_expr_table_types_alt(Proof *proof) {
    for (int i = 0; i < proof->expr_table_len; i++) {
        Expr e = proof->expr_table[i];
        Type ty1, ty2, list_ty, arg_ty;
        UfEntry ufe;
        Expr not_expr;
        switch (e.node) {
            case VAR:
                break;
//                // TODO do we need to check things for vars directly?
//                // yes, because it could be used inconsistently otherwise
//                // can we use the UF table for vars?
//                ufe = proof->uf_table[e.var];
//                assert(e.type == ufe.ret_ty);
//                break;
            case EQ:
                assert(e.type == TY_BOOL);
                ty1 = proof->expr_table[e.arg1].type;
                ty2 = proof->expr_table[e.arg2].type;
                assert(ty1 == ty2);
                break;
            case AND:
                assert(e.type == TY_BOOL);
                list_ty = proof->expr_list_type_table[e.listarg];
                assert(list_ty == TY_BOOL);
                break;
            case OR:
                // identical to AND
                assert(e.type == TY_BOOL);
                list_ty = proof->expr_list_type_table[e.listarg];
                assert(list_ty == TY_BOOL);
                break;
            case NODE_TRUE:
                assert(e.type == TY_BOOL);
                break;
            case NODE_FALSE:
                // identical to NODE_TRUE
                assert(e.type == TY_BOOL);
                break;
            case XOR:
                // identical to AND
                assert(e.type == TY_BOOL);
                list_ty = proof->expr_list_type_table[e.listarg];
                assert(list_ty == TY_BOOL);
                break;
            case IMPLIES:
                // treating as binary for now
                assert(e.type == TY_BOOL);
                assert(proof->expr_table[e.arg1].type == TY_BOOL);
                assert(proof->expr_table[e.arg2].type == TY_BOOL);
                break;
            case ITE:
                printf("ite typing not supported yet\n");
                assert(false);
                break;
//                // identical to AND
//                // still takes a list argument
//                // TODO only the first arg needs to be TY_BOOL
//                // second and third just need to be equal
//                assert(e.type == TY_BOOL);
//                list_ty = proof->expr_list_type_table[e.listarg];
//                assert(list_ty == TY_BOOL);
//                break;
            case NOT:
                assert(e.type == TY_BOOL);
                not_expr = proof->expr_table[e.arg1];
                assert(not_expr.type == TY_BOOL);
                break;
            case NAPPLY:
                // Load UF table entry.
                ufe = proof->uf_table[e.var];
                // Check the annotation vs. the return type.
                assert(e.type == ufe.ret_ty);
                // Ensure the list_arg is an application list for the correct UF.
                arg_ty = proof->expr_list_type_table[e.listarg];
                // Confirm this is an arg list
                assert(arg_ty & TY_UF_BIT);
                // Confirm the def sort bit is not set
                assert((arg_ty & TY_DEF_SORT_BIT) == 0);
                // Confirm the arg list is for the correct UF
                assert(e.var == (arg_ty & (~ TY_UF_BIT)));
                break;
            case TERM:
                // TODO another problematic thing
                // we support fractions, which aren't integers
                // the same goes for all other LIA things that we have
                // perhaps we should change the name of TY_INT
                assert(e.type == TY_INT);
                break;
            case ADD:
                assert(e.type == TY_INT);
                list_ty = proof->expr_list_type_table[e.listarg];
                assert(list_ty == TY_INT);
                break;
            case MUL:
                assert(e.type == TY_INT);
                assert(proof->expr_table[e.arg1].type == TY_INT);
                break;
            case LEQ:
                assert(e.type == TY_BOOL);
                assert(proof->expr_table[e.arg1].type == TY_INT);
                assert(proof->expr_table[e.arg2].type == TY_INT);
                break;
            case GEQ:
                assert(e.type == TY_BOOL);
                assert(proof->expr_table[e.arg1].type == TY_INT);
                assert(proof->expr_table[e.arg2].type == TY_INT);
                break;
            case LT:
                assert(e.type == TY_BOOL);
                assert(proof->expr_table[e.arg1].type == TY_INT);
                assert(proof->expr_table[e.arg2].type == TY_INT);
                break;
            case GT:
                assert(e.type == TY_BOOL);
                assert(proof->expr_table[e.arg1].type == TY_INT);
                assert(proof->expr_table[e.arg2].type == TY_INT);
                break;
            case NODE_DEFAULT:
                assert (e.type == TY_DEFAULT);
                break;
            default:
                assert(false);
        }
    }
}

void check_expr_table_types(Proof *proof) {
    for (int i = 0; i < proof->expr_table_len; i++) {
        Expr e = proof->expr_table[i];
        Type ty1, ty2, list_ty, arg_ty;
        UfEntry ufe;
        Expr not_expr;

        // ITE not allowed with typing for now
        assert(e.node != ITE);

        ty1 = proof->expr_table[e.arg1].type;
        ty2 = proof->expr_table[e.arg2].type;
        list_ty = proof->expr_list_type_table[e.listarg];
        bool var_oob = e.var < 0 || e.var >= proof->uf_table.size();
        int ufe_idx = var_oob ? UF_DEFAULT : e.var;
        ufe = proof->uf_table[ufe_idx];

        bool ty_bool = e.type == TY_BOOL;
        bool ty_int = e.type == TY_INT;
        bool arg1_arg2_eq = ty1 == ty2;
        bool arg1_bool = ty1 == TY_BOOL;
        bool arg2_bool = ty2 == TY_BOOL;
        bool arg1_int = ty1 == TY_INT;
        bool arg2_int = ty2 == TY_INT;
        bool list_arg_bool = list_ty == TY_BOOL;
        bool list_arg_int = list_ty == TY_INT;

        bool uf_ret_ty_wf = (e.type == ufe.ret_ty);
        bool uf_arg_ty_wf =
            ((list_ty & TY_UF_BIT) &&
             ((list_ty & TY_DEF_SORT_BIT) == 0) &&
             (e.var == (list_ty & (~ TY_UF_BIT)))
             );

        assert (
                // VAR
                (e.node == VAR) ||
                // EQ
                (e.node == EQ && ty_bool && arg1_arg2_eq) ||
                // AND
                (e.node == AND && ty_bool && list_arg_bool) ||
                // OR
                (e.node == OR && ty_bool && list_arg_bool) ||
                // NODE_TRUE
                (e.node == NODE_TRUE && ty_bool) ||
                // NODE_FALSE
                (e.node == NODE_FALSE && ty_bool) ||
                // XOR
                (e.node == XOR && ty_bool && list_arg_bool) ||
                // IMPLIES
                (e.node == IMPLIES && ty_bool && arg1_bool && arg2_bool) ||
                // ITE TODO
                // NOT
                (e.node == NOT && ty_bool && arg1_bool) ||
                // NAPPLY
                (e.node == NAPPLY && uf_ret_ty_wf && uf_arg_ty_wf) ||
                // (e.node == NAPPLY && true) ||
                // TERM
                (e.node == TERM && ty_int) ||
                // ADD
                (e.node == ADD && ty_int && list_arg_int) ||
                // MUL
                (e.node == MUL && ty_int && arg1_int) ||
                // LEQ
                (e.node == LEQ && ty_bool && arg1_int && arg2_int) ||
                // GEQ
                (e.node == GEQ && ty_bool && arg1_int && arg2_int) ||
                // LT
                (e.node == LT && ty_bool && arg1_int && arg2_int) ||
                // GT
                (e.node == GT && ty_bool && arg1_int && arg2_int) ||
                // NODE_DEFAULT
                (e.node == NODE_DEFAULT && e.type == TY_DEFAULT)
                );
    }
}

void check_list_types_alt(Proof *proof) {
    for (int i = 0; i < proof->expr_list_table_len; i++) {
        Type t = proof->expr_list_type_table[i];
        vector<ExprID> ids = proof->expr_list_table[i];
        for (int j = 0; j < ids.size(); j++) {
            if (t & TY_UF_BIT) {
                assert((t & TY_DEF_SORT_BIT) == 0);

                UfEntry ufe = proof->uf_table[t & (~ TY_UF_BIT)];

                ExprID item_id = ids[j];
                Type arg_ty = ufe.arg_ty[j];
                if (item_id == DEFAULT) {
                    assert(arg_ty == TY_DEFAULT);
                } else {
                    Expr item = proof->expr_table[item_id];
                    assert(arg_ty == item.type);
                }

//                for (int j = 0; j < proof->max_expr_list_len; j++) {
//                    ExprID item_id = proof->expr_list_table[i][j];
//                    Type arg_ty = ufe.arg_ty[j];
//                    if (item_id == DEFAULT) {
//                        assert(arg_ty == DEFAULT);
//                    } else {
//                        Expr item = proof->expr_table[item_id];
//                        assert(arg_ty == item.type);
//                    }
//                }
            } else if (ids[j] != DEFAULT) {
                Expr e = proof->expr_table[ids[j]];
                assert(e.type == t);
            }
        }
    }
}

void check_list_types(Proof *proof) {
    for (int i = 0; i < proof->expr_list_table_len; i++) {
        Type t = proof->expr_list_type_table[i];
        vector<ExprID> ids = proof->expr_list_table[i];

        // Load the relevant uf table entry (or entry 0 if non-uf)
        unsigned int uf_idx = t & (~ TY_UF_BIT);
        bool uf_oob = uf_idx >= proof->uf_table.size();
        uf_idx = uf_oob ? UF_DEFAULT : uf_idx;
        UfEntry ufe = proof->uf_table[uf_idx];

        for (int j = 0; j < ids.size(); j++) {
            // UF part
            bool is_uf = (t & TY_UF_BIT) >> 31;
            bool not_sort = (t & TY_DEF_SORT_BIT) == 0;
            assert(!is_uf || not_sort);
            ExprID item_id = ids[j];
            Expr item = proof->expr_table[item_id];
            bool is_default = item_id == DEFAULT;
            Type arg_ty = ufe.arg_ty[j];
            assert(!is_uf || !is_default || arg_ty == TY_DEFAULT);
            assert(!is_uf || is_default || arg_ty == item.type);
            // non-UF part
            assert(is_uf || is_default || item.type == t);
        }
    }
}

// implication is binary for now
bool has_arg2(NodeID n) {
    return (n == EQ || n == IMPLIES || n == LEQ || n == GEQ || n == LT || n == GT);
}

bool has_arg1(NodeID n) {
    return n == NOT || n == MUL || has_arg2(n);
}

bool has_listarg(NodeID n) {
    return (n == AND || n == OR || n == XOR || n == ITE || n == NAPPLY || n == ADD);
}

// we don't need to force leaf heights to be 0
// we really just need to require strictly descending values for children
void check_expr_table_heights(Proof *proof) {
    for (int i = 0; i < proof->expr_table_len; i++) {
        // it's fine to use i like this because it's an expression ID
        if (i == DEFAULT) {
            continue;
        }
        Expr e = proof->expr_table[i];
        NodeID n = e.node;
        int32_t h = e.height;
        if (has_arg1(n)) {
            assert(0 <= e.arg1);
            assert(e.arg1 < proof->expr_table_len);
            Expr e1 = proof->expr_table[e.arg1];
            assert(e1.height < h);
        }
        if (has_arg2(n)) {
            assert(0 <= e.arg2);
            assert(e.arg2 < proof->expr_table_len);
            Expr e2 = proof->expr_table[e.arg2];
            assert(e2.height < h);
        }
        if (has_listarg(n)) {
            assert(0 <= e.listarg);
            assert(e.listarg < proof->expr_list_table_len);
            assert(proof->expr_list_max_height_table[e.listarg] < h);
        }
    }
}

void check_expr_table_heights_alt(Proof *proof) {
    for (int i = 0; i < proof->expr_table_len; i++) {
        bool is_default = i == DEFAULT;
        Expr e = proof->expr_table[i];
        NodeID n = e.node;
        int32_t h = e.height;
        Expr e1 = proof->expr_table[e.arg1];
        Expr e2 = proof->expr_table[e.arg2];
        int32_t list_h = proof->expr_list_max_height_table[e.listarg];
        
        assert(e1.height < h || !has_arg1(n));
        assert(e2.height < h || !has_arg2(n));
        assert(list_h < h || !has_listarg(n));
    }
}

void check_list_heights(Proof *proof) {
    for (int i = 0; i < proof->expr_list_table_len; i++) {
        int32_t h = proof->expr_list_max_height_table[i];
        vector<ExprID> ids = proof->expr_list_table[i];
        // real ZK version might need to be a little different
        for (int j = 0; j < ids.size(); j++) {
            assert(0 <= ids[j] || ids[j] == DEFAULT);
            assert(ids[j] < proof->expr_table_len || ids[j] == DEFAULT);
            Expr e = proof->expr_table[ids[j]];
            assert(e.height <= h || ids[j] == DEFAULT);
        }
    }
}
