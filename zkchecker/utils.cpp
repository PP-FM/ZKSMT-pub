#include "table.h"
#include "polynomial.h"
#include "roram.h"
#include "utils.h"

// Force any batch checks to execute to ensure an operation in timing section A
// does not fill a batch check executed in timing section B, messing up timing.
void flush(ZProof* proof) {
    proof->expr_table2.check();
    proof->expr_list_table2.check();
    proof->clause_table2.check();
    proof->expr_list_type_table2.check();
    proof->expr_list_max_height_table2.check();
    check_zero_MAC(zero_block, 0);
}

ZExpr vector_to_zexpr(vector<Integer> v) {
    ZExpr e;
    e.node = v[0];
    e.type = v[1];
    e.height = v[2];
    e.arg1 = v[3];
    e.arg2 = v[4];
    e.listarg = v[5];
    e.var = v[6];
    e.numerator = v[7];
    return e;
}

ZClause vector_to_zclause(vector<Integer> v) {
    ZClause c;
    c.result = v[0];
    return c;
}

ZUfEntry vector_to_zufentry(vector<Integer> v) {
    ZUfEntry answer;
    answer.ret_ty = v[0];
    for (int i = 1; i < v.size(); i++) {
        answer.arg_ty.push_back(v[i]);
    }
    return answer;
}

// void get_polynomial(polynomial& p, vector<Integer>& v){
//     p = polynomial(v);
// }

// TODO: clarify most efficient way of doing DEFAULT indexing

ZExpr get_expr_pvt(ZProof* proof, Integer index) {
//    int idx = (index.reveal<int32_t>() << 1) >> 1;
//    return proof->expr_table[idx];

    Integer default_aware_idx = (index << 1) >> 1;
//     // TODO: determine best default idx method,
//     // don't generate public Integers every time,
//     // have constant for default index.
//     Integer default_aware_idx = index.select(
//             index == Integer(32, DEFAULT, PUBLIC), Integer(32, 0, PUBLIC));
     vector<Integer> v = proof->expr_table2.get(default_aware_idx);
     return vector_to_zexpr(v);
}

vector<ZExprID> get_expr_list_pvt(ZProof* proof, Integer index) {
//    int idx = (index.reveal<int32_t>() << 1) >> 1;
//    return proof->expr_list_table[idx];

    return proof->expr_list_table2.get(index);
}

ZClause get_clause_pvt(ZProof* proof, Integer index) {
//    int idx = index.reveal<int32_t>();
//    return proof->clause_table[idx];

    vector<Integer> v = proof->clause_table2.get(index);
    return vector_to_zclause(v);
}


ZExpr get_result_pvt(ZProof* proof, Integer clause_index) {
//    ZExprID expr_id = get_pvt(proof->clause_table, clause_index).result;
//    ZExpr expr = get_pvt(proof->expr_table, expr_id); 
//    return expr; 

    ZExprID expr_id = get_clause_pvt(proof, clause_index).result;
    return get_expr_pvt(proof, expr_id);
}

ZType get_type_pvt(ZProof* proof, Integer index) {
//    int idx = index.reveal<int32_t>();
//    return proof->expr_list_type_table[idx];

    vector<Integer> v = proof->expr_list_type_table2.get(index);
    return v[0];
}

Integer get_max_height_pvt(ZProof* proof, Integer index) {
//    int idx = index.reveal<int32_t>();
//    return proof->expr_list_max_height_table[idx];

    vector<Integer> v = proof->expr_list_max_height_table2.get(index);
    return v[0];
}

ZUfEntry get_ufentry_pvt(ZProof* proof, Integer index) {
//    int idx = index.reveal<int32_t>();
//    return proof->uf_table[idx];

    vector<Integer> v = proof->uf_table2.get(index);
    return vector_to_zufentry(v);
}

void assert_eq(Integer l, Integer r) {
    block lmac, rmac; 
    get_mac(lmac,  l,  l.size()); 
    get_mac(rmac,  r, r.size());  
    check_zero_MAC(lmac ^ rmac);
};

void assert_bit(Bit b, int end) {
    static Bit acc = Bit(true, PUBLIC);
    acc = acc & b;
    if (end) {
        assert(acc.reveal<bool>());
    }
}

void assert_neq(Integer l, Integer r) {
    assert_bit(!l.equal(r));
};

Integer real_size(vector<Integer> l) {
    // no polynomial checks involved, no separate table
    vector<Bit> not_dummy;
    for (int i = 0; i < l.size(); i++) {
        not_dummy.push_back(!l[i].bits[31]);
    }
    return (Integer(not_dummy).hamming_weight()).resize(32, false);
}

void assert_real_size(vector<Integer> l, int d) {
    assert_eq(real_size(l), Integer(32, d, PUBLIC));
}

//a private integer (e) is contained in the vector

void assert_contain(Integer e, vector<Integer>& l){
    vector<uint64_t> l_reveal; 
    for (int i = 0; i < l.size(); i++) l_reveal.push_back(l[i].reveal<uint64_t>(ALICE));
    polynomial p = polynomial(l_reveal);
    block res, mres, input, minput;
    get_mac(minput, e, e.size());
    input = (block)get_128uint_from_uint64(e.reveal<uint64_t>(PUBLIC));
    // cout << (input) << endl;
    p.Evaluate(res, mres, input);
    check_zero_MAC(mres);
};

void assert_empty(vector<Integer>& l){
    io->flush();
    block r0 = io->get_hash_block();
    block r1 = io->get_hash_block();
    // cout << r << endl;
    block res0, res1, mac0, mac1;
    polynomial p = get_polynomial(l);
    p.Evaluate(res0, mac0, r0);
    p.Evaluate(res1, mac1, r1);
    check_zero_MAC(mac0^mac1);
};

/*
checking sub is obtained by removing duplicate elements in sup
can be done by checking sub * gcd (sup, sup') == sup  
*/



void assert_subset(vector<Integer>& sub, vector<Integer>& sup, vector<Integer>& witness ){
    polynomial subp = get_polynomial(sub);
    polynomial supp = get_polynomial(sup);
    polynomial witnessp = get_polynomial(witness);
    vector<polynomial> a{subp};
    vector<polynomial> b{witnessp};
    supp.InnerProductEqual(a, b);
}

/*
void assert_subset(vector<Integer>& sub, vector<Integer>& sup){
    polynomial subp = get_polynomial(sub);
    polynomial supp = get_polynomial(sup);
    vector<uint64_t> subv; 
    vector<uint64_t> supv; 
    vector<uint64_t> diff(DEGREE, DEFAULT); 

    if (ostriple -> party == ALICE) {
        for (auto element: sub){
            uint64_t x = element.reveal<uint64_t>(ALICE);
            subv.push_back(x); 
        }
        for (auto element: sup){
            uint64_t x = element.reveal<uint64_t>(ALICE);
            supv.push_back(x); 
        }

        for (auto element : subv){
            auto it = std::find(supv.begin(),supv.end(),element);
            if (it != supv.end()) {
                supv.erase(it);
            }
        }

        for (int i = 0; i < supv.size(); i ++){
            diff[i] = supv[i];
        }       
    }

    // for (auto element : diff) cout << (element) << endl;

    vector<Integer> witness; 
    for (int i = 0; i < diff.size(); i ++){
        witness.push_back(Integer(32, diff[i], ALICE));
    } 
    polynomial witnessp = get_polynomial(witness);
    vector<polynomial> a{subp};
    vector<polynomial> b{witnessp};
    supp.InnerProductEqual(a, b);
}
*/


/*
using claim 3.1 of : https://eprint.iacr.org/2020/315.pdf, assuming sub and sup are both sorted; 
*/
void assert_f_submultiset_t(vector<Integer>& f, vector<Integer>& t){
    io->flush();
    block gamma = io->get_hash_block();
    block beta = io->get_hash_block();
   
   // evaluate at  F 
    vector<block> f_product; 
    vector<block> f_mproduct;

    for (int i = 0; i < f.size(); i++){
        block tmp; 
        block xx, mx; 
        get_mac(tmp, f[i], f[i].size());
        xx = (block)get_128uint_from_uint64(f[i].reveal<uint64_t>(ALICE));
       //  cout << "=======5 =======\n";
        check_MAC_valid(xx, tmp);
        if (ostriple -> party == ALICE){
            xx = gamma ^ xx; 
            mx = tmp;
        }
        if (ostriple -> party == BOB){
            gfmul(ostriple->delta, gamma, &mx);
            mx  = tmp^mx;
        }
        f_product.push_back(xx);
        f_mproduct.push_back(mx);
       //  cout << "=======4 =======\n";

        check_MAC_valid(xx, mx);  
    }

    for (int i = 0; i < t.size() -1; i++){
        block t0, t1, mt0, mt1; 
        get_mac(mt0, t[i], t[i].size());
        get_mac(mt1, t[i + 1], t[i+1].size());
        t0 = (block)get_128uint_from_uint64(t[i].reveal<uint64_t>(ALICE));
        t1 = (block)get_128uint_from_uint64(t[i+1].reveal<uint64_t>(ALICE));
       //  cout << "======= 6 =======\n";
  
        check_MAC_valid(t0, mt0);
        check_MAC_valid(t1, mt1);

        block xx, mx;  
        gfmul(beta, t1 , &xx);
        gfmul(beta, mt1 , &mx);
        //  cout << "=======8 =======\n";
        check_MAC_valid(xx, mx);
        mx = mx ^ mt0;
        xx = xx ^ t0;  
        block yy; 
        gfmul(gamma, one_block^beta, &yy);
        if (ostriple -> party == ALICE){
            xx = yy ^ xx; 
        }
        if (ostriple -> party == BOB){
            block tmp; 
            gfmul(ostriple->delta, yy, &tmp);
            mx = tmp ^ mx; 
        }
        f_product.push_back(xx);
        f_mproduct.push_back(mx);
       //  cout << "======= 3 =======\n";

        check_MAC_valid(xx, mx);
     
    }

    vector<uint64_t> _s;
    vector<block> s;
    vector<block> ms;
    for(int i = 0; i < f.size(); i ++) _s.push_back((f[i].reveal<uint64_t>(ALICE)));
    for(int i = 0; i < t.size(); i ++) _s.push_back((t[i].reveal<uint64_t>(ALICE)));
    sort(_s.begin(), _s.end());
    for (int i = 0; i < _s.size(); i++){
        //cout << (_s[i]) << endl; 

        block m,d; 
        fill_data_and_mac(d, m);
        block xx, mx; 
        xx = (block)get_128uint_from_uint64(_s[i]);
        if (ostriple->party == ALICE) {
            block diff_root;
            diff_root= d^(xx);
            ostriple->io ->send_data(&diff_root, sizeof(block));
            mx = (m);
        }
        if (ostriple->party == BOB){
            block tmp;
            ostriple->io ->recv_data(&tmp, sizeof(block));
            gfmul(ostriple->delta, tmp, &tmp);
            xx = (d);
            mx = (m ^tmp);
        }
        s.push_back(xx);
        ms.push_back(mx);
    //  cout << "======= 2 =======\n";

        check_MAC_valid(xx, mx);
    }

    

    vector<block> g_product; 
    vector<block> g_mproduct;


    for (int i = 0; i < s.size()-1; i ++) {
        block t0, t1, mt0, mt1; 
        t0 = s[i];
        t1 = s[i+1];
        mt0 = ms[i]; 
        mt1 = ms[i+1];
        
        block xx, mx;  
        gfmul(beta, t1 , &xx);
        gfmul(beta, mt1 , &mx);
        mx = mx ^ mt0;
        xx = xx ^ t0;  
        
        block yy; 
        gfmul(gamma, one_block^beta, &yy);

        if (ostriple -> party == ALICE){
            xx = yy ^ xx; 
            g_product.push_back(xx);
            g_mproduct.push_back(mx);
        }
        if (ostriple -> party == BOB){
            block tmp; 
            gfmul(ostriple->delta, yy, &tmp);
            mx = tmp ^ mx; 
            g_product.push_back(xx);
            g_mproduct.push_back(mx);
        }
       //  cout << "=======1 =======\n";
        check_MAC_valid(xx, mx);  
     
    }
    block lres, mlres, rres, mrres; 
    lres = f_product[0];
    mlres = f_mproduct[0];
    for (int  i = 1; i < f_product.size(); i ++){
        ostriple->compute_mul(lres, mlres, lres, mlres, f_product[i], f_mproduct[i]);
    }  
 
    block overhead = one_block; 
    for (int i = 0; i < f.size(); i ++) gfmul(overhead, one_block^beta, &overhead);
    gfmul(overhead, lres, &lres);
    gfmul(overhead, mlres, &mlres);
    check_MAC_valid(lres, mlres);    

    rres = g_product[0];
    mrres = g_mproduct[0];
    for (int  i = 1; i < g_product.size(); i ++){
        ostriple->compute_mul(rres, mrres, rres, mrres, g_product[i], g_mproduct[i]);
    }
    check_MAC_valid(rres, mrres);    
    check_zero_MAC(mrres ^ mlres);
};





void assert_union_subset(vector<Integer>& sub0, vector<Integer>& sub1, vector<Integer>& sup){
    polynomial sup_poly = get_polynomial(sup);
    polynomial sub0_poly = get_polynomial(sub0);
    polynomial sub1_poly = get_polynomial(sub1);
    sup_poly.ProductEqual(sub0_poly, sub1_poly);
};




void assert_set_equal(vector<Integer>& s0, vector<Integer>& s1) {
    polynomial p0 = get_polynomial(s0);
    polynomial p1 = get_polynomial(s1); 
    p0.Equal(p1);
}

void assert_remove_duplicate(vector<Integer>& f, vector<Integer>& t){
    vector<uint64_t> _f_sorted;
    for (int i = 0; i < f.size(); i++) _f_sorted.push_back(f[i].reveal<uint64_t>(ALICE));
     _f_sorted.push_back(DEFAULT);

    vector<uint64_t> _t_sorted;
    for (int i = 0; i < t.size(); i++) _t_sorted.push_back(t[i].reveal<uint64_t>(ALICE));
    _t_sorted.push_back(DEFAULT);
    
    sort(_f_sorted.begin(), _f_sorted.end());
    sort(_t_sorted.begin(), _t_sorted.end());  

    vector<Integer> f_sorted;
    vector<Integer> t_sorted;
  
    for (int i = 0; i < _t_sorted.size(); i++)  t_sorted.push_back(Integer(32, _t_sorted[i], ALICE));
    for (int i = 0; i < _f_sorted.size(); i++)  f_sorted.push_back(Integer(32, _f_sorted[i], ALICE));
  
    assert_set_equal(f, f_sorted);
    assert_set_equal(t, t_sorted);

    // for (int i = 0; i < _t_sorted.size(); i++) cout << _t_sorted[i] << " ";
    // cout << endl; 
    // for (int i = 0; i < _f_sorted.size(); i++) cout << _f_sorted[i] << " ";
    // cout << endl;
    assert_f_submultiset_t(t_sorted, f_sorted);
    assert_f_submultiset_t(f_sorted, t_sorted);
   
}

/* only use for resolution: check if sub \subset sup + {literal}
*/
/*
void assert_resolution(vector<Integer>& sub, vector<Integer>& sup, Integer literal){
    vector<Integer> tmp{literal};    
    for (auto e: sup) tmp.push_back(e); 
    // cout << "====\n";
    assert_subset(sub, tmp);
};
*/

void assert_resolution(vector<Integer>& sub, vector<Integer>& sup, vector<Integer>& witness, Integer literal){
    vector<Integer> tmp{literal};    
    for (auto e: sup) tmp.push_back(e); 
    // cout << "====\n";
    assert_subset(sub, tmp, witness);
};


// assert two vectors are identical (order-sensitive)
// this works just fine for crypto version
// fakes need to be the same, but it would leak info if they aren't
// could we just check pointer equality for the vectors themselves?
// void assert_all_identical(vector<ZExprID>& l1, vector<ZExprID>& l2) {
//     // int s = l1.size();
//     // assert(s == l2.size());
//     // for (int i = 0; i < s; i++) {
//     //     assert_eq(l1[i], l2[i]);
//     // }
// }

// // assert neg_expr_id is negation of expr_id
// void assert_neg(ZExprID expr_id, ZExprID neg_expr_id, const vector<ZExpr>& expr_table) {
//     ZExpr neg_expr = get_pvt<ZExpr>(expr_table, neg_expr_id);
//     assert_eq(neg_expr.node, Integer(32, NOT, PUBLIC));
//     assert_eq(expr_id, neg_expr.arg1);
// }
// 
// // this is what's called "mapnot" in the paper
// // this one needs to take fakes into account
// // sz is the logical size of both vectors, which must be the same
// 
// void assert_all_negated(vector<ZExprID>& l1, vector<ZExprID>& l2, Integer sz, const vector<ZExpr>& expr_table) {
//     Integer not_int = Integer(32, NOT, PUBLIC);
//     vector<Integer> tmp; 
//     assert (l1.size() == l2.size());
//     for (int i = 0; i < l1.size(); i++) {
//         ZExpr not_expr = get_pvt<ZExpr>(expr_table, l2[i]);
//         assert_eq(not_expr.node, not_int); 
//         tmp.push_back(not_expr.arg1);
//     }
//     assert_set_equal(l1, tmp);
// 
// }





// void block2GF(GF2E& res, const block a ){
//     GF2X raw;
//     //  cout <<(a) << endl;
//     auto low = _mm_extract_epi64(a, 0);
//     auto high = _mm_extract_epi64(a, 1);
//     // cout << low << endl;
//     //cout << high << endl;

//     raw.SetMaxLength(128);
//     for(int i = 0; i < 64; i++){
//         SetCoeff(raw, long(i), (1 &(low >> (i))));
//         SetCoeff(raw, long(i+64), (1 &(high >> (i))));
//     }
//     res._GF2E__rep = raw;
// }




void padding(vector<uint64_t>& input){
    for (int i = input.size() ; i < DEGREE; i ++){
        input.push_back(0UL);
    }
}

/*
 * conversion from block to Galois field element of size 128
 * */

