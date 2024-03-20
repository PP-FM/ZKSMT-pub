#!/usr/bin/python3

"""
Create proof files for larger WiSA tests using the compiler.

Currently assumes RESOLUTE files have already been created using SMTInterpol
and modified into a format suitable for the compiler.

Tests taken from the SMT-LIB benchmarks repository:
https://clc-gitlab.cs.uiowa.edu:2443/SMT-LIB-benchmarks/QF_UFLIA/-/tree/master/wisas

Wisconsin Safety Analyzer (WiSA) benchmarks translated to SMT format by Hossein Sheini
https://research.cs.wisc.edu/wisa/
"""

import os

test_filenames = os.listdir('wsa_res')

print("Building compiler...")
os.system("cd ../compiler; dune build")
print("Compiler built.")

for fname in test_filenames:
    print(fname)
    cmd = \
            "cd ../compiler; _build/default/driver.exe --res --res-cpp ../benchmark_setup/wsa_res/{} > ../benchmark_wsa/{}.zksmt".format(
                    fname, fname[:-len(".resolute")])
    os.system(cmd)

