#!/usr/bin/env bash

# source me!

ver=berquist-gnu-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/development/dalton

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_OPENMP=ON \
    -DENABLE_AUTO_BLAS=ON \
    -DENABLE_AUTO_LAPACK=ON \
    "${dir_source}"

# make all -j4
# ctest -j4
# make install
