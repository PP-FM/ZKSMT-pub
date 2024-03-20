# Compiler

A program which converts proofs output from SMTInterpol to a format parseable by the plaintext and zero knowledge checkers. Also includes an older pipeline for converting proofs from LFSC produced by cvc5.

A subset of the core, UF, and LIA logics is supported.

Test cases include tests from SMTCoq and SMTInterpol.

## Building and running

Requires OCaml and the following packages installed through opam, the OCaml package manager: `dune`, `ppx_deriving`, `menhir`.

See [here](https://opam.ocaml.org/doc/Install.html) to install opam. On a fresh Ubuntu machine:

```
sudo apt-get update          
sudo apt-get install -y opam

opam init

# Only adds opam to $PATH in the current shell
eval $(opam env --switch=default)                                

opam install dune ppx_deriving menhir        
```

Build with `dune build`.

Run on a file with `dune exe -- ./driver.exe --res --res-cpp <filename>`. Sample input files can be found in the `test_res/` directory.

The compiler may not work directly with the outputs of SMTInterpol, as it only supports one proof at a time. In particular, it expects input files to be consist of `unsat` followed by a single proof.

`run_test.py` runs a regression test on the provided test files.

## Test files

Test proofs pretty printed at various stages in the compiler can be found in `test_*` directories. The directories from the current SMTInterpol pipeline are:

* `test_smt2/`: Original SMT-LIB2 scripts. May not directly work with SMTInterpol.
* `test_res/`: Snippets of SMTInterpol output. **Input files to the compiler**.
* `test_res_list/`: Early stage of the parser. Essentially a cleaned-up version of the RESOLUTE format.
* `test_ir/`: Middle stage of the compiler. Proof steps have a 1-1 relationship with the final output, but are more readable.
* `test_table_cpp_res/`: Output of the compiler. A less-human-readable text file of integers encoding a `Proof` or `ZProof` object in the checker. **This is the format that the checker and zkchecker can parse.**
