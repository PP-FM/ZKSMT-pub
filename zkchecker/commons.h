#pragma once;
#include "emp-zk/emp-zk.h"
#include "emp-zk/extensions/ram-zk/ostriple.h"
#include <NTL/GF2EX.h>
#include <NTL/GF2E.h>
#include <NTL/GF2EXFactoring.h>
#include "emp-zk/emp-vole-f2k/base_svole.h"

#define DEFAULT ((uint64_t)1) << 31

extern int DEGREE;
extern SVoleF2k<BoolIO<NetIO>> *svole;
extern F2kOSTriple<BoolIO<NetIO>>* ostriple;
extern BoolIO<NetIO>* io;
extern uint64_t constant;
extern block *data;
extern block *mac;
extern uint64_t data_mac_pointer;

extern bool verbose_printing;

extern  Integer ZOR; 
extern  Integer ZAPPLY; 
extern  Integer ZVAR; 
extern  Integer ZEQ;
extern  Integer ZAND;
extern  Integer ZNODE_TRUE;
extern  Integer ZNODE_FALSE;
extern  Integer ZXOR;
extern  Integer ZIMPLIES;

extern  Integer ZITE;
extern  Integer ZNOT;
extern  Integer ZNAPPLY;
extern  Integer ZTERM;
extern  Integer ZADD;
extern  Integer ZMUL;
extern  Integer ZLEQ;
extern  Integer ZGEQ;
extern  Integer ZLT;
extern  Integer ZGT;

extern  Integer ZNODE_DEFAULT;

// Used to coordinate timing each array.
extern uint64_t current_rule;
