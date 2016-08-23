#!/bin/sh

# source me!

ver=1.5.4
#     --with-apr-iconv=../apr-iconv-1.2.1 \

./configure \
    --prefix=$apps/apr-util/$ver \
    --with-apr=$apps/apr/1.5.2 \
    --with-expat=builtin

# make all -j4
# make install
