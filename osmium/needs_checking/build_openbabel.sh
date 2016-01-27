#!/bin/bash


rm -rf  ./openbabel-2.3.2 >& /dev/null
tar -xf ./openbabel-2-3-2.tar.gz
mv      ./openbabel-2-3-2 ./openbabel-2.3.2

rm -rf ./openbabel-build
mkdir  ./openbabel-build
cd     ./openbabel-build

cmake ../openbabel-2.3.2 \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_TESTS=ON \
    -DBUILD_GUI=ON \
    -DRUN_SWIG=ON \
    -DPYTHON_BINDINGS=ON \
    >& log.cmake

make all -j8 >& log.make
make test    >& log.make.test
