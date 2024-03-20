#pragma once;

// Define a struct containing configuration for microbenchmarking mode.

typedef struct microbenchmark {
    bool active;
    int repetitions;
    int expr_table_len;
    int max_expr_list_len;
    int expr_list_table_len;
    int clause_table_len;
} microbenchmark_t;
