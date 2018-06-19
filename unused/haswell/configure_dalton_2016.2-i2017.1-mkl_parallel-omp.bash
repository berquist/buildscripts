#!/bin/bash

# source me!

ver=2016.2-i2017.1-mkl_parallel-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${apps}"/dalton/2016.2-source

module purge
module load cmake/3.7.1
module load intel/2017.1.132
module load mkl/2017.1.132

\rm -rf "$dir_build"
mkdir "$dir_build"
cd "$dir_source"

./setup \
    --prefix="${apps}/dalton/${ver}" \
    --cc=icc \
    --cxx=icpc \
    --fc=ifort \
    --mkl=parallel \
    --omp \
    "${dir_build}"

# make all -j16
# OMP_NUM_THREADS=2 ctest -j4
# make install
