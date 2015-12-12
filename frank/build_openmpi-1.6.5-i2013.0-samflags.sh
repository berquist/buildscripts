#!/usr/bin/env bash

module purge
module load intel/2013.0

version_ompi=1.6.5
version_build=i2013.0-samflags

cd $apps/build/openmpi-${version_ompi}
mkdir build_${version_build}
cd build_${version_build}

# comment out this line of exports to build with GNU compilers
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort; export F90=ifort;

../configure \
    --prefix=${apps}/mpi/openmpi/${version_ompi}-${version_build} \
    --enable-silent-rules \
    --disable-dependency-tracking \
    --enable-heterogeneous \
    --enable-mpi-interface-warning \
    --disable-ipv6 \
    --enable-cxx-exceptions \
    --enable-mpi-thread-multiple \
    --with-tm \
    --without-loadleveler \
    --with-openib \
    --disable-mca-dso \
    --disable-dlopen

# make -j4
# make install
