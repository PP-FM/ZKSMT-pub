//
// Created by anonymized on 12/7/21.
//
//
// Created by anonymized on 10/4/21.
//

#pragma once;

#include "emp-zk/emp-zk.h"
#include "emp-zk/extensions/ram-zk/ostriple.h"
#include "polynomial.h"
#include "commons.h"

#define RULE_ARRAY_SIZE 1024

// starting index where roram timing information is stored in array timers.
#define RORAM_TIMER_IDX 700
#define RORAM_EXPR 0
#define RORAM_EXPR_LIST 1
#define RORAM_CLAUSE 2
#define RORAM_EXPR_LIST_TYPE 3
#define RORAM_EXPR_LIST_HEIGHT 4
#define RORAM_UF 5

inline void get_raw(vector<uint64_t>& raw, const vector<Integer>& input, int party = ALICE){
    vector<uint64_t> tmp; 
    for (int i = 0 ; i <  input.size(); i ++) tmp.push_back(input[i].reveal<uint64_t>(party));
    raw = tmp;
}

template<typename IO>
class RORAM {
public:
    double	check1 = 0, check2 = 0, check3 = 0;
    int party;
    int index_sz;
    int step_sz;
    uint64_t step = 0;
    uint64_t total_step = 0;
    uint64_t total_check = 0;
    vector<vector<uint64_t>> clear_mem;
    vector<pair<uint64_t, vector<uint64_t>>> clear_access_record;
    vector< pair<Integer, vector<Integer>>> access_record;
    vector<block> hash_block;
    pair<block, block> hash_pair;
    IO * io;
    block Delta;
    uint64_t per_rule_count[RULE_ARRAY_SIZE];
    // For timing purposes, which table globally is this.
    uint64_t table_index;

    RORAM(int _party, int _index_sz, int _step_sz, int _table_index);

    ~RORAM();

    void init(vector<vector<Integer>> &data);
    
    void get_commit(const vector<uint64_t>& raw, vector<Integer>& input);

    vector<Integer> get(const Integer & index);

    void check();

    void update_hash();

    Integer getHash(vector<Integer>& input);

    Integer getHash(vector<uint64_t>& c);

    void hash_and_mac(block& hash, block& mac, const Integer& index, const Integer& val );

    void vector_inn_prdt(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r);

    void vector_inn_prdt_bch2(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r);

    void vector_inn_prdt_bch3(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r);

    void vector_inn_prdt_bch4(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r);

    // mult batch 4
    void check_set_equality(vector<__uint128_t> & sorted_X, vector<block>& sorted_MAC, vector<__uint128_t>& check_X, vector<block>& check_MAC);

    __uint128_t pack(uint64_t value);

    uint64_t get_total_step();
    uint64_t get_total_check();
    uint64_t get_nanos();
    uint64_t get_nanos_per_rule(int rule_id);
};



