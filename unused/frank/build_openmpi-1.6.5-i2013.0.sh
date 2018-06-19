#!/usr/bin/env bash

module purge
module load intel/2013.0

version=1.6.5

cd $apps/build/openmpi-${version}
mkdir build_i2013.0
cd build_i2013.0

# comment out this line of exports to build with GNU compilers
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-i2013.0 \
    --disable-debug \
    --disable-debug-symbols \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix \
    --with-pic \
    --with-libltdl=internal

# make -j4
# make install
