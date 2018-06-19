#!/bin/bash

ver=2.13.0-rc0

make clean
make configure

./configure \
    --prefix="$apps"/git/"$ver" \
    --enable-pthreads

# make -j4 all doc
# make install install-doc install-html
make -j8 all
make install
