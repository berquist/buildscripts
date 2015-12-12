#!/usr/bin/env bash

ver=2.6.0

make clean
make configure

./configure \
    --prefix="${apps}"/git/${ver} \
    --enable-pthreads

# make -j4 all doc
# make install install-doc install-html
make -j4 all
make install
