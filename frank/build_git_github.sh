#!/bin/bash

module rm gcc
module rm perl
module load gcc/4.5.1
module load perl/5.8.8

make clean
make configure
./configure \
    --prefix=${apps}/git/github \
    --enable-pthreads \
    CC=$(which gcc) \
    CPP=$(which cpp)

# make -j4 all doc
# make install install-doc install-html
make -j4 all
make install
