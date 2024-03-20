// #include "ast.h"
#include "timing.h"
#include "microbenchmark.h"
#include "checker.h"
#include "utils.h"
int port, party;
const int threads = 8;
#include <emp-zk/emp-zk.h>
#include <iostream>
#include "emp-tool/emp-tool.h"
#include "emp-zk/extensions/ram-zk/ostriple.h"
using namespace  std;
using  namespace  NTL;
using namespace emp;
#define VAL_SZ 61
int DEGREE = 300;
block *mac, *data;
uint64_t data_mac_pointer;
SVoleF2k <BoolIO<NetIO>> *svole;
F2kOSTriple <BoolIO<NetIO>> *ostriple;
uint64_t constant;
BoolIO <NetIO> *io;

bool verbose_printing;

uint64_t current_rule;

Integer ZOR; 
Integer ZAPPLY; 
Integer ZVAR; 
Integer ZEQ;
Integer ZAND;
Integer ZNODE_TRUE;
Integer ZNODE_FALSE;
Integer ZXOR;
Integer ZIMPLIES;

Integer ZITE;
Integer ZNOT;
Integer ZNAPPLY;
Integer ZTERM;
Integer ZADD;
Integer ZMUL;
Integer ZLEQ;
Integer ZGEQ;
Integer ZLT;
Integer ZGT;

Integer ZNODE_DEFAULT;

void setup_constant(){
    ZOR = Integer(32, OR, PUBLIC); 
    ZAPPLY =  Integer(32, APPLY, PUBLIC); 
    ZVAR = Integer(32, VAR, PUBLIC); 
    ZEQ = Integer(32, EQ, PUBLIC);
    ZAND = Integer(32, AND, PUBLIC);
    ZNODE_TRUE = Integer(32, NODE_TRUE, PUBLIC);
    ZNODE_FALSE = Integer(32, NODE_FALSE, PUBLIC);
    ZXOR = Integer(32, 7, PUBLIC);
    ZIMPLIES = Integer(32, IMPLIES, PUBLIC);
    ZITE = Integer(32, ITE, PUBLIC);
    ZNOT = Integer(32, NOT, PUBLIC);
    ZNAPPLY = Integer(32, NAPPLY, PUBLIC);
    ZTERM = Integer(32, TERM, PUBLIC);
    ZADD = Integer(32, ADD, PUBLIC);
    ZMUL = Integer(32, MUL, PUBLIC);
    ZLEQ = Integer(32, LEQ, PUBLIC);
    ZGEQ = Integer(32, GEQ, PUBLIC);
    ZLT = Integer(32, LT, PUBLIC);
    ZGT = Integer(32, GT, PUBLIC);
    ZNODE_DEFAULT = Integer(32, NODE_DEFAULT, PUBLIC);
}

void test_circuit_zk(BoolIO<NetIO> *ios[threads], int party) {
	setup_zk_bool<BoolIO<NetIO>>(ios, threads, party);
}

const char *usage = "usage: ./zkchecker [-m <ARGS>] [-q] <filename> [-a address] <1/2> <port>";

int main(int argc, char** argv) {

    // Parse command line arguments
    // We extract these things:
    // - the filename containing the proof
    // - EMP arguments (expected in the form of an alternative argv set
    //   which includes only executable name, party and port number)
    // - a flag on microbenchmark mode (and arguments if so)
    // - a flag on quiet/verbose printing
    if (argc < 4) {
        cout << usage << endl;
        return 0;
    }

    char **emp_argv;
    int first_emp_arg_index;
    int filename_index;
    microbenchmark_t microbenchmark;
    microbenchmark.active = false;

    if (strcmp(argv[1], "-v") == 0) {
        verbose_printing = true;
        filename_index = 2;
        first_emp_arg_index = 3;
    } else if (strcmp(argv[1], "-m") == 0) {
        if (argc < 10) {
            cout << usage << endl;
            cout << "microbenchmarks usage: -m <r> <etl> <mell> <eltl> <ctl>" << endl;
            cout << "r: repetitions" << endl;
            cout << "etl: expression table length" << endl;
            cout << "mell: max expression list length" << endl;
            cout << "eltl: expression list table length" << endl;
            cout << "ctl: clause table length" << endl;
            return 0;
        }
        microbenchmark.active = true;
        sscanf(argv[2], "%d", &microbenchmark.repetitions);
        sscanf(argv[3], "%d", &microbenchmark.expr_table_len);
        sscanf(argv[4], "%d", &microbenchmark.max_expr_list_len);
        sscanf(argv[5], "%d", &microbenchmark.expr_list_table_len);
        sscanf(argv[6], "%d", &microbenchmark.clause_table_len);
        verbose_printing = false;
        filename_index = 7;
        first_emp_arg_index = 8;
    } else {
        verbose_printing = false;
        filename_index = 1;
        first_emp_arg_index = 2;
    }

    // -a: specify an address.
    char *address = "127.0.0.1";
    if (strcmp(argv[first_emp_arg_index], "-a") == 0) {
        address = argv[first_emp_arg_index + 1];
        first_emp_arg_index += 2;
    }

    emp_argv = (char**) malloc(sizeof(char*)*3);
    emp_argv[0] = argv[0];
    emp_argv[1] = argv[first_emp_arg_index];
    emp_argv[2] = argv[first_emp_arg_index+1];

    printf("running %s\n", argv[filename_index]);
    if (microbenchmark.active) {
        printf("microbenchmark mode\n");
        printf("%30s : %6d\n", "repetitions", microbenchmark.repetitions);
        printf("%30s : %6d\n", "expr table length", microbenchmark.expr_table_len);
        printf("%30s : %6d\n", "max expr list length", microbenchmark.max_expr_list_len);
        printf("%30s : %6d\n", "expr list table length", microbenchmark.expr_list_table_len);
        printf("%30s : %6d\n", "clause table length", microbenchmark.clause_table_len);
    }

    if (!microbenchmark.active) {
        cout << "---- begin ----" << endl;
    }
    constant = 1UL << (VAL_SZ - 2);
    parse_party_and_port(emp_argv, &party, &port);
    BoolIO <NetIO> *ios[threads];
    for(int i = 0; i < threads; ++i)
		ios[i] = new BoolIO<NetIO>(new NetIO(party == ALICE?nullptr:address,port+i), party==ALICE);

    // Initialize timer after the parties are connected.
    timer_init();

    setup_zk_bool < BoolIO < NetIO >> (ios, threads, party);
    // timer_end_section("setup zk bool");
    ZKBoolCircExec <BoolIO<NetIO>> *exec = (ZKBoolCircExec < BoolIO < NetIO >> *)(CircuitExecution::circ_exec);
    // timer_end_section("constructor ZKBoolCircExec");
    io = exec->ostriple->io;

    ostriple = new F2kOSTriple <BoolIO<NetIO>>(party, exec->ostriple->threads, exec->ostriple->ios,
                                               exec->ostriple->ferret, exec->ostriple->pool);
    // timer_end_section("constructor F2kOSTriple");
    svole = ostriple->svole;

    data_mac_pointer = 0;
    uint64_t test_n = svole->param.n;;
    uint64_t mem_need = svole->byte_memory_need_inplace(test_n);

    data = new block[svole->param.n];
    mac = new block[svole->param.n];
    svole->extend_inplace(data, mac, svole->param.n);
    setup_constant();
    if (!microbenchmark.active) {
        cout << "-- setup --" << endl;
    }
    timer_end_section("setup");

//     GF2X P;
// //    random(P, 128);
//     SetCoeff(P, 128, 1);
//     SetCoeff(P, 7, 1);
//     SetCoeff(P, 2, 1);
//     SetCoeff(P, 1, 1);
//     SetCoeff(P, 0, 1);
//     GF2E::init(P);


    // vector<uint64_t> roots;
	// if(party == ALICE) roots = vector<uint64_t>{1,2,3,4};
    // if(party == BOB) roots = vector<uint64_t>{1,3,5,4};
	// polynomial ptest(roots); 
	// block res, mres;
	// block one = makeBlock(0,2);
	// ptest.Evaluate(res, mres, one); 
	// cout <<(mres)<<endl; 
	// cout <<(res)<<endl;

	// assert_empty(b);

    run_on_file(ios, threads, party, argv[filename_index], microbenchmark);
    check_zero_MAC(zero_block, 1);
    assert_bit(Bit(true, PUBLIC), 1);

    bool cheat = finalize_zk_bool<BoolIO<NetIO>>();
    if(cheat)error("cheat!\n");

    // run_on_file(ios, threads, party, argv[1]);
	// check_zero_MAC(zero_block, 1);

	for(int i = 0; i < threads; ++i) {
        // Causes problems.
		// delete ios[i]->io;
		delete ios[i];
	}
    free(emp_argv);
    timer_end_section("cleanup");
    timer_end_all();
	return 0;
}
