#!/usr/bin/python3

# build and run zkchecker on tests

import os

TEST_DIR = '../test'

test_filenames = os.listdir(TEST_DIR)

os.system("cmake .")
os.system("make")

for fname in test_filenames:
    print(fname)
    cmd = "./zkchecker -q {}/{} 1 12345 & ./zkchecker -q {}/{} 2 12345".format(
            TEST_DIR, fname, TEST_DIR, fname)
    os.system(cmd)
