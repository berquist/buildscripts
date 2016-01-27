#!/usr/bin/env bash

# source me!

ver=git-g5.3.0-openblas
dir_build=${apps}/build/psi4public_build_${ver}
dir_source=${apps}/build/psi4public

module purge

rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"

"${dir_source}"/setup \
               --prefix="${apps}"/psi4/${ver} \
               --fc=gfortran \
               --python=/usr/bin/python2 \
               --omp \
               --mpi \
               --plugins=on \
               --coverage \
               --unit-tests \
               --vectorization \
               --erd=on \
               --jkfactory=on \
               --dummy-plugin=on \
               --pcmsolver=on \
               --chemps2=on \
               "${dir_build}"

# make all -j4
# make test
# make install
