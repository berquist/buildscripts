#!/usr/bin/env bash

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
    -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -DCMAKE_CUDA_COMPILER=/opt/cuda/bin/nvcc \
    -DCUDA_TOOLKIT_ROOT_DIR=/opt/cuda \
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
    -DENABLE_snsmp2=ON \
    -DENABLE_v2rdm_casscf=ON \
    -DENABLE_gpu_dfcc=ON \
    -DMAX_AM_ERI=6 \
    "${dir_source}"

# make all -j5
# make test
# make install
