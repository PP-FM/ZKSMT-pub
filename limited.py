#!/usr/bin/python3

# Script to build zkchecker and run all benchmarks except WiSA, which require a large amount of RAM.

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
    print("Local usage: ./limited.py")
    print("Networked usage: ./limited --multi <addr> <party>")
    print("Example networked usage: ./limited --multi 127.0.0.1 1")
    sys.exit()

print("Building checker...")
subprocess.call("cd zkchecker; rm -f CMakeCache.txt", shell=True)
subprocess.call("cd zkchecker; cmake .", shell=True)
subprocess.call("cd zkchecker; make -j4", shell=True)


if local_mode:
    print("Running limited benchmarks...")
    subprocess.call('cd zkchecker; ./benchmark.py --limited', shell=True)
    print("Ploting limited benchmarks...")
    subprocess.call('cd zkchecker; ./plot.py --limited', shell=True)
else:
    # The first proof run occasionally has errors, so run one throwaway test
    print("Running simple test to warm up...")
    args = ["zkchecker/zkchecker", "test/uf7.zksmt", "-a", custom_addr, custom_party, "12345"]
    subprocess.call(args)
    print()

    print("Running limited benchmarks...")

    subprocess.call("cd zkchecker; ./benchmark.py --limited -a {} {}".format(custom_addr, custom_party), shell=True)

    if custom_party == '1':
        print("Plotting limited benchmarks...")
        subprocess.call('cd zkchecker; ./plot.py --limited', shell=True)
    else:
        print("Plots created on party 1 machine. Check other machine")

print()
print("Limited script finished.")
