#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load compilers/gcc/builtin/4.4.7
module load intel/2011.11
module load openmpi/1.6.5-i2011.11

cd ${apps}/build/openmpi-${OPENMPI_VER}
make clean >& /dev/null
make distclean >& /dev/null

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
