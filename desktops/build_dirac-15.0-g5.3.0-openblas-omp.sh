#!/usr/bin/env bash

# source me!

ver=15.0-g5.3.0-openblas-omp
dir_build="${apps}"/build/dirac_"${ver}"
dir_source="${apps}"/dirac/15.0-source

module purge
module load dirac/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

./setup \
    --prefix="${DIRAC_ROOT}" \
    --python=/usr/bin/python2 \
    --coverage \
    "${dir_build}"

# cd "${dir_build}"
# make -j4
# make test -j4
# make install
