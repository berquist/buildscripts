#!/bin/bash

# source me!

ver=git-gnu-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton

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
