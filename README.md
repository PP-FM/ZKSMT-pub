# ZKSMT

This repository contains the artifact for ZKSMT, a VM for proving SMT theorems in zero knowledge.

## Running the artifact

The scripts in the artifact can be run on a single machine or on multiple machines. Running on multiple machines reproduces the behavior of a prover and verifier communicating over a network more faithfully, but running on a single machine is easier to set up and does not significantly affect the results positively or negatively. If the scripts are being run on multiple machines, the typical network bandwith needed for the underlying ZK protocol is 100 Mbps, and an IP address visible from the other machine is required.

### 1. Install Docker and other dependencies

If not already installed, install Docker Engine from the instructions here (https://docs.docker.com/engine/install/ubuntu/). On a fresh Ubuntu machine, run `./install_docker.sh` or enter the following commands:

```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker's repository to apt:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Python 3 is also needed for running scripts:

```
sudo apt-get update
sudo apt-get install python3
```

If the scripts will be run on multiple machines, do this on each machine.

### 2. Create a Docker container

Build a docker image named `zksmt` from the provided Dockerfile and create a container named `zksmt_test`. The commands to do this are provided in the `setup_container` script.

```
./setup_container.sh
```

If the scripts will be run on multiple machines, do this on each machine.

### 3. Run a script

There are three scripts to run varying amounts of benchmarks. These scripts are
intended to run within the Docker container; running them on the host will fail
unless the host has installed all dependencies.

The three scripts are:

* `simple.py`: Run a single simple test script to ensure `zkchecker` builds and runs correctly. About 5 seconds, not including build time.
* `limited.py`: Run a subset of the tests on a machine with limited resources. Does not run the WiSA tests (Figure 6a in the paper) as these require the most resources. 4 GB RAM is sufficient. About 80 minutes.
* `full.py`: Reproduces all results in the paper. Requires 256 GB of RAM when run on a single machine, or 128 GB of RAM each on two machines. 16 cores on a single machine, or 8 cores on each machine is recommended. About 7 hours.

All three scripts have the option of being run locally or on multiple machines. They also take care of building the zero knowledge checker located in `ZKSMT/zkchecker`.

`limited.py` and `full.py` produce PDF plots, which will be output in `ZKSMT/out`. When running on multiple machines, only the machine designated as party 1 will produce plots.

To handle running the scripts within the Docker container and extracting any produced plots, use the `runner.py` script:

```
# Run simple.py locally
./runner.py simple

# Run simple.py multi-machine
./runner.py simple --multi B 1 # Run on machine A
./runner.py simple --multi A 2 # Run on machine B

# Run limited.py locally
./runner.py limited

# Run limited.py multi-machine
./runner.py limited --multi B 1 # Run on machine A
./runner.py limited --multi A 2 # Run on machine B

# Run full.py locally
./runner.py full

# Run full.py multi-machine
./runner.py full --multi B 1 # Run on machine A
./runner.py full --multi A 2 # Run on machine B
```

Alternatively, you can attach the Docker container and run the scripts directly. Running the `simple.py` script (`limited.py` and `full.py` have the same options) is:

```
# Attach to the docker container
sudo docker attach zksmt_test

# local machine
./simple.py

# multi-machine
# run on machine A:
./simple.py --multi B 1

# run on machine B:
./simple.py --multi A 2

# Results for limited.py or full.py will be found in ZKSMT/out in the Docker container on machine 1.
# ctrl-p ctrl-q exits the docker container
```

If the Docker container enters an error state, you can rebuild the image and container by running `./setup_container.sh`.

## Project overview

`zkchecker` contains the zero knowledge checker.

`checkers` contains a plaintext version of the checker.

`compiler` contains the code of the compiler which converts the unsatisfiability
proof output by an SMT solver into a format parseable by the checkers.

`benchmark` contains benchmarks from [Boogie](https://github.com/boogie-org/boogie).

`microbenchmark` contains single-rule proofs used to test individual rules.

`benchmark_wsa` contains benchmarks adapted from the Wisconsin Safety Analyzer (WiSA), present in the [SMT-LIB benchmark suite](http://smtlib.cs.uiowa.edu/).

`tests` contains tests used for debugging ZKSMT. This includes tests used in [SMTCoq](https://github.com/smtcoq/smtcoq) and [SMTInterpol](https://github.com/ultimate-pa/smtinterpol/tree/master).

`benchmark_setup` contains scripts for creating proof files for the benchmarks using SMTInterpol.

See build & run instructions for checkers and compilers in their respective directories.

### Licensing

Out of the test cases included, Boogie is MIT licensed, SMTCoq is CeCILL-C licensed, and SMTInterpol is GPL 3.0 licensed.

ZKSMT is intended to be open sourced, though the exact license has yet to be resolved.
