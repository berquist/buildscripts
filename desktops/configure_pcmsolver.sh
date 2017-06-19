#!/bin/bash

# source me!

ver=git
dir_source=/media/Backup/repositories/pcmsolver
dir_build="${dir_source}"/build

# rm -rf "${dir_build}"
mkdir -p "${dir_build}"
cd "${dir_build}"

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}"/pcmsolver/$ver \
    -DCMAKE_BUILD_TYPE=Release \
    ..
