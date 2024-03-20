#!/usr/bin/env python3

# temporary, for discovering RESOLUTE rule counts

import os

dirpath = '../benchmark_setup/intermediate/parser_input'

a = os.listdir(dirpath)
a.sort()

for fname in a:
    print(fname)
    cmd = "dune exe -- ./driver.exe --res {}/{} > /dev/null".format(dirpath, fname)
    os.system(cmd)
