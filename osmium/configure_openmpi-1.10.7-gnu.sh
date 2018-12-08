#!/bin/bash

# source me!

ver=1.10.7
modver=$ver-gnu

dir_build=$apps/build/build_openmpi_$modver
dir_source=$apps/build/openmpi-$ver

mkdir -p "${dir_build}"
cd "${dir_build}"
# make clean >& /dev/null
# make distclean >& /dev/null

$dir_source/configure \
    --prefix=$apps/openmpi/$modver \
    --with-threads=posix \
    --with-valgrind \
    --enable-pretty-print-stacktrace \
    --enable-static \
    --enable-shared \
    --enable-branch-probabilities \
    --enable-mpi-thread-multiple \
    --enable-mpi-fortran \
    --enable-cxx-exceptions
