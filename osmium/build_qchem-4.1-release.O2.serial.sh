#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011
module load mkl/2011/icc-st
module load qchem/4.1-release.O2.serial

cd $QC

./configure intel release mkl

cd $QC/build

sed -i -e 's/-O3/-O2/g' $QC/build/CMakeCache.txt

make generated_headers >& ../log.make.headers
make -j8 >& ../log.make

mkdir $QC/exe >& /dev/null
mv qcprog.exe $QC/exe
