#!/bin/bash

# source me!

ver=git-gnu-openblas-omp
dir_build="${apps}"/build/lsdalton_"${ver}"
dir_source="${HOME}"/repositories/lsdalton

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="${apps}/lsdalton/${ver}" \
    --omp \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# ctest -j4
# make install
