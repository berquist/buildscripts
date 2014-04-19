#!/bin/bash

cd ${apps}/build/lapack-3.5.0

install -d build_gnu
cd build_gnu
make clean

cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_SKIP_RPATH=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_STATIC_LIBS=ON \
    -DLAPACKE=ON \
    -DCMAKE_Fortran_COMPILER=gfortran \
    -DCMAKE_INSTALL_PREFIX=${apps}/lapack/3.5.0-gnu4.8.2

make -j4
make install
