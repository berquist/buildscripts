#!/bin/bash

# source /etc/profile.d/modules.sh
# module purge
# module load intel/2013.sp1.1
# module load armadillo/4.000.2
# module load qchem/qclab

cd $QC

./configure intel timings nointracule nomgc noccman2 noopt2 nonewpath2 debug mkl openmp
# ./configure intel release mkl openmp

cd $QC/build

sed -i -e 's/-O2/-O0/g' $QC/build/CMakeCache.txt
sed -i -e 's/-O3/-O0/g' $QC/build/CMakeCache.txt

make generated_headers # >& ../log.make.headers
make -j4 # >& ../log.make

mkdir $QC/exe 2> /dev/null
ln -fs $QC/build/qcprog.exe $QC/exe/qcprog.exe
