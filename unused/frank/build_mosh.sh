#!/bin/bash

module rm sys
module load sys

make clean >& /dev/null

./configure \
    --prefix=${HOME}/opt/mosh \
    --enable-completion

make -j4
make install