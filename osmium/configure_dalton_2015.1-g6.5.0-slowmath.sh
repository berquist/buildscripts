#!/usr/bin/env bash

# source me!

ver=2015.1-g6.5.0-slowmath
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton_2015.1

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=gcc-6 \
    -DCMAKE_CXX_COMPILER=g++-6 \
    -DCMAKE_Fortran_COMPILER=gfortran-6 \
    -DENABLE_MPI=OFF \
    -DENABLE_OMP=OFF \
    -DENABLE_AUTO_BLAS=OFF \
    -DENABLE_AUTO_LAPACK=OFF \
    -DENABLE_BUILTIN_BLAS=ON \
    -DENABLE_BUILTIN_LAPACK=ON \
    "${dir_source}"
