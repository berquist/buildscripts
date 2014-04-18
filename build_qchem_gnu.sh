#!/bin/bash

cd $QC

./configure gcc release timings acml openmp

cd $QC/build

sed -i -e 's/-O2/-O0/g' $QC/build/CMakeCache.txt
sed -i -e 's/-O3/-O0/g' $QC/build/CMakeCache.txt

make generated_headers
make -j2

mkdir $QC/exe 2> /dev/null
ln -fs $QC/build/qcprog.exe         $QC/exe/qcprog.exe
ln -fs $QC/build/diffParseAlone.exe $QC/util/cronutil/diffParseAlone.exe
ln -fs $QC/build/mergeLines.exe     $QC/util/cronutil/mergeLines.exe
