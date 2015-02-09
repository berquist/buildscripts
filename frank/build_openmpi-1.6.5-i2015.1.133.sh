#!/bin/bash

module purge
module load intel/2015.1.133
# module load gcc/4.8.2-rhel

ompi_version=1.6.5
compiler_version=i2015.1.133

cd $apps/build/openmpi-${ompi_version}
mkdir build_${compiler_version}
cd build_${compiler_version}

# comment out this line of exports to build with GNU compilers
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort

../configure \
    --prefix=$apps/mpi/openmpi/${ompi_version}-${compiler_version} \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix

make -j4
make install
