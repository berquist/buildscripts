#!/bin/bash

# source me!

version=1.9.4

# --with-apxs=
#     --enable-all-static \

./configure \
    --prefix=$apps/subversion/$version \
    --enable-shared \
    --disable-static \
    --disable-all-static \
    --with-apr=$apps/apr/1.5.0 \
    --with-apr-util=$apps/apr-util/1.5.3 \
    --with-serf=$apps/serf/1.3.4 \
    --with-sqlite=$apps/sqlite/3140100 \
    --with-doxygen=$apps/doxygen/git
