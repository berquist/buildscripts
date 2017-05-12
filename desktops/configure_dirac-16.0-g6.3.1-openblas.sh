#!/bin/bash

# source me!

ver=16.0-g6.3.1-openblas
dir_build="${apps}"/build/dirac_"${ver}"
dir_source="${apps}"/dirac/DIRAC-16.0-Source

module purge
module load dirac/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

# --cc=gcc-5 \
# --cxx=g++-5 \
# --fc=gfortran-5 \
#    --cmake-options='-DENABLE_PCMSOLVER=OFF' \

./setup \
    --prefix="${DIRAC_ROOT}" \
    --python=/usr/bin/python2 \
    "${dir_build}"

# cd "${dir_build}"
# make -j4
# make test -j4
# make install
