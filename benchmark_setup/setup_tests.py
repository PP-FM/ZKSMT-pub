#! /usr/bin/env python3

from multiprocessing import Pool
import os

"""
Creates proof files parseable by the plaintext & zk checkers from benchmarks.

Takes 1 command line argument: the path to an executable jar file of SMTInterpol.

Should be run in ZKSMT/benchmark_setup (the directory this file is located)

Requires compiler to build using dune & ocaml.

Only tested on Linux machines.

Checker-parseable output will be located in `ZKSMT/benchmark_setup/checker_input`.

Intermediate forms of transformation will be output in
`ZKSMT/benchmark/`.

Some benchmarks will fail at some point. Failed benchmarks should not produce
output in `ZKSMT/benchmark`.

To best understand this script, read the `convert` function, which does all the
necessary transformations for a single file.
"""

import subprocess
import sys

# Get the SMTInterpol jar file from the command line
assert len(sys.argv) == 2, "Expected usage: " + sys.argv[0] + " [SMTInterpol jar file]"
smtinterpol_jar = sys.argv[1]

# Commands to set SMT-LIB2 options to produce proofs & set logic.
# double escape needed for use in sed scripts
QF_UFLIA_SET_DOUBLE_ESCAPE = \
    """(set-option :produce-proofs true)\\n(set-option :proof-level lowlevel)\\n(set-logic QF_UFLIA)"""

QF_UFLIA_SET = \
    """(set-option :produce-proofs true)\n(set-option :proof-level lowlevel)\n(set-logic QF_UFLIA)"""

QF_LIA_SET_DOUBLE_ESCAPE = \
    """(set-option :produce-proofs true)\\n(set-option :proof-level lowlevel)\\n(set-logic QF_LIA)"""

QF_LIA_SET = \
    """(set-option :produce-proofs true)\n(set-option :proof-level lowlevel)\n(set-logic QF_LIA)"""

# All benchmark files with useable logics.
# Arrays created by grep, copy, paste & vim.
qf_uflia_fnames = [
    "boogie-tests/Test/test2/Call.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/IfThenElse1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test21/FunAxioms2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test21/Casts.bpl.smt-tagged.smt2",
    "boogie-tests/Test/datatypes/ex.bpl.smt-tagged.smt2",
    "boogie-tests/Test/datatypes/t1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/datatypes/t2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/test4.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/issue110.bpl.smt-tagged.smt2",
    "boogie-tests/Test/lock/Lock.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test16/LoopUnroll.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/NullInModel.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/ModelTest.bpl.smt-tagged.smt2"
]

qf_lia_fnames = [
    "boogie-tests/Test/floats/BasicOperatorsWithTypeConv.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/BasicOperators4.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/CastToLowerPrec.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/BasicOperators2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/BasicOperators3.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/EvaluateSignBit.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/RoundingMode2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/ConstSyntax2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/RoundingMode1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/Havoc.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/Equal1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/TypeConvConst.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/CorrectTypeConv.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/RoundoffError.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/Equal2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/floats/BasicOperators1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/stackoverflow/nesting.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/detLoopExtract.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots15.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots22.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots11.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots19.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots28.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots39.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots8.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots32.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots34.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots1.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots9.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots6.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots32.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots24.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots12.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots2.v3.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots40.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots33.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots31.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots0.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots20.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots19.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots35.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots2.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots24.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots13.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots10.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots35.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots14.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots3.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots28.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots38.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots38.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots7.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots41.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots27.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots15.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots20.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots9.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots33.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots25.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots29.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots2.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots12.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots18.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots18.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots1.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots21.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots40.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots40.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots30.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots17.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots30.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots0.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots13.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots3.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots4.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots17.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots29.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots26.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots7.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots2.v4.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots10.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots23.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots8.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots26.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots2.v5.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots39.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots34.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots4.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots0.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots11.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots21.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots14.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots39.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots1.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots27.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots25.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots38.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots6.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots41.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots31.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots2.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots23.v2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/t2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/detLoopExtract2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/detLoopExtract1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/detLoopExtractNested.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots22.v1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/snapshots/Snapshots23.v0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/t1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_one.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/xml.bpl.smt-tagged.smt2",
    "boogie-tests/Test/extractloops/t3.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_unusual_identifiers.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/ContractEvaluationOrder.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/FormulaTerm2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/AssertVerifiedUnder0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/SelectiveChecking.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/BadLineNumber.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/RandomSeed.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/InvariantVerifiedUnder0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/LoopInvAssume.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/Where.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/FormulaTerm.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/AssumptionVariables0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/CutBackEdge.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/CallVerifiedUnder0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/noProc.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/False.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test2/AssumeEnsures.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_two.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_two_asterisk_wildcard_begin.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_two_asterisk_wildcard_end.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/RandomSeedIterations.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_four_asterisk_wildcard.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_two_asterisk_wildcard_inbetween.bpl.smt-tagged.smt2",
    "boogie-tests/Test/functiondefine/fundef2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/functiondefine/fundef.bpl.smt-tagged.smt2",
    "boogie-tests/Test/functiondefine/fundef1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test0/ErrorLimit.bpl.smt-tagged.smt2",
    "boogie-tests/Test/prover/issue-322.2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/commandline/multiple_procs_verify_one_request_twice.bpl.smt-tagged.smt2",
    "boogie-tests/Test/functiondefine/fundef5.bpl.smt-tagged.smt2",
    "boogie-tests/Test/prover/z3mutl.bpl.smt-tagged.smt2",
    "boogie-tests/Test/prover/issue-322.1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/prover/usedot.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test0/MaxSplits.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test0/AlwaysAssume.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test0/EmptyCallArgs.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/SameModesEqual.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test21/LargeLiterals0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test21/NameClash.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/FloatOpsFixedMode.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/FloatOperators2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test21/LetSorting.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test0/Quoting.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/UnaffectedOperators.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/FullNameAcronymEquivalence.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/FloatOperators1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/CorrectTypeConv.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/VariableAssign.bpl.smt-tagged.smt2",
    "boogie-tests/Test/bitvectors/bv10.bpl.smt-tagged.smt2",
    "boogie-tests/Test/bitvectors/bv1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/bitvectors/bv8.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/mergedProgSingle_res_ex1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/test7.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd9.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/test10.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/test1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd12.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/mergedProgSingle_res_ex2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd11.bpl.smt-tagged.smt2",
    "boogie-tests/Test/roundingmodes/DiffModesNotEqual.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/test8.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/test2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd10.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/deterministic.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/test9.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/testUnsatCore.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd3.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd7.bpl.smt-tagged.smt2",
    "boogie-tests/Test/unnecessaryassumes/unnecessaryassumes1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/smoke/smoke0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/InliningAndLoops.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/test1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/inline_n_0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/fundef2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/test3.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/test2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/inline/test6.bpl.smt-tagged.smt2",
    "boogie-tests/Test/strings/BasicOperators.bpl.smt-tagged.smt2",
    "boogie-tests/Test/strings/BasicRegExOperators.bpl.smt-tagged.smt2",
    "boogie-tests/Test/strings/Literals.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest9/VarMapFixpoint.bpl.smt-tagged.smt2",
    "boogie-tests/Test/textbook/McCarthy-91.bpl.smt-tagged.smt2",
    "boogie-tests/Test/houdini/houd8.bpl.smt-tagged.smt2",
    "boogie-tests/Test/pruning/NormaliseDeclarationOrder.bpl.smt-tagged.smt2",
    "boogie-tests/Test/pruning/IncludeDep.bpl.smt-tagged.smt2",
    "boogie-tests/Test/optimization/Optimization0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/symdiff/foo.bpl.smt-tagged.smt2",
    "boogie-tests/Test/pruning/Noop.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear0.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear6.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear7.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/ineq.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear8.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear2.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear3.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear4.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Bound.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear9.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest1/Linear5.bpl.smt-tagged.smt2",
    "boogie-tests/Test/lock/LockIncorrect.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test13/ErrorTraceTestLoopInvViolationBPL.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test13/ManyErrors.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test13/msg.bpl.smt-tagged.smt2",
    "boogie-tests/Test/sequences/intseq.bpl.smt-tagged.smt2",
    "boogie-tests/Test/sequences/intseq_datatype.bpl.smt-tagged.smt2",
    "boogie-tests/Test/aitest0/constants.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/CaptureInlineUnroll.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/MoreCapturedStates.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/trace1.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/IntInModel.bpl.smt-tagged.smt2",
    "boogie-tests/Test/test15/trace0.bpl.smt-tagged.smt2",
]

# Goes character by character through a string and replaces '/' with '_'
def replace_backslash(s):
    answer = ""
    for c in list(s):
        if c == '/':
            answer = answer + '_'
        else:
            answer = answer + c
    return answer

# Convert smt script to smt script useable by SMTInterpol
def massage(in_fname, out_fname, backslash_fname, add_logic, add_logic_double_escape):
    # we actually want the untagged version of the smt2 file.
    # replace *.smt-tagged.smt2 with *.smt2
    root_fname = in_fname[:-16]
    orig_fname = root_fname + ".smt"
    final_fname = root_fname + ".mod.smt2"

    tmp1 = "temp1_{}".format(backslash_fname)
    tmp2 = "temp2_{}".format(backslash_fname)

    # insert the logic at the beginning of the file
    # https://unix.stackexchange.com/questions/281492/how-to-add-a-new-text-line-at-the-first-line-of-a-file
    cmd = "echo '{}' | cat - {} > {}".format(add_logic, in_fname, tmp1)
    subprocess.call(cmd, shell=True)

    # insert the logic after every (reset) command
    cmd = "sed 's/(reset)/(reset)\\n{}/' {} > {}".format(
        add_logic_double_escape, tmp1, tmp2)
    subprocess.call(cmd, shell=True)

    # insert a (get-proof) after every (check-sat) command
    cmd = "sed 's/(check-sat)/(check-sat)\\n(get-proof)/' {} > {}".format(
        tmp2, out_fname
    )
    subprocess.call(cmd, shell=True)

    # remove temporary files
    cmd = "rm {}".format(tmp1)
    subprocess.call(cmd, shell=True)
    cmd = "rm {}".format(tmp2)
    subprocess.call(cmd, shell=True)

def run_smtinterpol(in_fname, out_fname):
    cmd = "java -jar {} {} > {} 2> /dev/null".format(smtinterpol_jar, in_fname, out_fname)
    subprocess.call(cmd, shell=True)

# Extract 0+ proofs from SMTInterpol output.
# Returns the number of proofs extracted.
def extract_proof(in_fname, out_fname_template):
    file1 = open(in_fname, 'r')
    lines = file1.readlines()

    count = 0

    for i, line in enumerate(lines):
        if line == "unsat\n":
            out_fname = out_fname_template + "-" + str(count) + ".resolute"
            with open(out_fname, 'w') as out_file:
                out_file.write("unsat\n")
                out_file.write(lines[i+1])
                out_file.write("\n")
            count += 1
    return count

# All the steps needed for a single file.
def convert(fname, set_logic, set_logic_double_escape):
    # setup all the filenames
    root_fname = fname[:-16]
    root_shallow_fname = replace_backslash(root_fname)
    orig_fname = root_fname + ".smt"
    mod_fname = "intermediate/mod_smt2/" + root_shallow_fname + ".mod.smt2"
    resolute_fname = "intermediate/resolute/" + root_shallow_fname + ".resolute"
    parser_input_fname_template = "intermediate/parser_input/" + root_shallow_fname

    # convert smt script to smt script useable by SMTInterpol
    massage(orig_fname, mod_fname, root_shallow_fname, set_logic, set_logic_double_escape)

    # run smt script through SMTInterpol
    run_smtinterpol(mod_fname, resolute_fname)

    # extract proofs from SMTInterpol output
    count = extract_proof(resolute_fname, parser_input_fname_template)

    # run proofs through parser
    for c in range(count):
        cd_cmd = "cd ../compiler"
        dune_stub_cmd = "_build/default/driver.exe --res --res-cpp"
        cmd_fname_root = "../benchmark_setup"
        out_fname = "../benchmark/{}-{}.zksmt".format(
            root_shallow_fname, str(c))

        cmd = "{}; {} {}/{}-{}.resolute > {}".format(
            cd_cmd, dune_stub_cmd, cmd_fname_root,
            parser_input_fname_template, str(c), out_fname)
        subprocess.call(cmd, shell=True)

def run_on_qf_uflia(fname):
    print(fname)
    convert(fname, QF_UFLIA_SET, QF_UFLIA_SET_DOUBLE_ESCAPE)

# The tests marked QF_LIA seem to require some UF features, so we just mark them
# QF_UFLIA anyway.
def run_on_qf_lia(fname):
    print(fname)
    convert(fname, QF_LIA_SET, QF_LIA_SET_DOUBLE_ESCAPE)

# Ensure dune is built
subprocess.call("cd ../compiler; dune build", shell=True)

# experimental to parallelize
# # Run the tasks in parallel using all cores.
# with Pool(os.cpu_count()) as p:
#     # p.map(run_on_qf_uflia, qf_uflia_fnames)
#     p.map(run_on_qf_lia, qf_lia_fnames)

# Actually run the conversion on all files.
for fname in qf_uflia_fnames:
    print(fname)
    convert(fname, QF_UFLIA_SET, QF_UFLIA_SET_DOUBLE_ESCAPE)

# The tests marked QF_LIA seem to require some UF features, so we just mark them
# QF_UFLIA anyway.
for fname in qf_lia_fnames:
    print(fname)
    convert(fname, QF_UFLIA_SET, QF_UFLIA_SET_DOUBLE_ESCAPE)

# Remove benchmarks with errors from final set.

# Well formed outputs have a list of numbers as their first line.
# Do some parsing that causes ill-formed outputs to throw an exception.
# Use this to determine if an output failed.
def no_errors(fname):
    with open("../benchmark/{}".format(fname), "r") as f:
        try:
            first_line = f.readlines()[0]
            num_strs = first_line.split(' ')
            nums = [int(x) for x in num_strs]
            # print(nums)
            return True
        except:
            print("benchmark failed, removing...")
            return False

benchmark_fname_list = os.listdir('../benchmark')
for fname in benchmark_fname_list:
    if not no_errors(fname):
        cmd = "rm ../benchmark/{}".format(fname)
        subprocess.call(cmd, shell=True)
