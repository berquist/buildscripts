#!/usr/bin/env bash

ver=2015-qclab-i2013.sp1.1-mkl-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${apps}"/dalton/2015-source-qclab

source /etc/profile.d/modules.sh

module purge
module load intel/2013.sp1.1
module load dalton/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="${DALTON_ROOT}" \
    --fc=ifort \
    --cc=icc \
    --cxx=icpc \
    --mkl=parallel \
    --omp \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# make install
