#!/bin/sh

# source me!

ver=1.5.2

./configure \
    --prefix=$apps/apr/$ver \
    --enable-static \
    --enable-shared \
    --enable-nonportable-atomics \
    --enable-threads \
    --enable-posix-shm \
    --enable-other-child

# make all -j4
# make install
