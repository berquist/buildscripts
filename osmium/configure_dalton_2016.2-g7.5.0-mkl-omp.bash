#!/bin/bash

# source me!

ver=2016.2-g7.5.0-mkl-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton_2016.2

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=gcc-7 \
    -DCMAKE_CXX_COMPILER=g++-7 \
    -DCMAKE_Fortran_COMPILER=gfortran-7 \
    -DENABLE_OMP=ON \
    -DENABLE_AUTO_BLAS=MKL \
    -DENABLE_AUTO_LAPACK=MKL \
    "${dir_source}"

# make all -j4
# ctest -j4
# make install
