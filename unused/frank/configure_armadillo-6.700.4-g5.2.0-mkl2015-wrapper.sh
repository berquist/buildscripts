#!/usr/bin/env bash

# source me, don't run me!

version_source=6.700.4
version_module=${version_source}-g5.2.0-mkl2015-wrapper
dir_source="${apps}"/build/armadillo-${version_source}
dir_build="${apps}"/build/armadillo_${version_module}

module purge
module load cmake
module load gcc/5.2.0-rhel
module load mkl/2015.1.133/icc-st
module load armadillo/${version_module}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${ARMADILLO_ROOT}" \
    "${dir_source}"

# make
# make install
