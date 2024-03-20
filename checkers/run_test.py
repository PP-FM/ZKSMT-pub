#!/usr/bin/python3

# rebuild & run plaintext checker on all tests

import os

TEST_DIR = '../test'

test_filenames = os.listdir(TEST_DIR)

os.system("make clean")
os.system("make")

for fname in test_filenames:
    print(fname)
    cmd = "./checker {}/{}".format(TEST_DIR, fname)
    os.system(cmd)
