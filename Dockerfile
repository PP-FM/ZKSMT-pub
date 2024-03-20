# Sets up a docker image with the zkchecker dependencies installed.

FROM ubuntu:22.04

# Copy repo into image
COPY . /home/ZKSMT

# Install dependencies from package manager for running benchmarks
RUN apt-get update && apt-get install -y python3 g++ cmake libntl-dev libgmp-dev wget git libssl-dev sudo vim

# Install emp-zk library
RUN wget https://raw.githubusercontent.com/emp-toolkit/emp-readme/master/scripts/install.py -P /home
RUN cd /home; python3 install.py --deps --tool --ot --sh2pc --zk

# Install dependencies for creating plots
RUN apt-get install -y python3-pip
RUN pip install matplotlib
# Install font while automatically agreeing to license agreement
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get install -y ttf-mscorefonts-installer

# refresh library path to ensure shared libraries are available
RUN ldconfig

# Set starting directory to be root of ZKSMT within image.
WORKDIR /home/ZKSMT
