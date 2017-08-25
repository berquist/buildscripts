#!/bin/bash

# source me!

ver=berquist-g7.2.0-accelerate
dir_source="${apps}"/psi4/src_berquist
dir_build="${apps}"/build/psi4_${ver}

module purge

# rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"


cmake \
      -DCMAKE_INSTALL_PREFIX="${apps}"/psi4/${ver} \
      -DPYTHON_EXECUTABLE=/usr/local/bin/python3 \
      -DPYTHON_LIBRARY:PATH=/usr/local/opt/python3/Frameworks/Python.framework/Versions/3.6/lib/libpython3.6.dylib \
      -DCMAKE_C_COMPILER=gcc-7 \
      -DCMAKE_CXX_COMPILER=g++-7 \
      -DCMAKE_Fortran_COMPILER=gfortran-7 \
      -DMAX_AM_ERI=6 \
      -DENABLE_dkh=ON \
      "$dir_source"

# make all -j5
# make test
# make install
