#pragma once
#include "commons.h"


const block one_block = makeBlock(0, 1);
inline GaloisFieldPacking gp;
using namespace NTL;

inline __uint128_t get_128uint_from_uint64(uint64_t value) {
    return (((__uint128_t)value)) ;
}

void vector_inn_prdt_sum_test(block *res, const block *a, const block *b, int sz);
void get_mac(block& mac, const Integer& val, int size);

void block2GF(GF2E& res, const block a );

GF2EX get_GF2EX_with_roots(vector<uint64_t>& roots);

void check_MAC_valid(block X, block MAC) ;

void fill_data_and_mac(block& d, block& m);

void check_zero_MAC(block MAC, int end = 0) ;
void check_one_MAC(block MAC, int end = 0) ;
void multiply_const(block &val, block &mac,
                           const block& x, const block& m, const block& cst, int party);

/*
 * compute addition of vala and valb;
 * valc = vala + valb; maca is mac of a, macb is mac of b;
 * macc = mac(valc)
 */
inline void compute_xor(block &valc, block &macc,
                        const block vala, const block maca, const block valb, const block macb){
    valc = vala ^ valb;
    macc = maca ^ macb;
}


class polynomial {
public:
    vector <block> roots;
    vector <block> mroots;
    polynomial(){
    }
    polynomial(vector<block> coefficient);
    polynomial(vector<uint64_t> roots);
    void Evaluate(block &res, block &mres, block &input) const ;
    void Equal(const polynomial& lfh) const;

    void InnerProductEqual(vector<polynomial>& p1, vector<polynomial>& p2);
    void ProductEqual(polynomial& p1, polynomial& p2);
    void ConverseCheck(polynomial& lhs);
    void ConstantCheck();

    void print() {
        for (block b: roots) {
            cout << "[" << (b) << "]";
        }
        cout << endl;
    }
};

void GCDCheck(polynomial& gcd, polynomial& p1, polynomial& p2, polynomial& witness1, polynomial witness2);

polynomial get_polynomial(const vector<Integer>& roots);

void GF2EX2polynomial(GF2EX& a, polynomial& b);

// does not hide the sizes of its input vectors
// no padding
// both input vectors must be non-empty
void assert_products_equal(vector<polynomial> &vp1, vector<polynomial> &vp2);

void assert_unions_equal(const vector<vector<Integer> >& v1, const vector<vector<Integer> >& v2);
