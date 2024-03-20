#pragma once

#include "table.h"

void run_on_file(BoolIO<NetIO> **ios, int threads, int party, const char *filename,
        microbenchmark_t microbenchmark);
