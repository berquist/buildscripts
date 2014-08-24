#!/bin/bash

version=4.000.2-wrapper

source /etc/profile.d/modules.sh
module purge
module load armadillo/${version}

rm -rf $apps/build/armadillo-${version}-builddir >& /dev/null
mkdir  $apps/build/armadillo-${version}-builddir
cd     $apps/build/armadillo-${version}-builddir

# sed -i 's|#define ARMA_BLAS_UNDERSCORE|// #define ARMA_BLAS_UNDERSCORE|g' ../armadillo-${version}/include/armadillo_bits/config.hpp.cmake

cmake \
    -DCMAKE_INSTALL_PREFIX=$ARMADILLO_ROOT \
    ../armadillo-${version}

make
make install
