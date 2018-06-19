#!/bin/bash

module purge
module load python/anaconda
module load cmake/2.8.11.2
module load intel/2013.0
module load openmpi/1.6.5-intel12
module load mkl/2013.0/icc-st-openmpi
module load boost/1.55.0-gcc45
export LOCAL=$scratch
module load dalton/2013

cd ${DALTON_ROOT}
rm -r ./build >& /dev/null

./setup \
    --fc=ifort \
    --cc=icc \
    --cxx=icpc \
    --mkl=sequential \
    build

cd ./build
make
