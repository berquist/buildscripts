#!/bin/bash

version=3.900.6

module rm cmake intel boost openmpi mkl
module load cmake
module load intel/11.1.072
module load boost/1.51.0-intel13
module load openmpi/1.4.3-intel11
module load mkl/11.1.072/icc-st

rm -rf ./armadillo-${version}-builddir >&/dev/null
mkdir ./armadillo-${version}-builddir
cd ./armadillo-${version}-builddir

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

rm -f CMakeCache.txt
rm -f *.cmake
rm -rf CMakeFiles

cmake \
    -DCMAKE_INSTALL_PREFIX=$HOME/opt/armadillo/${version} \
    -DCMAKE_C_COMPILER=icc \
    -DCMAKE_CXX_COMPILER=icpc \
    -DCMAKE_Fortran_COMPILER=ifort \
    -DCMAKE_LINKER=xild \
    ../armadillo-${version}

make -j8
make install