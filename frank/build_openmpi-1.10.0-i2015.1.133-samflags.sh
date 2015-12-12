#!/usr/bin/env bash

version=1.10.0
compiler_ver=2015.1.133
module_ver=i${compiler_ver}-samflags
logname=log.${version}-${module_ver}

module purge
module load intel/${compiler_ver}

cd ${apps}/build/openmpi-${version}
mkdir build_${module_ver}
cd build_${module_ver}

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort; export F90=ifort;

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-${module_ver} \
    --enable-silent-rules \
    --disable-debug \
    --disable-debug-symbols \
    --enable-heterogeneous \
    --enable-mpi-interface-warning \
    --disable-ipv6 \
    --enable-mpi-fortran=all \
    --enable-static \
    --enable-cxx-exceptions \
    --enable-smp-locks \
    --enable-mpi-thread-multiple \
    --with-tm \
    --without-loadleveler \
    --with-openib \
    --without-cuda \
    --disable-mca-dso \
    --disable-dlopen >& ${logname}.configure

make -j4 >& ${logname}.make
make install >& ${logname}.make_install
