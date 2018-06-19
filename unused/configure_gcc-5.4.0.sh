#!/bin/bash

ver=5.4.0
dir_source="${apps}"/build/gcc-${ver}
dir_build="${dir_source}"-build

source /etc/profile.d/modules.sh

module purge
# module load mpfr/3.1.2-gcc4.7.3
# module load gmp/5.1.2-gcc4.7.3
# module load mpc/1.0.1-gcc4.7.3
module load compilers/gcc/${ver}

rm -rf "${dir_build}" >& /dev/null
mkdir "${dir_build}"
cd "${dir_build}"

# "${dir_source}"/configure \
#   --prefix="${apps}"/gcc/${ver}
# "${dir_source}"/configure \
cd ${dir_source}
./configure \
               --prefix="${GCC_ROOT}" \
               --with-mpfr=${apps}/mpfr/3.1.4-g6.1.1 \
               --with-gmp=${apps}/gmp/6.1.1-g6.1.1 \
               --with-mpc=${apps}/mpc/1.0.3-g6.1.1

# ../gcc-4.8.1/configure \
#     --prefix=/home/eric/opt/gcc/4.8.1 \
#     --enable-languages=c,c++,fortran \
#     --with-mpfr=/home/eric/opt/mpfr/3.1.2-gcc4.7.3 \
#     --with-gmp=/home/eric/opt/gmp/5.1.2-gcc4.7.3 \
#     --with-mpc=/home/eric/opt/mpc/1.0.1-gcc4.7.3

# make -j8
# make all -j8
#make install
