#!/usr/bin/env bash

# source me!

ver=git
dir_source="${HOME}"/repositories/openbabel
dir_build="${apps}"/build/openbabel_"${ver}"

mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="${apps}"/openbabel/"${ver}" \
    -DRUN_SWIG=ON \
    -DBUILD_DOCS=ON \
    -DENABLE_OPENMP=ON \
    -DPHP_BINDINGS=OFF \
    -DPYTHON_BINDINGS=ON \
    -DRUBY_BINDINGS=OFF \
    -DPERL_BINDINGS=OFF \
    -DJAVA_BINDINGS=OFF \
    -DR_BINDINGS=OFF \
    -DCSHARP_BINDINGS=OFF \
    "${dir_source}"
