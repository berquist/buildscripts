#!/bin/bash

# source me!

# make clean
make configure

./configure \
    --prefix=${apps}/git/github

# make -j4 all doc
# make install install-doc install-html
# make -j4 all
# make install
