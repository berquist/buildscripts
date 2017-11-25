#!/bin/bash

# source me!

ver=git-gnu-openblas
dir_source=/media/Backup/repositories/psi4
# dir_build=${apps}/build/psi4_${ver}
dir_build=/media/Backup/repositories/psi4/build_${ver}

module purge
module load cfour

# rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"

cmake "$dir_source" \
      -DCMAKE_INSTALL_PREFIX="${apps}"/psi4/${ver} \
      -DPYTHON_EXECUTABLE=/usr/bin/python \
      -DPYTHON_LIBRARY=/usr/lib/libpython3.so \
      -DENABLE_CheMPS2=ON \
      -DENABLE_dkh=ON \
      -DENABLE_libefp=ON \
      -DENABLE_erd=OFF \
      -DENABLE_simint=OFF \
      -DENABLE_gdma=ON \
      -DENABLE_PCMSolver=ON \
      -DENABLE_ccsort=OFF \
      -DENABLE_transqt2=OFF \
      -DMAX_AM_ERI=6

# make all -j5
# make test
# make install
