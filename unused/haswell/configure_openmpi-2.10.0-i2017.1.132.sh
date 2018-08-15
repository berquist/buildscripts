#!/bin/bash

# source me!

version=2.1.1
compiler_ver=2017.1.132
module_ver=i${compiler_ver}

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
    --enable-shared

# make -j4
# make install
