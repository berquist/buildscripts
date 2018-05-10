#!/bin/bash

# source me!

# make clean
make configure

./configure \
    --prefix=${apps}/git/github \
    --with-curl \
    --with-expat \
    --with-openssl

# make -j4 all doc
# make install install-doc install-html
# make -j4 all
# make install
