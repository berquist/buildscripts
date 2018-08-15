#!/bin/bash

# source me!

version=1.6.5
compiler_ver=2013.0
module_ver=i${compiler_ver}

module purge
module load intel/${module_ver}

cd ${apps}/build/openmpi-${version}
mkdir build_${module_ver}
cd build_${module_ver}

# comment out this line of exports to build with GNU compilers
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort; export F90=ifort

../configure \
    --prefix=${apps}/haswell/openmpi/${version}-${module_ver} \
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
