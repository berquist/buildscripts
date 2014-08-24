#!/bin/bash

version=4.5.4

source /etc/profile.d/modules.sh
module purge
module load mpfr/3.1.2-gcc4.7.3
module load gmp/5.1.2-gcc4.7.3
module load mpc/1.0.1-gcc4.7.3

#CC=/usr/bin/gcc-4.4
#CXX=/usr/bin/g++-4.4

CPLUS_INCLUDE_PATH=/usr/include/x86_64-linux-gnu/c++/4.7/bits:/usr/include/x86_64-linux-gnu/c++/4.7:/usr/include/x86_64-linux-gnu/c++:$CPLUS_INCLUDE_PATH

rm -rf ./gcc-${version}-builddir >& /dev/null
mkdir ./gcc-${version}-builddir
cd ./gcc-${version}-builddir

../gcc-${version}/configure \
    --prefix=/home/eric/opt/gcc/${version} \
    --enable-languages=c,c++,fortran \
    --with-mpfr=/home/eric/opt/mpfr/3.1.2-gcc4.7.3 \
    --with-gmp=/home/eric/opt/gmp/5.1.2-gcc4.7.3 \
    --with-mpc=/home/eric/opt/mpc/1.0.1-gcc4.7.3

make -j8
make all -j8
#make install