#!/usr/bin/env bash

# source me!

ver=2015-g6.2.1-openblas-omp
dir_build="${apps}"/build/dalton_${ver}
dir_source="${apps}"/dalton/2015-source-qclab

source /etc/profile.d/modules.sh

module purge
module load dalton/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="${DALTON_ROOT}" \
    --fc=gfortran \
    --cc=gcc \
    --cxx=g++ \
    --openacc \
    --omp \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# ctest -j4
# make install
