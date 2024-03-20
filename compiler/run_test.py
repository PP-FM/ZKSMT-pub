#!/usr/bin/python3

# Run regression testing

import os

print("initializing...")
test_filenames = os.listdir('test_lfsc')
# strip .lfsc suffix from all
test_filenames = [x[0:-len(".lfsc")] for x in test_filenames]

test_res_filenames = os.listdir('test_res')
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

print("building...")
os.system("dune build")
os.system("mkdir temp")

# old lfsc version
# print("running commands...")
# for fname in test_filenames:
#     cmd = "dune exe -- ./driver.exe test_lfsc/{}.lfsc > temp/{}.txt".format(fname, fname)
#     os.system(cmd)
#
#     cmd = "dune exe -- ./driver.exe test_lfsc/{}.lfsc > temp/{}.cpp.txt".format(fname, fname)
#     os.system(cmd)

for fname in test_res_filenames:
    print(fname)
    cmd = \
    "dune exe -- ./driver.exe --res test_res/{}.resolute > temp/{}.res.txt".format(
        fname, fname)
    os.system(cmd)

    cmd = \
    "dune exe -- ./driver.exe --res --res-cpp test_res/{}.resolute > temp/{}.res.cpp.txt".format(
        fname, fname
    )
    os.system(cmd)

    cmd = \
        "dune exe -- ./driver.exe --res --res-list test_res/{}.resolute > temp/{}.list_res.txt".format(
            fname, fname
        )
    os.system(cmd)

# old lfsc version
# print("running diffs...")
# for fname in test_filenames:
#     cmd = "diff test_table_ml/{}.txt temp/{}.txt".format(fname, fname)
#     os.system(cmd)
#
#     cmd = "diff test_table_cpp/{}.cpp.txt temp/{}.cpp.txt".format(fname, fname)
#     os.system(cmd)

for fname in test_res_filenames:
    cmd = \
        "diff test_ir_res/{}.txt temp/{}.res.txt".format(fname, fname)
    os.system(cmd)

    cmd = \
        "diff test_table_cpp_res/{}.cpp.txt temp/{}.res.cpp.txt".format(fname, fname)
    os.system(cmd)

    cmd = \
        "diff test_res_list/{}.txt temp/{}.list_res.txt".format(fname, fname)
    os.system(cmd)



os.system("rm -r temp/")
print("finished")
