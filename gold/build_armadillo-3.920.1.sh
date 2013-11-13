#!/bin/bash

version=3.920.2

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load armadillo/${version}

rm -rf $apps/build/armadillo-${version}-builddir >& /dev/null
mkdir  $apps/build/armadillo-${version}-builddir
cd     $apps/build/armadillo-${version}-builddir

cmake \
    -DCMAKE_INSTALL_PREFIX=$ARMADILLO_ROOT \
    -DCMAKE_CXX_COMPILER=icpc \
    -DCMAKE_LINKER=xild \
    ../armadillo-${version}

make -j8
make install
