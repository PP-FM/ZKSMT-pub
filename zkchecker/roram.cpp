#include "roram.h"
#include "timing.h"

template class RORAM<BoolIO<NetIO> >;

template<typename IO>
RORAM<IO>::RORAM(int _party, int _index_sz, int _step_sz, int _table_index): party(_party), index_sz(_index_sz), step_sz(_step_sz) {
    ZKBoolCircExec<IO> *exec = (ZKBoolCircExec<IO>*)(CircuitExecution::circ_exec);
    io = exec->ostriple->io;
    Delta = exec->ostriple->delta;
    // ostriple = new F2kOSTriple<IO>(party, exec->ostriple->threads, exec->ostriple->ios, exec->ostriple->ferret, exec->ostriple->pool);
    for(int i = 0; i < step_sz; i ++){
        hash_block.push_back(one_block);
    }
    hash_pair.first = zero_block;
    hash_pair.second = zero_block;
    for (int i = 0; i < RULE_ARRAY_SIZE; i++) {
        per_rule_count[i] = 0;
    }
    table_index = _table_index;
}

template<typename IO>
RORAM<IO>::~RORAM() {
}

template<typename IO>
void RORAM<IO>::init(vector<vector<Integer>> &data) {
    vector<uint64_t> val(step_sz);
    for(size_t i = 0; i < data.size(); ++i) {
        get_raw(val, data[i]);
        clear_mem.push_back(val);
        clear_access_record.push_back(make_pair((uint64_t)i, val));
        access_record.push_back(make_pair(Integer(index_sz + 1,i, ALICE), data[i]));
    }
}

template<typename IO>
void RORAM<IO>::get_commit(const vector<uint64_t>& raw, vector<Integer>& input){
    assert ((raw.size() == step_sz));
    vector<Integer> tmp(step_sz);
    for (int i = 0 ; i <  raw.size(); i ++) tmp[i] = (Integer(32, raw[i], ALICE));
    input = tmp;
}

template<typename IO>
vector<Integer> RORAM<IO>::get(const Integer & index) {
    array_timer_stop(current_rule);
    array_timer_start();
    alt_timer_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    vector<uint64_t> tmp(step_sz);
    if(party == ALICE) {
        tmp = clear_mem[clear_index];
    }
    vector<Integer> res; 
    get_commit(tmp, res); 
   
    clear_access_record.push_back(make_pair(clear_index, tmp));
    access_record.push_back(make_pair(index, res));
    ++step;
    ++total_step;
    per_rule_count[current_rule] += 1;

    if(step == clear_mem.size()* 2) {
        // Prevent a double-timer issue
        alt_timer_stop();
        array_timer_stop(RORAM_TIMER_IDX + table_index);
        check();
        array_timer_start();
        alt_timer_start();
    }

    array_timer_stop(RORAM_TIMER_IDX + table_index);
    array_timer_start();
    alt_timer_stop();
    return res;
}

template<typename IO>
void RORAM<IO>::check() {
    array_timer_start();
    alt_timer_start();
    ++total_check;

    vector<pair<uint64_t, vector<uint64_t>>> sorted_clear_access;
    sorted_clear_access = vector<pair<uint64_t,  vector<uint64_t>>>(this->clear_access_record.begin(), this->clear_access_record.end());
    if(party == ALICE) {
        sort(sorted_clear_access.begin(), sorted_clear_access.end());
    }
    vector<Integer> sorted_index;
    vector<vector<Integer>> sorted_access;
    for (int i = 0; i < access_record.size(); i ++){
        auto item  = sorted_clear_access[i];
        sorted_index.push_back(Integer(index_sz, item.first, ALICE));
        vector<Integer> tmp; 
        get_commit(item.second, tmp); 
        sorted_access.push_back(tmp);
    }


    update_hash();
    vector<__uint128_t> HRecord;
    vector<block> HRecord_mac;
    
    sync_zk_bool<IO>();
    for (int i = 0; i < access_record.size(); i ++){
        Integer h = getHash(access_record[i].second);

        block v, m;
        hash_and_mac(v, m, access_record[i].first, h);
        HRecord.push_back((__uint128_t)v);
        HRecord_mac.push_back(m);
    }


    vector<__uint128_t> sorted_HRecord;
    vector<block> sorted_HRecord_mac;
    vector<Integer> sorted_hash_value;

    for(int i = 0; i < sorted_clear_access.size(); i++){
        Integer h = getHash(sorted_access[i]);
        sorted_hash_value.push_back(h);
        block v, m;
        hash_and_mac(v, m, sorted_index[i], h);
        sorted_HRecord.push_back((__uint128_t)v);
        sorted_HRecord_mac.push_back(m);
    }

    bool cheat = true;
    for(size_t i = 0; i < sorted_index.size()-1; ++i) {
        Bit eq = !(sorted_index[i].geq(sorted_index[i+1])) | (sorted_index[i].equal(sorted_index[i+1]) & sorted_hash_value[i].equal(sorted_hash_value[i+1]));
        bool res = eq.reveal<bool>(PUBLIC);
        cheat = cheat and res;
    }

    if(!cheat) error("cheat!");

    sync_zk_bool<IO>();
    check_set_equality(sorted_HRecord, sorted_HRecord_mac, HRecord, HRecord_mac);
    access_record.resize(clear_mem.size());
    clear_access_record.resize(clear_mem.size());
    step = 0;
    sync_zk_bool<IO>();

    alt_timer_stop();
    array_timer_stop(RORAM_TIMER_IDX + table_index);
}

template<typename IO>
void RORAM<IO>::update_hash(){
    io->flush();
    for (int i  =0; i < step_sz; i ++){
        block r = io->get_hash_block();
        this->hash_block[i] = r;
        io -> flush();
    }

    block r = io->get_hash_block();
    this->hash_pair.first = r;
    io -> flush();
    r = io->get_hash_block();
    this->hash_pair.second = r;
    io -> flush();
}

template<typename IO>
Integer RORAM<IO>::getHash(vector<Integer>& input){
    block hash = zero_block;
    block hash_mac = zero_block;
    for (int i=0; i < input.size(); i ++){
        block val, mac;
        val = (block)pack(input[i].reveal<uint64_t>(ALICE));
        get_mac(mac, input[i], input[i].size());
        multiply_const(val, mac, val, mac, hash_block[i], ostriple->party);

        hash = hash ^ val;
        hash_mac = hash_mac ^ mac;
    }
    __m128i h = (__m128i)(hash);
    Integer hash_value(128, &h, ALICE);
    block hash_mac_get;
    get_mac(hash_mac_get, hash_value, 128);
    check_zero_MAC(hash_mac_get ^ hash_mac);
    return hash_value;
}

template<typename IO>
Integer RORAM<IO>::getHash(vector<uint64_t>& c) {
    block hash = zero_block;
    for (int i =0; i < c.size(); i ++){
        block val = (block)pack(c[i]);
        block tmp;
        gfmul(val, hash_block[i], &tmp);
        hash = hash ^ tmp;
    }
    __m128i h = (__m128i)(hash);
    return Integer(128, &h, ALICE);
    
}

template<typename IO>
void RORAM<IO>::hash_and_mac(block& hash, block& mac, const Integer& index, const Integer& val ){
    block mac1, mac2;
    get_mac(mac1, val, val.size());
    get_mac(mac2, index, index.size());
    __uint128_t _res1;
    val.reveal<__uint128_t>(&_res1, ALICE);
    block res1 = (block)_res1;
    block res2 = (block)pack(index.reveal<uint64_t>(ALICE));
    gfmul(mac1, hash_pair.first, &mac1);
    gfmul(mac2, hash_pair.second, &mac2);
    mac = mac1 ^ mac2;
    gfmul(res1, hash_pair.first, &res1);
    gfmul(res2, hash_pair.second, &res2);
    hash = res1 ^ res2;
}

template<typename IO>
void RORAM<IO>::vector_inn_prdt(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r) {
    block x, m;
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while(i < X.size()) {
        tmp = (block)X[i];
        ostriple->compute_add_const(x, m, tmp, MAC[i], r);
        ostriple->compute_mul(xx, mm, xx, mm, x, m);
        ++i;
    }
}

template<typename IO>
void RORAM<IO>::vector_inn_prdt_bch2(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r) {
    block x[2], m[2], t[2];
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while(i < X.size()-1) {
        for(int j = 0; j < 2; ++j) {
            t[j] = (block)X[i+j];
            ostriple->compute_add_const(x[j], m[j], t[j], MAC[i+j], r);
        }
        ostriple->compute_mul3(xx, mm, x[0], m[0],
                               x[1], m[1], xx, mm);
        i += 2;
    }
    while(i < X.size()) {
        t[0] = (block)X[i];
        ostriple->compute_add_const(x[0], m[0], t[0], MAC[i], r);
        ostriple->compute_mul(xx, mm, xx, mm, x[0], m[0]);
        ++i;
    }
}

template<typename IO>
void RORAM<IO>::vector_inn_prdt_bch3(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r) {
    block x[3], m[3], t[3];
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while(i < X.size()-2) {
        for(int j = 0; j < 3; ++j) {
            t[j] = (block)X[i+j];
            ostriple->compute_add_const(x[j], m[j], t[j], MAC[i+j], r);
        }
        ostriple->compute_mul4(xx, mm, x[0], m[0],
                               x[1], m[1], x[2], m[2], xx, mm);
        i += 3;
    }
    while(i < X.size()) {
        t[0] = (block)X[i];
        ostriple->compute_add_const(x[0], m[0], t[0], MAC[i], r);
        ostriple->compute_mul(xx, mm, xx, mm, x[0], m[0]);
        ++i;
    }
}

template<typename IO>
void RORAM<IO>::vector_inn_prdt_bch4(block &xx, block &mm, vector<__uint128_t> &X, vector<block> &MAC, block r) {
    block x[4], m[4], t[4];
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while(i < X.size()-3) {
        for(int j = 0; j < 4; ++j) {
            t[j] = (block)X[i+j];
            ostriple->compute_add_const(x[j], m[j], t[j], MAC[i+j], r);
        }
        ostriple->compute_mul5(xx, mm, x[0], m[0],
                               x[1], m[1], x[2], m[2], x[3], m[3], xx, mm);
        i += 4;
    }
    while(i < X.size()) {
        t[0] = (block)X[i];
        ostriple->compute_add_const(x[0], m[0], t[0], MAC[i], r);
        ostriple->compute_mul(xx, mm, xx, mm, x[0], m[0]);
        ++i;
    }
}

// mult batch 4
template<typename IO>
void RORAM<IO>::check_set_equality(vector<__uint128_t> & sorted_X, vector<block>& sorted_MAC, vector<__uint128_t>& check_X, vector<block>& check_MAC) {
    block r, val[2], mac[2];
    r = io->get_hash_block();
    vector_inn_prdt_bch4(val[0], mac[0], sorted_X, sorted_MAC, r);
    vector_inn_prdt_bch4(val[1], mac[1], check_X, check_MAC, r);

    // TODO comparison
    if(party == ALICE) {
        io->send_data(mac, 2*sizeof(block));
        io->flush();
    } else {
        block macrecv[2];
        io->recv_data(macrecv, 2*sizeof(block));
        mac[0] ^= macrecv[0];
        mac[1] ^= macrecv[1];
        if(memcmp(mac, mac+1, 16) != 0) {
            error("check set equality failed!\n");
        }
    }
}

template<typename IO>
uint64_t RORAM<IO>::get_total_step() {
    return this->total_step;
}

template<typename IO>
uint64_t RORAM<IO>::get_total_check() {
    return this->total_check;
}

template<typename IO>
uint64_t RORAM<IO>::get_nanos_per_rule(int rule_id) {
    return (array_timer_get(RORAM_TIMER_IDX+this->table_index) *
            this->per_rule_count[rule_id]) / this->get_total_step();
}

template<typename IO>
__uint128_t RORAM<IO>::pack(uint64_t value) {
    return (((__uint128_t)value)) ;
}

// inline pair<double, double> check_chain(vector<Integer>& indice, vector<uint64_t> pivots, int ptr, RORAM<BoolIO<NetIO>>* formula){
//     double cost_resolve = 0;
//     double cost_access = 0;
//     auto timer_0 = chrono::high_resolution_clock::now();
//     vector<vector<Integer>> intermediate;
//     vector<vector<Integer>> resource;
//     for (Integer index : indice){
//         if (index.geq(Integer(INDEX_SZ, ptr, PUBLIC)).reveal())  error("cheat!");
//         resource.push_back(formula->get(index));
//     }

//     auto timer_1 = chrono::high_resolution_clock::now();

//     cost_access = chrono::duration<double>(timer_1 - timer_0).count();


//     auto timer_2 = chrono::high_resolution_clock::now();

//     intermediate.push_back(resource[0]);


//     for (int i = 1; i < pivots.size(); i++){

//         clause a = intermediate[i-1];

//         clause b = resource[i];

//         clause tmp = get_res_f2k(a, b, pivots[i]);

//         intermediate.push_back(tmp);

//     }
//     for (int i = 1; i < pivots.size(); i++){

//         clause c0 = intermediate[i-1];

//         clause c1 = resource[i];

//         check_xres(c0, c1, intermediate[i], pivots[i]);

//     }
//     auto timer_3 = chrono::high_resolution_clock::now();
//     cost_resolve = chrono::duration<double>(timer_3 - timer_2).count();
//     return pair<double, double>{cost_access, cost_resolve};

// }

/**************************checking*************************************************/

/**************************bottleneck*************************************************/






