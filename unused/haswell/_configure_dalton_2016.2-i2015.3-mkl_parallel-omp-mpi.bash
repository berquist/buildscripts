#!/bin/bash

# source me!

ver=2016.2-i2015.3-mkl_parallel-omp-mpi
dir_build="$apps"/build/dalton_"$ver"
dir_source="$apps"/dalton/2016.2-source

module purge
module load intel/15.0.3
module load mkl/11.2
module load openmpi/1.10.2

\rm -rf "$dir_build"
mkdir "$dir_build"
cd "$dir_source"

./setup \
    --prefix="$apps"/dalton/$ver \
    --cc=mpicc \
    --cxx=mpicxx \
    --fc=mpiifort \
    --mkl=parallel \
    --omp \
    --mpi \
    "$dir_build"

# make all -j16
# OMP_NUM_THREADS=2 ctest -j4
# make install
