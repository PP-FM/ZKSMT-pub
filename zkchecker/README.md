# zkchecker

A Zero Knowledge checker for SMT proofs of unsatisfiability.

## Installing dependencies and building

Depends on [emp-zk](https://github.com/emp-toolkit/emp-zk), as well as CMake and g++. Scripts generating plots of data require matplotlib and (optionally) certain fonts.

See the Dockerfile in the main directory for how to install all dependencies on Ubuntu, or use the Docker image directly.

Build using CMake:

```
cmake .
# use `make -j4` to speed up compilation
make 
```

## Running

Two instances of `zkchecker` must be run simultaneously, with one functioning as the prover and one as the verifier.

To run a basic test, such as the provided `uf7.zksmt`, run these two commands in separate terminals:

```
./zkchecker ../test/uf7.zksmt 1 12345
./zkchecker ../test/uf7.zksmt 2 12345
```

Here, `../test/uf7.zksmt` is the path to the proof to be checked, `1` or `2` indicates whether the program is the prover or verifier, and `12345` is the port number (which can be any valid port).

By default `zkchecker` connects within its local machine. Use `-a` to connect to another machine. To run the same test file between machines with IP addresses `x.x.x.1` and `x.x.x.2`:

```
# Run on x.x.x.1
./zkchecker ../test/uf7.zksmt -a x.x.x.2 1 12345

# Run on x.x.x.2
./zkchecker ../test/uf7.zksmt -a x.x.x.1 2 12345
```

`zkchecker` can also use `-m` to run a single rule a fixed number of times with custom table sizes, in order to see the running time of various rules. `-m` takes 5 integer arguments and proof files beginning with the desired rule; `ZKSMt/microbenchmarks` has specially generated proof files for all rules. Example usage:

```
microbenchmarks usage: -m <r> <etl> <mell> <eltl> <ctl>
r: repetitions
etl: expression table length
mell: max expression list length
eltl: expression list table length
ctl: clause table length (number of proof steps)

# Run the resolution rule with 1000 repetitions, expr table of length 100 with
# max list length 5, expr list table length 100, and clause table length 10:
./zkchecker -m 1000 100 5 100 10 ../microbenchmark/resolution.zksmt 1 12345
./zkchecker -m 1000 100 5 100 10 ../microbenchmark/resolution.zksmt 2 12345
```

## Scripts

There are two scripts: `benchmark.py`, to run all main benchmarks, output in `raw_out`, and `plot.py`, to turn output in `raw_out` into plots in `out`. `benchmarks.py` can be run locally (and will take care of generating `zkchecker` for party 1 and 2) or on multiple machines. `plot.py` only works on the output produced by party 1. `benchmarks.py` can also take a `--limited` argument to avoid running the larger WiSA benchmarks.

Example usage:

```
# locally
./benchmark.py

# multi-machine
./benchmark.py -a x.x.x.2 1 # Run on x.x.x.1
./benchmark.py -a x.x.x.1 2 # Run on x.x.x.2

# plotting
./plot.py
```
