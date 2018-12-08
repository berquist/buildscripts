#!/bin/bash

# source me!

ver=git-gnu-openblas
dir_source=$HOME/repositories/psi4
dir_build="${apps}"/build/psi4_${ver}

module purge
module load cfour

# rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
      -DCMAKE_INSTALL_PREFIX="${apps}"/psi4/${ver} \
      -DPYTHON_EXECUTABLE=/usr/bin/python \
      -DPYTHON_LIBRARY=/usr/lib/libpython3.so \
      -DENABLE_ambit=OFF \
      -DENABLE_CheMPS2=ON \
      -DENABLE_libefp=ON \
      -DENABLE_dkh=ON \
      -DENABLE_erd=OFF \
      -DENABLE_simint=OFF \
      -DENABLE_gdma=ON \
      -DENABLE_PCMSolver=ON \
      -DENABLE_snsmp2=OFF \
      -DENABLE_v2rdm_casscf=ON \
      -DMAX_AM_ERI=6 \
      "${dir_source}"

# make all -j5
# make test
# make install
