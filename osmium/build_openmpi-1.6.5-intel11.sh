#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011
module load openmpi/1.6.5-intel11

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
    CC=icc \
    CXX=icpc \
    FC=ifort \
    F77=ifort \
    LD=xild \
    AR=xiar

make -j8
make install
