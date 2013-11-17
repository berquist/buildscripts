#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load python/anaconda
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1
module load psi/4.0b5-i2013

cd $apps/build/psi4.0b5
rm -rf ./obj >& /dev/null
mkdir ./obj
cd ./obj

export CC=icc
export CXX=icpc
export FC=ifort
export F77=$FC
export F90=$FC
export AR=xiar

../configure.cmake \
    --with-erd \
    --with-plugins \
    --with-f77symbol=detect \
    --with-lapack=-lmkl \
    --with-opt \
    --prefix=${PSIHOME}

make -j8
make tests
make install
