#!/usr/bin/env bash

# source me!

make clean
make configure

./configure \
    --prefix=${HOME}/opt/apps/git/github \
    --with-libpcre \
    --enable-pthreads

# make -j4 all doc
# make install install-doc install-html
# make -j4 all
# make install
