#!/bin/bash

version=3.900.7-nowrap

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011.11
module loa armadillo/${version}

cd $HOME/opt/build/armadillo-${version}

cmake \
    -DCMAKE_INSTALL_PREFIX=$HOME/opt/armadillo/${version} \
    -DCMAKE_CXX_COMPILER=icpc \
    -DCMAKE_LINKER=xild

make -j8
make install
