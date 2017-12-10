#!/bin/bash

# source me!

ver=git-gnu-openblas-omp
dir_build="${apps}"/build/lsdalton_"${ver}"
if [ `hostname` = "copper" ]; then
    dir_source=/media/Backup/repositories/lsdalton
else 
    dir_source="${HOME}"/repositories/lsdalton
fi

# source /etc/profile.d/modules.sh

# module purge
# module load lsdalton/${ver}

rm -rf "${dir_build}"
mkdir "${dir_build}"
cd "${dir_source}"

# --prefix="${LSDALTON_ROOT}" \

./setup \
    --prefix="${apps}/lsdalton/${ver}" \
    --omp \
    "${dir_build}"

# cd "${dir_build}"
# make all -j4
# ctest -j4
# make install
