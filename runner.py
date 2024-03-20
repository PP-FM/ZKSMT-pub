#!/usr/bin/python3

# A single script to handle running simple.py, limited.py, and full.py within a docker container and extracting their output.

import subprocess
import sys

# Parse command line args
script_name = None
multi = False
address = None
party = None

SCRIPT_OPTIONS = ['simple', 'limited', 'full']

if len(sys.argv) == 2 and sys.argv[1] in SCRIPT_OPTIONS:
    script_name = sys.argv[1]
elif len(sys.argv) == 5 and sys.argv[1] in SCRIPT_OPTIONS and sys.argv[2] == '--multi':
    script_name = sys.argv[1]
    multi = True
    address = sys.argv[3]
    party = sys.argv[4]
else:
    print("Usage: ./runner.py [simple|limited|full] [--multi <address> <1|2>]")
    sys.exit()

if not multi:
    print("Running local script...")
    cmd = "sudo docker exec -t zksmt_test ./{}.py".format(script_name)
    subprocess.call(cmd, shell=True)

    if script_name == 'limited' or script_name == 'full':
        print("Extracting plots from Docker image...")
        subprocess.call("sudo docker cp zksmt_test:/home/ZKSMT/zkchecker/out .", shell=True)
else:
    print("Running multi script...")
    cmd = 'sudo docker exec -t zksmt_test ./{}.py --multi "{}" "{}"'.format(script_name, address, party)
    subprocess.call(cmd, shell=True)

    if script_name == 'limited' or script_name == 'full':
        if party == '1':
            print("Extracting plots from Docker image...")
            subprocess.call("sudo docker cp zksmt_test:/home/ZKSMT/zkchecker/out .", shell=True)
        else:
            print("Plots are only created on the machine which is party 1.")

print("Runner script finished.")

