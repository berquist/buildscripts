#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load python/anaconda
module load intel/2013.sp1.1
module load dalton/2013

cd ${DALTON_ROOT}
rm -r ./build >& /dev/null

./setup \
    --fc=ifort \
    --cc=icc \
    --cxx=icpc \
    --mkl=sequential

cd ./build
make -j8
