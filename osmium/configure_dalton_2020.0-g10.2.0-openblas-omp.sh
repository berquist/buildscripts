#!/bin/bash

# source me!

ver=2020.0-g10.2.0-openblas-omp
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton_2020.0

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_PDE=ON \
    -DENABLE_VPOTDAMP=ON \
    -DENABLE_OPENMP=ON \
    -DBLAS_TYPE=OPENBLAS \
    -DLAPACK_TYPE=SYSTEM_NATIVE \
    -DENABLE_PYTHON=OFF \
    -DENABLE_PCMSOLVER=ON \
    "${dir_source}"
