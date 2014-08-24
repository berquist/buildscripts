#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load python/anaconda
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1
module load dalton/2013-mpi

cd ${DALTON_ROOT}
rm -r ./build_mpi >& /dev/null

./setup \
    --fc=mpif90 \
    --cc=mpicc \
    --cxx=mpicxx \
    --mkl=sequential \
    build_mpi

cd ./build_mpi
make -j8
