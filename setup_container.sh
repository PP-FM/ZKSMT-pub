#!/bin/bash

# Ensure container and image names are free
echo "Remove any pre-existing zksmt image and zksmt_test container..."
sudo docker rm -f zksmt_test
sudo docker rmi -f zksmt

# Build the docker image from the provided Dockerfile.
echo "Building docker image (takes a few minutes)..."
sudo docker build -t zksmt .

# Create the docker container we will use.
echo "Running docker container..."
sudo docker run -it --network=host --detach --name=zksmt_test zksmt
