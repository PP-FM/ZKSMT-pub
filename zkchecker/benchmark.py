#!/usr/bin/python3

import sys
import os
from copy import deepcopy
import subprocess

# Set options: limited or not, multi-machine or not.
# Usage: ./benchmark.py [--limited] [-a ADDR PARTY]

has_custom_addr = False
custom_addr = "127.0.0.1"
custom_party = "1"
is_limited = False

first_remote_arg = 1
if len(sys.argv) >= 2 and sys.argv[1] == '--limited':
    first_remote_arg = 2
    is_limited = True

if len(sys.argv) >= first_remote_arg+1 and sys.argv[first_remote_arg] == '-a':
    has_custom_addr = True
    custom_addr = sys.argv[first_remote_arg + 1]
    custom_party = sys.argv[first_remote_arg + 2]

RAW_OUTDIR = "raw_out"
OUTDIR = "out"
PORT = "12345"
# DEFAULT_MICRO_ARGS = [1000, 1000, 100, 1000, 1000]
# XS_PATH = "../../xs_out"

# RESOLUTION_ID = 299
# TYPECHECK_EXPR_ID = 699
# TYPECHECK_EXPR_LIST_ID = 698

# alt_etl = [10000, 100000]
# alt_mell = [1000, 10000]
# alt_eltl = [10000, 100000]
# alt_ctl = [1000, 100000]

normal_tests = [
        "tightrhombus-273-245-0.zksmt",
        "f-cast.zksmt",
        "hole_thin.zksmt",
        "big-f-cast-cnf.zksmt"
        ]

micro_tests = [
        "add_single.zksmt",
        "and_neg.zksmt",
        "and_pos.zksmt",
        "binop_cong.zksmt",
        "consolidate.zksmt",
        "eq_neg1.zksmt",
        "eq_neg2.zksmt",
        "eq_pos1.zksmt",
        "eq_pos2.zksmt",
        "factoring.zksmt",
        "false_neg.zksmt",
        "farkas.zksmt",
        "flatten.zksmt",
        "impl_neg.zksmt",
        "impl_pos1.zksmt",
        "impl_pos2.zksmt",
        "mul_cong.zksmt",
        "mul_single.zksmt",
        "multiply.zksmt",
        "nary_cong.zksmt",
        "not_cong.zksmt",
        "not_pos.zksmt",
        "or_neg.zksmt",
        "or_nil.zksmt",
        "or_pos.zksmt",
        "or_single_rev.zksmt",
        "or_single.zksmt",
        "refl.zksmt",
        "resolution.zksmt",
        "symm.zksmt",
        "total-int.zksmt",
        "total.zksmt",
        "trans.zksmt",
        "trichotomy.zksmt",
        "true_pos.zksm"
        ]

skip_list = [
        "boogie-tests_Test_test2_IfThenElse1.bpl-0.zksmt",
        "boogie-tests_Test_test2_IfThenElse1.bpl-1.zksmt",
        "boogie-tests_Test_test2_IfThenElse1.bpl-2.zksmt",
        "boogie-tests_Test_test2_IfThenElse1.bpl-3.zksmt"
]

# partial_cmd includes the command line EXCEPT party and port.
def run_benchmark(outdir, name, partial_cmd):
    print("running {}".format(name))
    party1_output_fname = "{}/{}_1.out".format(outdir, name)
    party2_output_fname = "{}/{}_2.out".format(outdir, name)

    party1_file = open(party1_output_fname, "w")
    party2_file = open(party2_output_fname, "w")

    party1_args = partial_cmd + ["1", PORT]
    party2_args = partial_cmd + ["2", PORT]

    party1 = subprocess.Popen(party1_args, stdout=party1_file)
    party2 = subprocess.Popen(party2_args, stdout=party2_file)
    party1.wait()
    party2.wait()
    party1_file.close()
    party2_file.close()

# partial_cmd includes the command line EXCEPT party and port.
def run_benchmark2(outdir, outfname, partial_cmd):
    print("running {}".format(outfname))
    if has_custom_addr:
        party_output_fname = "{}/{}/{}_{}.out".format(RAW_OUTDIR, outdir, outfname,
                custom_party)

        party_file = open(party_output_fname, "w")

        party_args = partial_cmd + ["-a", custom_addr, custom_party, PORT]

        party = subprocess.Popen(party_args, stdout=party_file)

        party.wait()

        party_file.close()
    else:
        party1_output_fname = "{}/{}/{}_1.out".format(RAW_OUTDIR, outdir, outfname)
        party2_output_fname = "{}/{}/{}_2.out".format(RAW_OUTDIR, outdir, outfname)

        party1_file = open(party1_output_fname, "w")
        party2_file = open(party2_output_fname, "w")

        party1_args = partial_cmd + ["1", PORT]
        party2_args = partial_cmd + ["2", PORT]

        party1 = subprocess.Popen(party1_args, stdout=party1_file)
        party2 = subprocess.Popen(party2_args, stdout=party2_file)
        party1.wait()
        party2.wait()
        party1_file.close()
        party2_file.close()

# used as input to run_benchmark
def micro_out_fname(rule, reps, etl, mell, eltl, ctl):
    rule_non_zksmt = rule[:-len(".zksmt")]
    s = "{}_{}_{}_{}_{}_{}".format(rule_non_zksmt, reps,
            etl, mell, eltl, ctl)
    return s

# the final path to load
def micro_out_path(rule, reps, etl, mell, eltl, ctl):
    s = micro_out_fname(rule, reps, etl, mell, eltl, ctl)
    return "{}/{}/{}_1.out".format(RAW_OUTDIR, "microbenchmark", s)

def run_micro2(rule_zksmt, reps, etl, mell, eltl, ctl):
    outfname = micro_out_fname(rule_zksmt, reps, etl, mell, eltl, ctl)
    partial_cmd = ["./zkchecker", "-m", str(reps), str(etl),
            str(mell),
            str(eltl),
            str(ctl),
            "../microbenchmark/{}".format(rule_zksmt)
            ]

    run_benchmark2("microbenchmark", outfname, partial_cmd)

def micro_partial_cmd(micro_args, name):
    fname = "../microbenchmark/{}".format(name)
    micro_args = [str(n) for n in micro_args]
    partial_cmd = ["./zkchecker", "-m"] + micro_args + [fname]
    return partial_cmd

# # run a microbenchmark with one parameter modified
# def run_alt_micro(rule_name, parameter_vals, parameter_idx, parameter_name):
#     rule_fname = "{}.zksmt".format(rule_name)
#     for alt_val in parameter_vals:
#         args = deepcopy(DEFAULT_MICRO_ARGS)
#         args[parameter_idx] = alt_val
#         partial_cmd = micro_partial_cmd(args, rule_fname)
# 
#         name = "{}_{}_{}".format(rule_name, parameter_name, alt_val)
#         run_benchmark(OUTDIR, name, partial_cmd)
# 
# # Run a specific rule with a variety of table sizes
# def scale_benchmark(name):
#     fname = "{}.zksmt".format(name)
#     partial_cmd = micro_partial_cmd(deepcopy(DEFAULT_MICRO_ARGS), fname)
#     run_benchmark(OUTDIR, name, partial_cmd)
# 
#     run_alt_micro(name, alt_etl, 1, "etl")
#     run_alt_micro(name, alt_mell, 2, "mell")
#     run_alt_micro(name, alt_eltl, 3, "eltl")
#     run_alt_micro(name, alt_ctl, 4, "ctl")
# 
# # Take the output of a single normal test and print it to out_file
# # as a single column row in the format:
# # | name | setup | load proof | ... | total |
# def consolidate_test(print_name, fname, out_file):
#     string = ""
#     try:
#         print(fname)
#         with open(fname) as f:
#             lines = []
#             for line in f.readlines():
#                 lines += [line]
# 
#             times = [
#                     lines[3].split(':')[1].strip()[:-4],
#                     lines[5].split(':')[1].strip()[:-4],
#                     lines[6].split(':')[1].strip()[:-4],
#                     lines[7].split(':')[1].strip()[:-4],
#                     lines[8].split(':')[1].strip()[:-4],
#                     lines[9].split(':')[1].strip()[:-4],
#                     lines[10].split(':')[1].strip()[:-4],
#                     lines[11].split(':')[1].strip()[:-4],
#                     lines[13].split(':')[1].strip()[:-4],
#                     lines[14].split(':')[1].strip()[:-4],
#                     lines[15].split(':')[1].strip()[:-4],
#                     lines[16].split(':')[1].strip()[:-4]
#                     ]
#             times = ["{:>9}".format(t) for t in times]
#             time_str = " | ".join(times)
#             column_str = "| {:15} | {} |\n".format(print_name, time_str)
# 
#             out_file.write(column_str)
#     except:
#         out_file.write("{} failed\n".format(fname))
# 
# # turn normal benchmarks into a column format
# def consolidate_test_list(test_dir):
#     with open("column_out.txt", "w") as f:
#         for test in os.listdir(test_dir):
#             prefix = "boogie-tests_Test_"
#             suffix = ".zksmt_1.out"
#             name = test[len(prefix):-len(suffix)][:15]
#             fname = "{}/{}".format(test_dir, test)
# 
#             consolidate_test(name, fname, f)
# 
# # Run some normal tests
# def normal_test_benchmark(test_list):
#     for test_name in test_list:
#         fname = "../zkchecker/{}".format(test_name)
#         partial_cmd = ["./zkchecker", fname]
#         run_benchmark(RAW_OUTDIR, test_name, partial_cmd)
# 
# # Run all rules with the default args
# def microbenchmark(micro_tests):
#     for test_name in micro_tests:
#         partial_cmd = micro_partial_cmd(DEFAULT_MICRO_ARGS, test_name)
#         run_benchmark(test_name, partial_cmd)

# Take a file name <fname>.zksmt in ../benchmark
# Run it and save it to RAW_OUTDIR/benchmark/<fname>_1.out (and _2.out)
def run_normal_benchmark(fname):
    path = "../benchmark/{}".format(fname)
    partial_cmd = ["./zkchecker", path]
    name = fname[:-len(".zksmt")]
    run_benchmark2("benchmark", name, partial_cmd)

# Take a file name <fname>.zksmt in ../benchmark_wsa
# Run it and save it to RAW_OUTDIR/benchmark/<fname>_1.out (and _2.out)
def run_wsa_benchmark(fname):
    path = "../benchmark_wsa/{}".format(fname)
    partial_cmd = ["./zkchecker", path]
    name = fname[:-len(".zksmt")]
    run_benchmark2("benchmark", name, partial_cmd)

wisa_skip_list = [
        "xs_10_20.zksmt",
        "xs_12_22.zksmt"
        ]

big_benchmarks = [
        'xs_11_21.zksmt',
        ]

# update all raw normal benchmarks
def raw_normal_benchmarks():
    # cmd = "rm {}/benchmark/*".format(RAW_OUTDIR)
    # os.system(cmd)

    files = os.listdir("../benchmark")
    files.sort()
    files_small = [f for f in files if not f in big_benchmarks]
    files_big = [f for f in files if f in big_benchmarks]
    files = files_small + files_big
    for i, fname in enumerate(files):
        print("normal benchmark {}/{}: {}".format(i+1, len(files), fname))
        run_normal_benchmark(fname)

# update all WiSA benchmarks
def raw_wisa_benchmarks():
    # cmd = "rm {}/benchmark/*".format(RAW_OUTDIR)
    # os.system(cmd)

    files = os.listdir("../benchmark_wsa")
    files.sort()
    files = [f for f in files if not f in wisa_skip_list]
    files_small = [f for f in files if not f in big_benchmarks]
    files_big = [f for f in files if f in big_benchmarks]
    files = files_small + files_big
    for i, fname in enumerate(files):
        print("WiSA benchmark {}/{}: {}".format(i+1, len(files), fname))
        run_wsa_benchmark(fname)

def idx_list_of_total_idx(total_idx, jagged_list):
    len_list = [len(i) for i in jagged_list]
    answer = []
    count = total_idx
    for i, l in enumerate(len_list):
        answer += [jagged_list[i][count % l]]
        count = count // l
    return answer

def product(int_list):
    answer = 1
    for i in int_list:
        answer *= i
    return answer

# input: jagged list of lists
# output: parallel list of lists made by iterating over all
# ex in: [[4, 5], [6, 7, 8]]
# ex out: [[4, 6], [5, 6], [4, 7], [5, 7], [4, 8], [5, 8]]
def iterate_list(jagged_list):
    len_list = [len(i) for i in jagged_list]
    total_len = product(len_list)
    answer = []
    for i in range(total_len):
        answer += [idx_list_of_total_idx(i, jagged_list)]
    return answer

# run a collection of microbenchmarks on several combos of rules
def run_rule_collection(rule, reps, etl, mell, eltl, ctl):
    list_of_runs = iterate_list(
            [rule, reps, etl, mell, eltl, ctl])
    for run in list_of_runs:
        run_micro2(
                run[0],
                run[1],
                run[2],
                run[3],
                run[4],
                run[5])

# # run on a specific rule for a collection of times
etl_list_mini = [20, 30, 40, 50, 60, 70, 80, 90, 100]
# etl_list = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]
# for i in etl_list_mini:
#     run_micro2("consolidate.zksmt", 1000, i, 10, 10, 10)
#     run_micro2("consolidate.zksmt", 1000, i, 30, 10, 10)

total_times = {}

rule_names = [
        'resolution.zksmt',
        'consolidate.zksmt',
        'farkas.zksmt',
        'flatten.zksmt'
        ]

# Run a few iterations of the first test to ensure any network issues are resolved
def run_warmup():
    print("Warm-up tests (may fail when run on multi-machines)")
    run_rule_collection(['resolution.zksmt'], [1000], [100], [5], [100], [10])
    run_rule_collection(['resolution.zksmt'], [1000], [100], [5], [100], [10])
    run_rule_collection(['resolution.zksmt'], [1000], [100], [5], [100], [10])
    run_rule_collection(['resolution.zksmt'], [1000], [100], [5], [100], [10])
    print("End warm-up tests")

# run microbenchmarks
def run_microbreakdown():
    run_rule_collection(
            rule_names,
            [1000],
            [100],
            [5, 21],
            [100],
            [10])

# run microbenchmarks: table size variation
def run_table_size():
    for i in [1000, 1250, 1500, 1750, 2000, 2250, 2500, 2750, 3000,
    3250, 3500, 3750, 4000
    ]:
        run_rule_collection(
                rule_names,
                [10000],
                [i],
                [10],
                [1000],
                [10]
                )
#        run_rule_collection(
#                rule_names,
#                [10000],
#                [i],
#                [10],
#                [1000],
#                [10]
#                )
#     run_rule_collection(
#             rule_names,
#             [10000],
#             [100],
#             [10],
#             [100],
#             [10]
#             )
#     run_rule_collection(
#             rule_names,
#             [10000],
#             [200],
#             [10],
#             [200],
#             [10]
#             )
#     run_rule_collection(
#             rule_names,
#             [10000],
#             [300],
#             [10],
#             [300],
#             [10]
#             )
#     run_rule_collection(
#             rule_names,
#             [10000],
#             [400],
#             [10],
#             [400],
#             [10]
#             )

# run microbenchmarks: list size version
def run_list_size():
    run_rule_collection(
            rule_names,
            [1000],
            [100],
            [10, 20, 30, 40, 50],
            [100],
            [10]
            )

def run_rule_breakdown():
    test_names = [
        "boogie-tests_Test_lock_Lock.bpl-2.zksmt",
        "boogie-tests_Test_houdini_mergedProgSingle_res_ex1.bpl-5.zksmt",
        "boogie-tests_Test_textbook_McCarthy-91.bpl-0.zksmt"
    ]

    for test_name in test_names:
        run_normal_benchmark(test_name)

# Main function

if __name__ == "__main__":
    # Ensure program is built & output directories are made
    subprocess.call("cmake .", shell=True)
    subprocess.call("make -j4", shell=True)
    subprocess.call("mkdir -p raw_out/benchmark", shell=True)
    subprocess.call("mkdir -p raw_out/microbenchmark", shell=True)

    run_warmup()
    run_microbreakdown()
    run_table_size()
    run_list_size()
    run_rule_breakdown()
    raw_normal_benchmarks()
    if not is_limited:
        raw_wisa_benchmarks()

