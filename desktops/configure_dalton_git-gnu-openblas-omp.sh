#!/bin/bash

# source me!

ver=git-gnu-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton

mkdir -p "${dir_build}"
cd "${dir_build}"

# python2 ./setup \
#         --prefix="${apps}/dalton/${ver}" \
#         --fc=gfortran-6 \
#         --cc=gcc-6 \
#         --cxx=g++-6 \
#         --gpu \
#         --cublas \
#         --omp \
#         "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_Fortran_COMPILER=gfortran-6 \
    -DCMAKE_C_COMPILER=gcc-6 \
    -DCMAKE_CXX_COMPILER=g++-6 \
    -DENABLE_GPU=ON \
    -DENABLE_CUDA=ON \
    -DENABLE_CUBLAS=ON \
    -DENABLE_OPENMP=ON \
    -DENABLE_AUTO_BLAS=ON \
    -DENABLE_AUTO_LAPACK=ON \
    "${dir_source}"


# make all -j4
# ctest -j4
# make install
