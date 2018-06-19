#!/bin/bash

# source me!

ver=3.6.1

./configure \
    --prefix=$apps/cmake/$ver \
    --parallel=$(getconf _NPROCESSORS_ONLN)

# gmake -j4
# gmake install
