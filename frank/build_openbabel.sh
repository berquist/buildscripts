#!/usr/bin/env bash

module purge
module load modules

module load doxygen/git
module load pcre/8.36
module load swig/3.0.4
module load python/anaconda3

module load cmake/2.8.11.2
module load eigen/2.0.17
module load eigen/3.2.1-gcc48
module load boost/1.55.0-gcc45

module rm gcc
module load gcc/4.8.2

mkdir ${apps}/build/openbabel-git
cd ${apps}/build/openbabel-git

cmake ${HOME}/repositories/openbabel \
      -DCMAKE_INSTALL_PREFIX=${apps}/openbabel/git \
      -DCMAKE_C_COMPILER=gcc \
      -DCMAKE_CXX_COMPILER=g++ \
      -DBUILD_DOCS=ON \
      -DBUILD_EXAMPLES=OFF \
      -DBUILD_GUI=ON \
      -DENABLE_TESTS=ON \
      -DENABLE_OPENMP=ON \
      -DRUN_SWIG=ON \
      -DPYTHON_BINDINGS=ON \
      -DR_BINDINGS=OFF

sed -i "/PYTHON_INCLUDE_DIR:PATH=/c\PYTHON_INCLUDE_DIR:PATH=${ANACONDA_INCLUDE}" CMakeCache.txt
sed -i "/PYTHON_LIBRARY:FILEPATH=/c\PYTHON_LIBRARY:FILEPATH=${ANACONDA_LIB}/libpython3.so" CMakeCache.txt

make all -j2
make install
