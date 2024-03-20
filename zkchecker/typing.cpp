#include <string>
#include <iostream>
#include <vector>
#include "typing.h"

using namespace std;

// implication is binary for now
Bit has_arg2(ZNodeID n) {
    return (n.equal(ZEQ)
            | n.equal(ZIMPLIES)
            | n.equal(ZLEQ)
            | n.equal(ZGEQ)
            | n.equal(ZLT)
            | n.equal(ZGT)
            );
}

Bit has_arg1(ZNodeID n) {
    return n.equal(ZNOT) | n.equal(ZMUL) | has_arg2(n);
}

Bit has_listarg(ZNodeID n) {
    return (n.equal(ZAND)
            | n.equal(ZOR)
            | n.equal(ZXOR)
            | n.equal(ZITE)
            | n.equal(ZNAPPLY)
            | n.equal(ZADD)
            );
}
void check_list_types(ZProof *proof) {
    Integer zero = Integer(32, 0, PUBLIC);
    Integer ty_uf_bit = Integer(32, TY_UF_BIT, PUBLIC);
    //Integer ty_def_sort_bit = Integer(32, TY_DEF_SORT_BIT, PUBLIC);
    //Integer inv_ty_uf_bit = Integer(32, ~ TY_UF_BIT, PUBLIC);
    Integer uf_default = Integer(32, UF_DEFAULT, PUBLIC);
    Integer dft = Integer(32, DEFAULT, PUBLIC);
    //Integer ty_default = Integer(32, TY_DEFAULT, PUBLIC);

    Integer e_len = Integer(32, proof->expr_table_len, PUBLIC);

    for (int i = 0; i < proof->expr_list_table_len; i++) {
        Integer hidden_i = Integer(32, i, PUBLIC);
        ZType t = get_type_pvt(proof, hidden_i);
        vector<ZExprID> ids = get_expr_list_pvt(proof, hidden_i);
        Bit is_uf = !(((t & ty_uf_bit) >> 31) == zero);
        Integer uf_idx = ((t << 1) >> 1);
        uf_idx = uf_idx.select(!is_uf, uf_default);
        ZUfEntry ufe = get_ufentry_pvt(proof, uf_idx);
        Bit dft_flag(false, PUBLIC); 

        Integer h = get_max_height_pvt(proof, hidden_i);

        for (int j = 0; j < ids.size(); j++) {
            // UF part
            ZExprID item_id = ids[j]; 
            ZExpr item = get_expr_pvt(proof, item_id); // item.type should be Integer(32, TY_DEFAULT PUBLIC) if the item is defaut.
            ZType arg_ty = ufe.arg_ty[j]; // Integer(32, TY_DEFAULT, PUBLIC) if the type is default
            assert_bit ((!is_uf) | (item.type == arg_ty)); 
            // non-UF part
            Bit is_default = item_id == dft; 
            dft_flag = dft_flag | is_default; 
            assert_bit(is_uf | is_default | (item.type == t));
            // all DEFAULT entries must appear in the back
            assert_bit (!(dft_flag ^ is_default)); 

            assert_bit(zero <= ids[j] | is_default);
            assert_bit(ids[j] < e_len | is_default);
            assert_bit(item.height <= h | is_default);
        }
    }
}

void check_expr_table_types(ZProof *proof) {
    Integer zero = Integer(32, 0, PUBLIC);
    Integer uf_default = Integer(32, UF_DEFAULT, PUBLIC);
    Integer ty_bool_int = Integer(32, TY_BOOL, PUBLIC);
    Integer ty_int_int = Integer(32, TY_INT, PUBLIC);
    Integer ty_uf_bit = Integer(32, TY_UF_BIT, PUBLIC);
    Integer ty_def_sort_bit = Integer(32, TY_DEF_SORT_BIT, PUBLIC);
    Integer inv_ty_uf_bit = Integer(32, ~ TY_UF_BIT, PUBLIC);
    Integer ty_default = Integer(32, TY_DEFAULT, PUBLIC);
    Integer uf_table_size = Integer(32, proof->uf_table_len, PUBLIC);

    // List height checking
    // Integer zero = Integer(32, 0, PUBLIC);
    Integer e_len = Integer(32, proof->expr_table_len, PUBLIC);
    Integer l_len = Integer(32, proof->expr_list_table_len, PUBLIC);

    for (int i = 0; i < proof->expr_table_len; i++) {
        ZExpr e = get_expr_pvt(proof, Integer(32, i, PUBLIC));
        ZType ty1, ty2, list_ty, arg_ty;
        ZUfEntry ufe;
        ZExpr not_expr;

        // List height checking
        Bit is_default = ZNODE_DEFAULT.equal(e.node);
        ZNodeID n = e.node;
        Integer h = e.height;
        ZExpr e1 = get_expr_pvt(proof, e.arg1);
        ZExpr e2 = get_expr_pvt(proof, e.arg2);
        Integer list_h = get_max_height_pvt(proof, e.listarg);

        assert_bit((zero <= e.arg1 & e.arg1 < e_len) | !has_arg1(n) | is_default);
        assert_bit((zero <= e.arg2 & e.arg2 < e_len) | !has_arg2(n)| is_default);
        assert_bit((zero <= e.listarg & e.listarg < l_len) | !has_listarg(n)| is_default);

        assert_bit(e1.height < h | !has_arg1(n)| is_default);
        assert_bit(e2.height < h | !has_arg2(n)| is_default);
        assert_bit(list_h < h | !has_listarg(n)| is_default);
        // End list height checking

        // ITE not allowed with typing for now
        assert_bit(e.node != ZITE);

        ty1 = e1.type;
        ty2 = e2.type;
        list_ty = get_type_pvt(proof, e.listarg);
        Bit var_oob = (e.var < zero) |
            (e.var >= uf_table_size);
        Integer ufe_idx = e.var.select(var_oob, uf_default);
        ufe = get_ufentry_pvt(proof, ufe_idx);

        Bit ty_bool = e.type == ty_bool_int;
        Bit ty_int = e.type == ty_int_int;
        Bit arg1_arg2_eq = ty1 == ty2;
        Bit arg1_bool = ty1 == ty_bool_int;
        Bit arg2_bool = ty2 == ty_bool_int;
        Bit arg1_int = ty1 == ty_int_int;
        Bit arg2_int = ty2 == ty_int_int;
        Bit list_arg_bool = list_ty == ty_bool_int;
        Bit list_arg_int = list_ty == ty_int_int;

        Bit uf_ret_ty_wf = (e.type == ufe.ret_ty);
        Bit uf_arg_ty_wf =
            (((list_ty & ty_uf_bit) != zero) &
             ((list_ty & ty_def_sort_bit) == zero) &
             (e.var == (list_ty & (inv_ty_uf_bit)))
             );

        assert_bit(
                // VAR
                ((e.node == ZVAR)) |
                // EQ
                ((e.node == ZEQ) & ty_bool & arg1_arg2_eq) |
                // AND
                ((e.node == ZAND) & ty_bool & list_arg_bool) |
                // OR
                ((e.node == ZOR) & ty_bool & list_arg_bool) |
                // NODE_TRUE
                ((e.node == ZNODE_TRUE) & ty_bool) |
                // NODE_FALSE
                ((e.node == ZNODE_FALSE) & ty_bool) |
                // XOR
                ((e.node == ZXOR) & ty_bool & list_arg_bool) |
                // IMPLIES
                ((e.node == ZIMPLIES) & ty_bool & arg1_bool & arg2_bool) |
                // ITE TODO
                // NOT
                ((e.node == ZNOT) & ty_bool & arg1_bool) |
                // NAPPLY
                ((e.node == ZNAPPLY) & uf_ret_ty_wf & uf_arg_ty_wf) |
                // TERM
                ((e.node == ZTERM) & ty_int) |
                // ADD
                ((e.node == ZADD) & ty_int & list_arg_int) |
                // MUL
                ((e.node == ZMUL) & ty_int & arg1_int) |
                // LEQ
                ((e.node == ZLEQ) & ty_bool & arg1_int & arg2_int) |
                // GE)Q
                ((e.node == ZGEQ) & ty_bool & arg1_int & arg2_int) |
                // LT
                ((e.node == ZLT) & ty_bool & arg1_int & arg2_int) |
                // GT
                ((e.node == ZGT) & ty_bool & arg1_int & arg2_int) |
                // NODE_DEFAULT
                (is_default & (e.type == ty_default))
                );
    }
}
