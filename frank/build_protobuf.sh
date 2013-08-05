#!/bin/bash

make clean >& /dev/null

./configure \
    --prefix=${HOME}/opt/protobuf

make -j4
make install