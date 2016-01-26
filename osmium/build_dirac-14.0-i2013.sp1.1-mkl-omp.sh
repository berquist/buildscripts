#!/usr/bin/env bash

name="14.0-i2013.sp1.1-mkl-omp"

module purge
module load intel/2013.sp1.1
module load dirac/${name}

source ${HOME}/data/virtualenvs/2/stock/bin/activate

./setup \
    --cc=icc \
    --cxx=icpc \
    --fc=ifort \
    --mkl=parallel \
    --coverage \
    --run-unit-tests \
    --prefix=${apps}/dirac/${name} \
    "${apps}/build/dirac_${name}"

# make -j4
# make test -j4
# make install
