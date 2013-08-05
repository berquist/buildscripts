#!/bin/bash

module rm env intel openmpi mkl qchem
module load intel/11.1.072
module load mkl/11.1.072/icc-st
module load cmake
module load armadillo/3.900.6
module load qchem/dev/intel11

cd $QC
#rm -rf build >& /dev/null

# we don't need to pipe output, ./configure does that for us already
./configure intel nointracule nomgc noopt2 nonewpath2 release mkl

cd build

# turn off optimizations, otherwise the build takes ~1 hr
sed -i -e 's/-O2/-O0/g' CMakeCache.txt
sed -i -e 's/-O3/-O0/g' CMakeCache.txt

make generated_headers >& ../log.make.headers
# or just do 'make', figure out how to wait ~10 seconds, then kill/interrupt
make -j4 >& ../log.make

mv qcprog.exe ../exe