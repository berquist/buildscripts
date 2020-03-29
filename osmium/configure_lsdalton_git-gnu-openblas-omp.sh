#!/bin/bash

# source me!

ver=git-gnu-openblas-omp
dir_build="${apps}"/build/lsdalton_"${ver}"
dir_source="${HOME}"/repositories/lsdalton


mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/lsdalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_OMP=ON \
    -DENABLE_AUTO_BLAS=OPENBLAS \
    -DENABLE_AUTO_LAPACK=OPENBLAS \
    -DENABLE_OPENRSP=ON \
    "${dir_source}"

# make all -j4
# ctest -j4
# make install
