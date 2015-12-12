#!/usr/bin/env bash

version=1.6.5
compiler_ver=2015.1.133
module_ver=i${compiler_ver}
logname=log.${version}-${module_ver}

module purge
module load intel/${compiler_ver}

cd ${apps}/build/openmpi-${version}
mkdir build_${module_ver}
cd build_${module_ver}

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort; export F90=ifort

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-${module_ver} \
    --disable-debug \
    --disable-debug-symbols \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix \
    --with-pic \
    --enable-heterogeneous \
    --enable-mpi-interface-warning \
    --disable-ipv6 \
    --enable-cxx-exceptions \
    --enable-mpi-thread-multiple \
    --with-tm \
    --without-loadleveler \
    --with-openib \
    --disable-mca-dso \
    --disable-dlopen >& ${logname}.configure

make -j4 >& ${logname}.make
make install >& ${logname}.make_install
