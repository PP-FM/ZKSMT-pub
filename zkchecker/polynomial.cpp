#include "polynomial.h"

void vector_inn_prdt_sum_test(block *res, const block *a, const block *b, int sz) {
	block r = zero_block;
	block r1;
	for(int i = 0; i < sz; i++) {
		gfmul(a[i], b[i], &r1);
		r = r ^ r1;
	}
	*res = r;
}

void get_mac(block& mac, const Integer& val, int size) {
    block res;
    assert((val.size() == size));
    vector_inn_prdt_sum_test(&res, (block*)(val.bits.data()), gp.base, size);
    mac = res;
}



void block2GF(GF2E& res, const block a ){
    GF2X raw;
    //  cout <<(a) << endl;
    auto low = _mm_extract_epi64(a, 0);
    auto high = _mm_extract_epi64(a, 1);
    // cout << low << endl;
    //cout << high << endl;

    raw.SetMaxLength(128);
    for(int i = 0; i < 64; i++){
        SetCoeff(raw, long(i), (1 &(low >> (i))));
        SetCoeff(raw, long(i+64), (1 &(high >> (i))));
    }
    res._GF2E__rep = raw;
}

GF2EX get_GF2EX_with_roots(vector<uint64_t>& roots){
    GF2EX res, tmp;
    SetCoeff(res, 0); // res = 1
    for (auto r : roots){
        tmp = GF2EX();
        GF2E coefficient, constant;
        if (r == 0){
            block2GF(coefficient, zero_block);
            block2GF(constant, one_block);
            SetCoeff(tmp, 0, constant);
            SetCoeff(tmp, 1, coefficient);
        }else{
            block2GF(constant, (block)get_128uint_from_uint64(r));
            block2GF(coefficient, one_block);
            SetCoeff(tmp, 0, constant);
            SetCoeff(tmp, 1, coefficient);
        }
        res = tmp * res;
    }
    return res;
}

void check_MAC_valid(block X, block MAC) {
    BoolIO<NetIO>* io = ostriple->io;
    int party = ostriple->party;
    if(party == ALICE) {
        io->send_data(&X, sizeof(block));
        io->send_data(&MAC, sizeof(block));
        int64_t res = -1;
        io-> recv_data(&res, 8);
        if (res != 1) error("check_MAC failed!\n");
    } else {
        block M = zero_block, x = zero_block;
        io->recv_data(&x, sizeof(block));
        io->recv_data(&M, sizeof(block));
        gfmul(x, ostriple->delta, &x);
        x = x ^ MAC;
        if (memcmp(&x, &M, sizeof(block))!=0) {
            int64_t  res = 0;
            io->send_data(&res, 8);
            error("check_MAC failed!\n");
        }else {
            int64_t  res = 1;
            io->send_data(&res, 8);
        }

    }

}



void fill_data_and_mac(block& d, block& m){
    if (data_mac_pointer == svole->param.n){
        svole->extend_inplace(data, mac, svole->param.n);
        data_mac_pointer = 0;
    }
    d = data[data_mac_pointer];
    m = mac[data_mac_pointer];
    data_mac_pointer = data_mac_pointer + 1;

}

void check_zero_MAC(block MAC, int end) {
    static Hash hash;
    hash.put(&MAC, sizeof(block));
    if (end == 1) {
        BoolIO<NetIO>* io = ostriple->io;
        int party = ostriple->party;
        char dig[Hash::DIGEST_SIZE];
        hash.digest(dig);

        if(party == ALICE) {
            io->send_data(dig, sizeof(dig));
        } else {
            char receive[Hash::DIGEST_SIZE];
            io->recv_data(receive, sizeof(receive));
            if (memcmp(receive, dig, sizeof(dig))!=0) {
                error("check_zero failed!\n");
            }else {
                cout << "check_zero succeed!!!" << endl;
            }
        }
        return;
    }
}

void check_one_MAC(block MAC, int end) {
    block res; 
    block x = makeBlock(0, 1); 
    gfmul(x, ostriple->delta, &x);
    if (ostriple -> party == BOB) res = (x ^ MAC);
    if (ostriple -> party == ALICE)  res = MAC; 
    check_zero_MAC(res); 
}

// void check_one_MAC(block MAC) {
//     block res; 
//     int party = ostriple->party;
//     if(party == ALICE) res = MAC^ (ostriple->delta);
//     if (party == BOB) res = MAC; 
//     check_zero_MAC(res);

// }

void multiply_const(block &val, block &mac,
                           const block& x, const block& m, const block& cst, int party) {
                            
    // cout << "=====before ==== \n";
    // cout << (cst) << endl; 
    //  cout << (x) << endl;     
    // cout << (val) << endl;                       
    if(party == ALICE) {
        gfmul(x, cst, &val);//   cout << mac << endl;
    }
    gfmul(m, cst, &mac);
    // cout << "====after ===== \n";
    // cout << (cst) << endl; 
    // cout << (x) << endl;     
    // cout << (val) << endl; 
 }



polynomial::polynomial(vector<block> _coefficient) {
    cout << "error" << endl;
    // vector<block> mcoefficient;
    // vector<block> coefficient;
    // for (int i = 0; i < _coefficient.size(); i ++){
    //     block d, m;
    //     fill_data_and_mac(d, m);
    //     if (ostriple->party == ALICE) {
    //         block diff_coefficient;
    //         diff_coefficient= d^_coefficient[i];
    //         ostriple->io ->send_data(&diff_coefficient, sizeof(block));
    //         coefficient.push_back(_coefficient[i]);
    //         mcoefficient.push_back(m);
    //     }
    //     if (ostriple->party == BOB){
    //         block diff_coefficient;
    //         ostriple->io ->recv_data(&diff_coefficient, sizeof(block));
    //         gfmul(ostriple->delta, diff_coefficient, &diff_coefficient);
    //         coefficient.push_back(d);
    //         mcoefficient.push_back(m ^diff_coefficient);
    //     }
    // }
    // this->coefficient = coefficient;
    // this->mcoefficient = mcoefficient;
}

polynomial::polynomial(vector<uint64_t> _roots) {
    vector<block> roots;
    vector<block> mroots;
    for (int i = 0; i < _roots.size(); i ++){
       block d, m;
       fill_data_and_mac(d, m);
       block r, mr;
       r = (block)get_128uint_from_uint64(_roots[i]);
       if (ostriple->party == ALICE) {
            block diff_root;
            diff_root= d^(r);
            ostriple->io ->send_data(&diff_root, sizeof(block));
            mr = (m);
        }
        if (ostriple->party == BOB){
            block tmp;
            ostriple->io ->recv_data(&tmp, sizeof(block));
            gfmul(ostriple->delta, tmp, &tmp);
            r = (d);
            mr = (m ^tmp);
        }
        roots.push_back(r);
        mroots.push_back(mr);
    }
    this->roots = roots;
    this->mroots = mroots;
}

void polynomial::Evaluate(block &res, block &mres, block &input) const {
    vector<block> product;
    vector<block> mproduct; 

    for (int i = 0; i < this->roots.size(); i++) {
        auto low_root = _mm_extract_epi64(roots[i], 0);
        Integer r(32, low_root, ALICE);
        // uint64_t dft = uint64_t(1) << 32; 
        Bit is_zero = r.equal(Integer(32, DEFAULT, PUBLIC)); 
        Bit is_non_zero = !r.equal(Integer(32, DEFAULT, PUBLIC)); 
        Integer is_zero_i(vector<Bit>{is_zero});
        Integer is_non_zero_i(vector<Bit>{is_non_zero});
        block is_dummy, is_not_dummy, is_dummy_m, is_not_dummy_m;

        get_mac(is_dummy_m, is_zero_i, is_zero_i.size()); 
        get_mac(is_not_dummy_m, is_non_zero_i, is_non_zero_i.size());
        is_dummy = (block)get_128uint_from_uint64(is_zero_i.reveal<uint64_t>(ALICE));
        is_not_dummy = (block) get_128uint_from_uint64(is_non_zero_i.reveal<uint64_t>(ALICE));        
        if (ostriple->party == ALICE){
            block t, mt, x, mx; 
            x = roots[i] ^ input; 
            mx =  mroots[i];
            ostriple -> compute_mul(t, mt, x, mx, is_not_dummy, is_not_dummy_m);
            product.push_back(t ^ is_dummy);
            mproduct.push_back(mt ^ is_dummy_m);
        }
        if (ostriple->party == BOB){
            block tmp, t, mt; 
            gfmul(ostriple->delta, input, &tmp);
            block xx, mx; 
            xx = roots[i]^input;
            mx  = tmp^mroots[i];
            ostriple -> compute_mul(t, mt, xx, mx, is_not_dummy, is_not_dummy_m);
            product.push_back(t ^ is_dummy);
            mproduct.push_back(mt ^ is_dummy_m);
        }
    }
    res = product[0];
    mres = mproduct[0];
    for (int  i = 1; i < product.size(); i ++){
        block tmp, mtmp;
        ostriple->compute_mul(tmp, mtmp, res, mres, product[i], mproduct[i]);
        res = tmp;
        mres = mtmp;
    }
}

void polynomial::Equal(const polynomial& lhs) const{
    io->flush();
    block r = io->get_hash_block();
    // cout << r << endl;
    block res[2], mac[2];
    this->Evaluate(res[0], mac[0], r);
    // cout << "?????" << endl;
    lhs.Evaluate(res[1], mac[1], r);
    check_zero_MAC(mac[0]^mac[1]);
    // cout << (mac[0]^mac[1] ) << endl; 
}

//p = <p1, p2>
void polynomial::InnerProductEqual(vector<polynomial> &p1, vector<polynomial> &p2) {
    io->flush();
    block r =io->get_hash_block();
    int d = p1.size();
    assert(p1.size() == p2.size());
    block res = zero_block;
    block mres = zero_block;
    for (int  i = 0; i < d; i ++){
        block tmp, mt, xx, xm, yy, ym;
        p1[i].Evaluate(xx, xm, r);
        p2[i].Evaluate(yy, ym, r);
        ostriple->compute_mul(tmp, mt, xx, xm, yy, ym);
        res = res ^ tmp;
        mres = mres ^ mt;
    }
    block resp, mresp;
    this->Evaluate(resp, mresp, r);
    check_zero_MAC(mresp^mres);
   
}

// void assert_vector_equal(vector<polynomial>& vp1, vector<polynomial> &vp2) {
//     io->flush();
//     block r =io->get_hash_block();
    
//     block res1;
//     block mres1;
//     vp1[0].Evaluate(res1, mres1, r);

//     for(int i = 0; i < vp1.size(); i ++){
//         block t, mt; 
//         vp1[i].Evaluate(t, tm, r);
//         // t = vp[i](r); 
//         DANGER: Buggy, can't use same input and output references.
//         ostriple -> compute_mul(res1, mres1, res1, mres1, t, mt); 
//         // res1 = res1 * t
//     }
// }

void polynomial::ProductEqual(polynomial& p1, polynomial &p2) {
    io->flush();
    block r =io->get_hash_block();
    block res = zero_block;
    block mres = zero_block;
    block xx, xm, yy, ym;
    p1.Evaluate(xx, xm, r);
    p2.Evaluate(yy, ym, r);
    ostriple->compute_mul(res, mres, xx, xm, yy, ym);
    block resp, mresp;
    this->Evaluate(resp, mresp, r);
    check_zero_MAC(mresp^mres );
    // cout << " product block: " << (mresp^mres)  << endl; 
}

void polynomial::ConverseCheck(polynomial & lhs) {
    // for (int i = 0; i < this-> coefficient.size(); i ++) cout << i << ":" << (this-> coefficient[i]) << ", mac: " << (this-> mcoefficient[i]) << endl; 
    // cout << "========\n";
    // for (int i = 0; i < lhs.coefficient.size(); i ++) cout << (lhs.coefficient[i]) << ", mac: " << (lhs.mcoefficient[i]) << endl; 


    io->flush();
    block r =io->get_hash_block();
    //  cout << "====last coefficient=======" << endl;
    block converse_r = ((block) get_128uint_from_uint64(constant))^r;
    // cout << (lhs.coefficient[0] ^ this -> coefficient[0]) << endl; 
    //  cout << (converse_r) << endl; 
    //  cout << (r) << endl; 
    block xx, xm, yy, ym;
 //   cout << "====rhs =======" << endl;
    this->Evaluate(xx, xm, r);
    // cout << "====lhs =======" << endl;
    lhs.Evaluate(yy, ym, converse_r);
    check_zero_MAC(xm^ym);
    // cout << "converse block: " << (xx ^ yy)  << endl; 
}


void polynomial::ConstantCheck() {
    // check zero mac !!!
    io->flush();
    block r0 =io->get_hash_block();
    io->flush();
    block r1 =io->get_hash_block();
//    cout << r0 << endl;
//    cout << r1 << endl;
    block res0, res1,  mres0, mres1;
    this -> Evaluate(res1, mres1, r1);
    this -> Evaluate(res0, mres0, r0);
    check_zero_MAC(mres0^mres1);
}

void GCDCheck(polynomial& gcd, polynomial& p1, polynomial& p2, polynomial& witness1, polynomial witness2) {
    vector<polynomial> x {p1, p2};
    vector<polynomial> y{witness1, witness2};
    gcd.InnerProductEqual(x, y);
};

polynomial get_polynomial(const vector<Integer>& roots){
    vector<uint64_t> roots_raw;
    for(int i = 0; i < roots.size(); i++){
        roots_raw.push_back(roots[i].reveal<uint64_t>(ALICE));
    }
    return polynomial(roots_raw);
};

void GF2EX2polynomial(GF2EX& a, polynomial& b){

    long d = deg(a);
    assert(!(d > DEGREE));
    std::vector<block> coeff;
    for (long i = 0; i < DEGREE; i ++){
        GF2E c = NTL::coeff(a, i);
        GF2X raw = c._GF2E__rep;
        block tmp = zero_block;
        for(int i = 0; i < 128; i++){
            if (IsOne(NTL::coeff(raw, i)))
                tmp = set_bit(tmp, i);
        }
        coeff.push_back(tmp);
    }
    b = polynomial(coeff);
}

// does not hide the sizes of its input vectors
// no padding
// both input vectors must be non-empty
void assert_products_equal(vector<polynomial> &vp1, vector<polynomial> &vp2) {
    io->flush();
    block r = io->get_hash_block();

    block res1, mres1;
    vp1[0].Evaluate(res1, mres1, r);
    for (int i = 1; i < vp1.size(); i++) {
        block t, mt;
        vp1[i].Evaluate(t, mt, r);
        block tmp, mtmp;
        ostriple -> compute_mul(tmp, mtmp, res1, mres1, t, mt);
        res1 = tmp;
        mres1 = mtmp;
    }

    block res2, mres2;
    vp2[0].Evaluate(res2, mres2, r);
    for (int i = 1; i < vp2.size(); i++) {
        block t, mt;
        vp2[i].Evaluate(t, mt, r);
        block tmp, mtmp;
        ostriple -> compute_mul(tmp, mtmp, res2, mres2, t, mt);
        res2 = tmp;
        mres2 = mtmp;
    }
    
    check_zero_MAC(mres1 ^ mres2);
}

void assert_unions_equal(const vector<vector<Integer> >& v1, const vector<vector<Integer> >& v2) {
    // map each vector to a new vector
    vector<polynomial> vp1;
    vector<polynomial> vp2;
    for (int i = 0; i < v1.size(); i++) {
        vp1.push_back(get_polynomial(v1[i]));
    }
    for (int i = 0; i < v2.size(); i++) {
        vp2.push_back(get_polynomial(v2[i]));
    }
    assert_products_equal(vp1, vp2);
}
