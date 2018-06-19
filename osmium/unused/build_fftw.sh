#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.0
module load mkl/2013.0/icc-st
module load openmpi/1.6.5-intel2013.0
module load fftw/3.3.3-intel2013.0

mkdir $FFTW_ROOT >& /dev/null
# cd $FFTW_ROOT
make clean

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort; export MPICC=mpicc;
./configure \
    --prefix=$FFTW_ROOT \
    --enable-shared \
    --enable-static \
    --enable-avx \
    --enable-threads \
    --enable-openmp \
    --enable-mpi

make -j8
make install
