#!/bin/bash

version=3.900.7-nowrap

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011
module load mkl/2011/icc-st
module load armadillo/${version}

rm -rf $HOME/opt/build/armadillo-${version}-builddir >& /dev/null
mkdir  $HOME/opt/build/armadillo-${version}-builddir
cd     $HOME/opt/build/armadillo-${version}-builddir

cmake \
    -DCMAKE_INSTALL_PREFIX=$HOME/opt/armadillo/${version} \
    -DCMAKE_CXX_COMPILER=icpc \
    -DCMAKE_LINKER=xild \
    ../armadillo-${version}

make -j8
make install
