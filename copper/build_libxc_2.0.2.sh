#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.1
module load mkl/2013.1/icc-st
# module load libxc/2.0.2-intel2013.1

# cd $LIBXC_ROOT

export CC=icc; export CXX=icpc; export FC=ifort;
export LD=xild; export AR=xiar;

make clean
make distclean

./configure \
    --prefix=$apps/libxc/2.0.2-intel2013.1

make
make check
make install

