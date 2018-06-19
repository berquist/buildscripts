#!/bin/bash

module rm
module load cmake

module load intel/2011.1
module load openmpi/1.4.3-intel12
module load mkl/2011.1/icc-st
module load gsl/1.15-intel12 
module load fftw/3.2.2-intel12

#rm -r gromacs-4.5.5
#tar -xf gromacs-4.5.5.tar.gz
rm ./gromacs-4.5.5/single/CMakeCache.txt
rm ./gromacs-4.5.5/double/CMakeCache.txt

cd ./gromacs-4.5.5

mkdir ./single
cd ./single

cmake \
    -DCMAKE_C_COMPILER=CC \
    -DCMAKE_CXX_COMPILER=CXX \
    -DCMAKE_Fortran_COMPILER=FC \
    -DCMAKE_PREFIX_PATH=/opt/sam/fftw/3.2.2/intel12/serial/fast \
    -DGMX_THREADS=ON \
    -DGMX_SHARED_LIBS=ON \
    -DGMX_X11=ON \
    -DGMX_QMMM_PROGRAM=ORCA \
    ../
make -j4

cd ..

mkdir ./double
cd ./double

cmake \
    -DCMAKE_C_COMPILER=CC \
    -DCMAKE_CXX_COMPILER=CXX \
    -DCMAKE_Fortran_COMPILER=FC \
    -DCMAKE_PREFIX_PATH=/opt/sam/fftw/3.2.2/intel12/serial/fast \
    -DGMX_THREADS=ON \
    -DGMX_SHARED_LIBS=ON \
    -DGMX_X11=ON \
    -DGMX_QMMM_PROGRAM=ORCA \
    ../ \
    -DGMX_DOUBLE=ON \
    -DGMX_LIBS_SUFFIX=_d
make -j4

cd ../..