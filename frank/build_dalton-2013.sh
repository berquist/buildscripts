#!/bin/bash

module purge
module load python/anaconda-ejb
module load cmake/2.8.11.2
module load intel/2013.0
module load openmpi/1.6.3-intel13
module load mkl/2013.0/icc-st-openmpi
module load boost/1.51.0-intel13
module load dalton/2013

cd ${DALTON_ROOT}
rm -r ./build >& /dev/null

./setup \
    --fc=ifort \
    --cc=icc \
    --cxx=icpc \
    --mkl=sequential

cd ./build
make -j4
