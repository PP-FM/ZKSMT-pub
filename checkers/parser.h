#ifndef PARSER_H
#define PARSER_H

#include <stdio.h>
#include "table.h"

void print_expr(FILE *file, Expr *expr, Proof *proof);
void print_step_clause(FILE *file, int clause_idx, int step_idx, Proof *proof);
void print_premise_clause(FILE *file, int clause_idx, Proof *proof);
void print_proof(FILE *file, Proof *proof);
Proof load_proof(const char *filename, bool *success);

#endif // PARSER_H
