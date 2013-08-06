#!/bin/bash

version=3.900.7-sequential

source /etc/profile.d/modules.sh
module purge
module load intel/2011
module load mkl/2011/icc-st
module load armadillo/${version}

rm -rf $HOME/opt/build/armadillo-${version}-builddir >& /dev/null
mkdir  $HOME/opt/build/armadillo-${version}-builddir
cd     $HOME/opt/build/armadillo-${version}-builddir

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
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_LINKER=ld \
    ../armadillo-${version}

make -j8
make install
