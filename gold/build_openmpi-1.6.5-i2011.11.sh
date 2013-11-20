#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011.11
module load openmpi/1.6.5-i2011.11

./configure \
    --prefix=${OPENMPI_ROOT} \
    --with-hwloc=internal \
    --with-libltdl=internal \
    --with-threads=posix \
    --with-valgrind \
    --enable-pretty-print-stacktrace \
    --without-slurm \
    --enable-static \
    --enable-shared \
    --enable-branch-probabilities \
    --enable-opal-multi-threads \
    --enable-mpi-thread-multiple \
    --enable-cxx-exceptions \
    CC=icc \
    CXX=icpc \
    FC=ifort \
    F77=ifort \
    LD=xild \
    AR=xiar

make -j8
make install 
