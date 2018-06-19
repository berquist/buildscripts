#!/bin/bash

# source me!

ver=git-gnu-internal
dir_source="${HOME}"/repositories/OpenMolcas
dir_build="${apps}"/build/openmolcas_${ver}

module purge

mkdir -p "${dir_build}"
cd "${dir_build}"

# export OPENBLASROOT=/usr
# need 64-bit integers...
    # -DLINALG=OpenBLAS \
    # -DFDE=ON \
    # -DGEN1INT=ON \
    # -DNECI=ON \
    # -DBUILD_STATIC_LIBS=ON \
    # -DWFA=ON \
    # -DMSYM=OFF \
cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}"/molcas/${ver} \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON \
    -DLINALG=Internal \
    -DOPENMP=ON \
    -DCUBLAS=OFF \
    -DNVBLAS=OFF \
    -DFDE=ON \
    -DCHEMPS2=OFF \
    -DHDF5=ON \
    -DTOOLS=ON \
    -DCTEST=ON \
    -DNECI=OFF \
    -DWFA=OFF \
    -DEFPLIB=OFF \
    -DGRID_IT=ON \
    "${dir_source}"
