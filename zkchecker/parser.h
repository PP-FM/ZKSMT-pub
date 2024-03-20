#ifndef PARSER_H
#define PARSER_H

#include <stdio.h>
#include "microbenchmark.h"
#include "table.h"

// void print_expr(FILE *file, Expr *expr, Proof *proof);
// void print_step_clause(FILE *file, int clause_idx, int step_idx, Proof *proof);
// void print_premise_clause(FILE *file, int clause_idx, Proof *proof);
// void print_proof(FILE *file, Proof *proof);
ZProof load_proof(int party, const char *filename, bool *success,
        microbenchmark_t microbenchmark);

#endif // PARSER_H
