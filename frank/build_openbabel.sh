#!/bin/bash

module purge
module load gold sys modules torque
#module load env/intel-2013.0-openmpi-1.6
#module load boost/1.51.0-intel13
module load gcc/4.7.2
module load openmpi/1.6.3-gcc47
module load mkl/11.1.072/gcc-st
module load boost/1.50.0-gcc45
module load cmake
module load eigen
#module load python/epd-7.3

echo "rm -rf ./openbabel-build"
rm -rf ./openbabel-build
echo "mkdir ./openbabel-build"
mkdir ./openbabel-build
echo "cd ./openbabel-build"
cd ./openbabel-build

cmake ../openbabel-2.3.2 \
    -DCMAKE_BUILD_TYPE=DEBUG \
    -DCMAKE_C_COMPILER=CC \
    -DCMAKE_CXX_COMPILER=CXX \
    -DENABLE_TESTS=ON \
    -DEIGEN2_INCLUDE_DIR=/opt/sam/eigen/2.0.17/include \
    -DEIGEN3_INCLUDE_DIR=/opt/sam/eigen/3.1.1/include \
    -DBUILD_GUI=ON \
    -DRUN_SWIG=ON \
    -DSWIG_DIR=/opt/sam/swig/2.0.9-defaults/share/swig/2.0.9 \
    -DSWIG_EXECUTABLE=/opt/sam/swig/2.0.9-defaults/bin/swig \
    -DPYTHON_BINDINGS=ON \
    >& log.cmake

make all -j8 >& log.make
make test    >& log.make.test