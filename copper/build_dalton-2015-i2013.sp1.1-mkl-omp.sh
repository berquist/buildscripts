#!/usr/bin/env bash

ver=2015-i2013.sp1.1-mkl-omp

source /etc/profile.d/modules.sh

module purge
module load intel/2013.sp1.1
module load dalton/${ver}

cd ${apps}/dalton/2015

rm -r ${apps}/build/dalton_${ver}

./setup \
    --prefix=${DALTON_ROOT} \
    --fc=ifort \
    --cc=icc \
    --cxx=icpc \
    --mkl=parallel \
    --omp \
    ${apps}/build/dalton_${ver}

# cd ${apps}/build/dalton_${ver}
# make all -j4
# make install
