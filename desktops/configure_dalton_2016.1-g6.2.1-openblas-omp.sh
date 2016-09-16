#!/usr/bin/env bash

# source me!

ver=2016.1-g6.2.1-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${apps}"/dalton/2016.1-source

source /etc/profile.d/modules.sh

module purge
module load dalton/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="${DALTON_ROOT}" \
    --omp \
    --gpu \
    --cublas \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# ctest -j4
# make install
