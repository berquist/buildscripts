#!/bin/bash

cd ${apps}/build/lapack-3.5.0

install -d build_intel
cd build_intel
make clean

cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_SKIP_RPATH=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_STATIC_LIBS=ON \
    -DLAPACKE=ON \
    -DCMAKE_C_COMPILER=icc \
    -DCMAKE_CXX_COMPILER=icpc \
    -DCMAKE_Fortran_COMPILER=ifort \
    -DCMAKE_INSTALL_PREFIX=${apps}/lapack/3.5.0-i2013.sp1.1

make -j4
make install
