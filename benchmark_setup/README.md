# Benchmark Setup

Scripts to setup the main benchmarks used, including running SMTInterpol,
formatting the results, and running the compiler. The results of this are
already included in the repository.

`setup_test.py` creates the Boogie benchmarks. It runs the SMTInterpol solver on the original SMT files. A path to the SMTInterpol solver,
downloaded as a jar file, should be provided as a command line argument.
SMTInterpol is available as a jar file [here](https://ultimate.informatik.uni-freiburg.de/smtinterpol/download.html).

`setup_wsa.py` creates the WiSA benchmarks. It does not run the SMTInterpol solver; outputs from a run are included in `wsa_res`.
