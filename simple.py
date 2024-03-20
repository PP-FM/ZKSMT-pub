#!/usr/bin/python3

# Script to build zkchecker and run on a simple test.

import subprocess
import sys

# Parse command line args
local_mode = True
custom_addr = None
custom_party = None
if len(sys.argv) == 4 and sys.argv[1] == '--multi':
    local_mode = False
    custom_addr = sys.argv[2]
    custom_party = sys.argv[3]
elif len(sys.argv) != 1:
    print("Local usage: ./simple.py")
    print("Networked usage: ./simple --multi <addr> <party>")
    print("Example networked usage: ./simple --multi 127.0.0.1 1")
    sys.exit()

print("Building checker...")
subprocess.call("cd zkchecker; rm -f CMakeCache.txt", shell=True)
subprocess.call("cd zkchecker; cmake .", shell=True)
subprocess.call("cd zkchecker; make -j4", shell=True)

print("Running test...")

if local_mode:
    # executable name, proof file, party (1 or 2, for prover & verifier), port
    party1_args = ["zkchecker/zkchecker", "test/uf7.zksmt", "1", "12345"]
    party2_args = ["zkchecker/zkchecker", "test/uf7.zksmt", "2", "12345"]

    party1 = subprocess.Popen(party1_args)
    party2 = subprocess.Popen(party2_args, stdout=subprocess.DEVNULL)

    party1.wait()
    party2.wait()
else:
    args = ["zkchecker/zkchecker", "test/uf7.zksmt", "-a", custom_addr, custom_party, "12345"]
    subprocess.call(args)

print()
print("Simple script finished.")
