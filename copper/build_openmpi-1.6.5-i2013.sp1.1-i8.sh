#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1-i8

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
    CFLAGS="${CFLAGS} -i8" \
    CXXFLAGS="${CXXFLAGS} -i8" \
    FFLAGS="${FFLAGS} -i8" \
    FCFLAGS="${FCFLAGS} -i8" \
    CC=icc \
    CXX=icpc \
    FC=ifort \
    F77=ifort \
    LD=xild \
    AR=xiar

make -j8
make install 
