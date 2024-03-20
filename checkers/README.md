# Plaintext Checker

A plaintext version of the zero knowledge checker.

```
make                    # build checker
./checker <filename>    # run checker on a given file
./checker -p <filename> # parse & pretty print a given file

# one example test (relative path from ZKSMT/checkers directory)
./checker ../compiler/test_table_cpp_res/uf7.cpp.txt
```

## Building the Checker

The checker has no dependencies other than Make and g++. Examine the Makefile to see the compilation command.

## Running the Checker

See the commands above. Files used with the checker should be a sequence of whitespace separated integers encoding a `Proof` object, able to be parsed by `parser.cpp`. The `ZKSMT/test` directory contains test cases of these kinds of files. The original SMT-LIB2 formulas for these test cases can be seen in `ZKSMT/compiler/test_smt2`.
