#!/bin/bash

ver=2.8.3

make clean
make configure

./configure \
    --prefix="${apps}"/git/${ver}

# make -j4 all doc
# make install install-doc install-html
make -j4 all
make install
