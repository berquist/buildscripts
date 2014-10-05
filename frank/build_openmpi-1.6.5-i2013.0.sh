#!/bin/bash

module purge
module load intel/2013.0
# module load gcc/4.8.2-rhel

version=1.6.5

cd $apps/build/openmpi-${version}
mkdir build_i2013.0
cd build_i2013.0

# comment out this line of exports to build with GNU compilers
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort

../configure \
    --prefix=$apps/openmpi/${version}-i2013.0 \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix

make -j4
make install
