#!/usr/bin/env bash

# source me!

ver=git-g6.3.1-openblas
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
      -DENABLE_AMBIT=OFF \
      -DENABLE_CheMPS2=ON \
      -DENABLE_dkh=ON \
      -DENABLE_libefp=ON \
      -DENABLE_erd=ON \
      -DENABLE_simint=ON \
      -DENABLE_gdma=ON \
      -DENABLE_PCMSolver=ON \
      -DENABLE_ccsort=ON \
      -DENABLE_transqt2=ON

# make all -j5
# make test
# make install
