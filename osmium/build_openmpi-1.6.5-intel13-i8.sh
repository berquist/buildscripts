#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013
module load openmpi/1.6.5-intel13-i8

rm -r $HOME/opt/build/openmpi-${OPENMPI_VER}-builddir >& /dev/null
mkdir $HOME/opt/build/openmpi-${OPENMPI_VER}-builddir
cd    $HOME/opt/build/openmpi-${OPENMPI_VER}-builddir

$HOME/opt/build/openmpi-${OPENMPI_VER}/configure \
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
