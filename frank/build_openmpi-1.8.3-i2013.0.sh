#!/bin/bash

module purge
module load intel/2013.0

version=1.8.3

cd $apps/build/openmpi-${version}
mkdir build_i2013.0
cd build_i2013.0

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort

../configure \
    --prefix=$apps/mpi/openmpi/${version}-i2013.0 \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix

make -j4
make install
