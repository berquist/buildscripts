#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1-i8

rm -r $apps/build/openmpi-${OPENMPI_VER}-builddir >& /dev/null
mkdir $apps/build/openmpi-${OPENMPI_VER}-builddir
cd    $apps/build/openmpi-${OPENMPI_VER}-builddir

$apps/build/openmpi-${OPENMPI_VER}/configure \
    --prefix=$OPENMPI_ROOT \
    --with-hwloc=/usr \
    --with-libltdl=/usr \
    --with-threads=posix \
    --with-valgrind \
    --enable-memchecker \
    --enable-debug \
    --enable-pretty-print-stacktrace \
    --without-slurm \
    --enable-static \
    --enable-shared \
    --enable-opal-multi-threads \
    --enable-mpi-thread-multiple \
    --enable-cxx-exceptions \
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
