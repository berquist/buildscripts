#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011
module load mkl/2011/icc-st
module load armadillo/3.900.7-nowrap-sequential
module load qchem/dev/4.1-intel11-clean

# export CPLUS_INCLUDE_PATH=/usr/include/x86_64-linux-gnu/c++/4.7/bits:/usr/include/x86_64-linux-gnu/c++/4.7:/usr/include/x86_64-linux-gnu/c++$CPLUS_INCLUDE_PATH

cd $QC
#rm -rf build >& /dev/null

# we don't need to pipe output, ./configure does that for us already
./configure intel nointracule nomgc noccman2 noopt2 nonewpath2 release mkl

cd $QC/build

# turn off optimizations, otherwise the build takes ~1 hr
sed -i -e 's/-O2/-O0/g' $QC/build/CMakeCache.txt
sed -i -e 's/-O3/-O0/g' $QC/build/CMakeCache.txt

make generated_headers >& ../log.make.headers
# or just do 'make', figure out how to wait ~10 seconds, then kill/interrupt
make -j8 >& ../log.make

mkdir $QC/exe >& /dev/null
mv qcprog.exe $QC/exe
