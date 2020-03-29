#!/bin/bash

# source me!

ver=2018.2-g9.3.0-mkl-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton_2018.2

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_OPENMP=ON \
    -DENABLE_AUTO_BLAS=MKL \
    -DENABLE_AUTO_LAPACK=MKL \
    "${dir_source}"

# make all -j4
# ctest -j4
# make install
