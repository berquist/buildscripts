#!/bin/bash

# source me!

ver=git-g7.1.1-openblas
dir_source=/media/Backup/repositories/psi4
# dir_build=${apps}/build/psi4_${ver}
dir_build=/media/Backup/repositories/psi4/build

module purge

# rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"

# "${dir_source}"/setup \
#                --prefix="${apps}"/psi4/${ver} \
#                --fc=gfortran \
#                --python=/usr/bin/python2 \
#                --omp \
#                --plugins=off \
#                --vectorization \
#                --ambit=off \
#                --chemps2=off \
#                --pcmsolver=off \
#                --dummy-plugin=off \
#                --gpu-dfcc=off \
#                --gdma=off \
#                --jkfactory=off \
#                --erd=off \
#                "${dir_build}"

cmake "$dir_source" \
      -DCMAKE_INSTALL_PREFIX="${apps}"/psi4/${ver} \
      -DENABLE_AMBIT=OFF \
      -DENABLE_CheMPS2=ON \
      -DENABLE_dkh=ON \
      -DENABLE_libefp=ON \
      -DENABLE_erd=ON \
      -DENABLE_simint=ON \
      -DENABLE_gdma=ON \
      -DENABLE_PCMSolver=ON \
      -DENABLE_ccsort=OFF \
      -DENABLE_transqt2=OFF \
      -DMAX_AM_ERI=6

# make all -j5
# make test
# make install
