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
    -DCMAKE_Fortran_COMPILER=gfortran-6 \
    -DCMAKE_C_COMPILER=gcc-6 \
    -DCMAKE_CXX_COMPILER=g++-6 \
    -DENABLE_GPU=ON \
    -DENABLE_CUDA=ON \
    -DENABLE_CUBLAS=ON \
    -DENABLE_OMP=ON \
    -DENABLE_AUTO_BLAS=ON \
    -DENABLE_AUTO_LAPACK=ON \
    "${dir_source}"

# make all -j4
# ctest -j4
# make install
