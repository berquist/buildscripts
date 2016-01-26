#!/usr/bin/env bash

ver=2015-qclab-g5.2.0-openblas-omp-i8
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${apps}"/dalton/2015-source-qclab

source /etc/profile.d/modules.sh

module purge
module load dalton/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="${DALTON_ROOT}" \
    --openacc \
    --omp \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# make install
