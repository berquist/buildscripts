#!/bin/bash

version=3.900.7-nowrap

source /etc/profile.d/modules.sh
module purge
#module load intel/2013
module load mkl/2013/icc-st

#rm -rf ./armadillo-${version}-builddir >& /dev/null
#mkdir ./armadillo-${version}-builddir
#cd ./armadillo-${version}-builddir
cd ./armadillo-${version}

ABORT=no

check_cmake()
{
    (cmake --version) </dev/null >/dev/null 2>&1 ||
    {
	echo "error: cmake (version 2.6 or later) must be present to configure and install Armadillo"
	echo ""
	echo "cmake might be available as a package for your system,"
	echo "or can be downloaded from http://cmake.org"
	ABORT=yes
    }
}

check_cmake

test "$ABORT" = yes && exit -1

cmake \
    -DCMAKE_INSTALL_PREFIX=$HOME/opt/armadillo/${version} \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_Fortran_COMPILER=gfortran \
    -DCMAKE_LINKER=ld #\
#    ../armadillo-${version}

make -j8
make install
