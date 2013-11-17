#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load qchem/4.1-release.O2.omp

cd $QC

./configure intel release mkl openmp

cd $QC/build

sed -i -e 's/-O3/-O2/g' $QC/build/CMakeCache.txt

make generated_headers >& ../log.make.headers
make -j8 >& ../log.make

mkdir $QC/exe >& /dev/null
ln -fs $QC/build/qcprog.exe $QC/exe/qcprog.exe
