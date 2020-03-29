#!/bin/bash

# source me!

ver=git-gnu-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_OPENMP=ON \
    -DENABLE_AUTO_BLAS=OPENBLAS \
    -DENABLE_AUTO_LAPACK=OPENBLAS \
    "${dir_source}"

# make all -j4
# ctest -j4
# make install
