#!/bin/bash

# source me!

ver=berquist-gnu-openblas
dir_source="${apps}"/psi4/src_berquist
dir_build="${apps}"/build/psi4_${ver}

module purge

# rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
      -DCMAKE_INSTALL_PREFIX="${apps}"/psi4/${ver} \
      -DPYTHON_EXECUTABLE=/usr/bin/python \
      -DPYTHON_LIBRARY=/usr/lib/libpython3.so \
      -DENABLE_dkh=ON \
      "$dir_source"

# make all -j5
# make test
# make install
