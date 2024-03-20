#pragma once

#include "table.h"
#include "polynomial.h"
#include "roram.h"

// Force any batch checks to execute to ensure an operation in timing section A
// does not fill a batch check executed in timing section B, messing up timing.
void flush(ZProof* proof);

ZExpr vector_to_zexpr(vector<Integer> v);

ZClause vector_to_zclause(vector<Integer> v);

ZUfEntry vector_to_zufentry(vector<Integer> v);

ZExpr get_expr_pvt(ZProof* proof, Integer index);

vector<ZExprID> get_expr_list_pvt(ZProof* proof, Integer index);

ZClause get_clause_pvt(ZProof* proof, Integer index);

ZExpr get_result_pvt(ZProof* proof, Integer clause_index);

ZType get_type_pvt(ZProof* proof, Integer index);

Integer get_max_height_pvt(ZProof* proof, Integer index);

ZUfEntry get_ufentry_pvt(ZProof* proof, Integer index);

void assert_eq(Integer l, Integer r);

void assert_bit(Bit b, int end = 0);

void assert_neq(Integer l, Integer r);

Integer real_size(vector<Integer> l);

void assert_real_size(vector<Integer> l, int d = 1);

//a private integer (e) is contained in the vector

void assert_contain(Integer e, vector<Integer>& l);

void assert_empty(vector<Integer>& l);

/*
checking sub is obtained by removing duplicate elements in sup
can be done by checking sub * gcd (sup, sup') == sup  
*/

void assert_subset(vector<Integer>& sub, vector<Integer>& sup, vector<Integer>& witness );


/*
using claim 3.1 of : https://eprint.iacr.org/2020/315.pdf, assuming sub and sup are both sorted; 
*/
void assert_f_submultiset_t(vector<Integer>& f, vector<Integer>& t);

void assert_union_subset(vector<Integer>& sub0, vector<Integer>& sub1, vector<Integer>& sup);

void assert_set_equal(vector<Integer>& s0, vector<Integer>& s1);

void assert_remove_duplicate(vector<Integer>& f, vector<Integer>& t);

void assert_resolution(vector<Integer>& sub, vector<Integer>& sup, vector<Integer>& witness, Integer literal);

void padding(vector<uint64_t>& input);
