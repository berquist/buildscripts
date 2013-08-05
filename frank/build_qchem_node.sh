#!/bin/bash

#PBS -N qchem_build
#PBS -q shared
#PBS -l nodes=1:ppn=16
#PBS -l walltime=01:00:00
#PBS -l qos=low

module rm env intel openmpi mkl
module load intel/11.1.072
module load openmpi/1.5.1-intel11
module load mkl/11.1.072/icc-st
module load cmake
module load armadillo/3.900.6
module load qchem/dev/intel11

mkdir $LOCAL/qchem
cd $QC
rm -rf build >& /dev/null
cp -r ./* $LOCAL/qchem
cd $LOCAL/qchem

run_on_exit() {
    cd $LOCAL/qchem
    cp -r ./build $QC
    mv $QC/build/qcprog.exe $QC/exe
}

trap run_on_exit EXIT

# we don't need to pipe output, ./configure does that for us already
./configure intel nointracule nomgc noopt2 nonewpath2 release mkl

cd build

# turn off optimizations, otherwise the build takes ~1 hr
sed -i -e 's/-O2/-O0/g' CMakeCache.txt
sed -i -e 's/-O3/-O0/g' CMakeCache.txt

make generated_headers >& ./log.make.headers
# or just do 'make', figure out how to wait ~10 seconds, then kill/interrupt
make -j8 >& ./log.make
