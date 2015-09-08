#!/bin/bash

make clean
make configure
./configure \
    --prefix=${apps}/git/2.2.1 \
    --enable-pthreads

# make -j4 all doc
# make install install-doc install-html
make -j4 all
make install
