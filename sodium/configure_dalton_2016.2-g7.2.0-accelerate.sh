#!/bin/bash

# source me!

ver=2016.2-g7.2.0-accelerate
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${apps}"/dalton/2016.2-source

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="$apps"/dalton/$ver \
    --fc=gfortran-7 \
    --cc=gcc-7 \
    --cxx=g++-7\
    --omp \
    "${dir_build}"
