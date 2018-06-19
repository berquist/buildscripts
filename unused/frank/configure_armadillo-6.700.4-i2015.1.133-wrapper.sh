#!/bin/bash

# source me, don't run me!

version_source=6.700.4
version_module=${version_source}-i2015.1.133-wrapper
dir_source="${apps}"/build/armadillo-${version_source}
dir_build="${apps}"/build/armadillo_${version_module}

module purge
module load cmake
module load intel/2015.1.133
module load mkl/2015.1.133/icc-st
module load armadillo/${version_module}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${ARMADILLO_ROOT}" \
    -DCMAKE_CXX_COMPILER=icpc \
    "${dir_source}"

# make
# make install
