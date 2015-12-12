#!/usr/bin/env bash

version=1.10.0
compiler_ver=2015.3.187
module_ver=i${compiler_ver}
logname=log.${version}-${module_ver}

module purge
# module load intel/${compiler_ver}

cd ${apps}/build/openmpi-${version}
mkdir build_${module_ver}
cd build_${module_ver}

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort; export F90=ifort;

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-${module_ver}
