#!/bin/bash

ver=4.9.3
dir_source="${apps}"/build/gcc-${ver}
dir_build="${dir_source}"-build

source /etc/profile.d/modules.sh
module purge
module load compilers/gcc/${ver}

rm -rf "${dir_build}" >& /dev/null
mkdir "${dir_build}"
cd "${dir_build}"

"${dir_source}"/configure \
               --prefix="${GCC_ROOT}" \
               --with-mpfr="${apps}"/mpfr/3.1.4-g6.1.1 \
               --with-gmp="${apps}"/gmp/6.1.1-g6.1.1 \
               --with-mpc="${apps}"/mpc/1.0.3-g6.1.1
