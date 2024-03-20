#!/usr/bin/python3

# Set current program as baseline for regression testing

import os

print("initializing...")

# old lfsc version
# test_filenames = os.listdir('test_lfsc')
# # strip .lfsc suffix from all
# test_filenames = [x[0:-5] for x in test_filenames]
#
# print("building...")
# os.system("dune build")
#
# print("creating new test files...")
# for fname in test_filenames:
#     cmd = "dune exe -- ./driver.exe test_lfsc/{}.lfsc > test_table_ml/{}.txt".format(fname, fname)
#     os.system(cmd)
#
#     cmd = "dune exe -- ./driver.exe --ir test_lfsc/{}.lfsc > test_ir/{}.txt".format(fname, fname)
#     os.system(cmd)
#
#     cmd = "dune exe -- ./driver.exe test_lfsc/{}.lfsc > test_table_cpp/{}.cpp.txt".format(fname, fname)
#     os.system(cmd)

test_res_filenames = os.listdir('test_res')

# # temporary
# test_res_filenames = [
#         "xs_10_20.smt2.resolute",
#         "xs_13_23.smt2.resolute",
#         "xs_22_42.smt2.resolute",
#         "xs_23_43.smt2.resolute",
# ]

test_res_filenames = [x[0:-len(".resolute")] for x in test_res_filenames]



# test_res_filenames = [
#     "oneplusone",
#     "tightrhombus-273-245-0",
#     "uf1",
#     "uf2",
#     "uf4",
#     "uf5",
#     "uf6",
#     "uf7",
#     "hole",
#     "hole_thin"
# ]

for fname in test_res_filenames:
    print(fname)
#     cmd = \
#     "dune exe -- ./driver.exe --res test_res/{}.resolute > test_ir_res/{}.txt".format(
#         fname, fname)
#     os.system(cmd)
# 
    cmd = \
    "dune exe -- ./driver.exe --res --res-cpp test_res/{}.resolute > test_table_cpp_res/{}.cpp.txt".format(
        fname, fname
    )
    os.system(cmd)
 
#    cmd = \
#        "dune exe -- ./driver.exe --res --res-list test_res/{}.resolute > test_res_list/{}.txt".format(
#            fname, fname
#        )
#    os.system(cmd)

    cmd = \
        "cp test_table_cpp_res/{}.cpp.txt ../test/{}.zksmt".format(fname, fname)
    os.system(cmd)
