#!/bin/bash

cd $HOME/opt/build

rm -r ./*arma*builddir* >& /dev/null
rm log.armadillo_ldd_results

build_armadillo-3.900.7.sh                   >& log.armadillo-3.900.7
build_armadillo-3.900.7-sequential.sh        >& log.armadillo-3.900.7-sequential
build_armadillo-3.900.7-nowrap.sh            >& log.armadillo-3.900.7-nowrap
build_armadillo-3.900.7-nowrap-sequential.sh >& log.armadillo-3.900.7-nowrap-sequential

echo "*** Before loading modules ***" >> log.armadillo_ldd_results
ldd armadillo-3.900.7*builddir/libarmadillo.so >> log.armadillo_ldd_results

source /etc/profile.d/modules.sh
module rm gcc intel mkl
module load gcc/builtin/4.4.7
module load intel/2011
module load mkl/2011/icc-st

echo "*** After loading modules ***" >> log.armadillo_ldd_results
ldd armadillo-3.900.7*builddir/libarmadillo.so >> log.armadillo_ldd_results