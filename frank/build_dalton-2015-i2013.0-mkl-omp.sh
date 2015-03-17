#!/usr/bin/env bash

ver=2015-i2013.0-mkl-omp

module purge
module load python/anaconda
module load cmake/2.8.11.2
module load intel/2013.0
module load mkl/2013.0/icc-mt
module load boost/1.55.0-gcc45
export LOCAL=$scratch
module load dalton/${ver}

cd ${apps}/dalton/2015-source

rm -r ${apps}/build/dalton_${ver}

./setup \
    --prefix=${DALTON_ROOT} \
    --fc=ifort \
    --cc=icc \
    --cxx=icpc \
    --mkl=parallel \
    --omp \
    ${apps}/build/dalton_${ver}

cd ${apps}/build/dalton_${ver}
make all -j2
make install
