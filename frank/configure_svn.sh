#!/bin/bash

# source me!

version=1.9.4

# --with-apxs=

PYTHON=$apps/python/anaconda2/bin/python ./configure \
    --prefix=$apps/subversion/$version \
    --enable-all-static \
    --with-apr=$apps/apr/1.5.2 \
    --with-apr-util=$apps/apr-util/1.5.4 \
    --with-serf=$apps/serf/1.3.8 \
    --with-sqlite=$apps/sqlite/3140100 \
    --with-doxygen=$apps/doxygen/git \
    --with-zlib=$apps/zlib/1.2.8 \
    --with-swig=$apps/swig/3.0.4
