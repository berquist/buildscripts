#!/bin/bash

# source me!

ver=2016.2-g6.3.1-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${apps}"/dalton/2016.2-source

# source /etc/profile.d/modules.sh

# module purge
# module load dalton/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

# --prefix="${DALTON_ROOT}" \

./setup \
    --prefix="${apps}/dalton/${ver}" \
    --omp \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# ctest -j4
# make install
