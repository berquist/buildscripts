#!/bin/bash

cmake \
    -DCMAKE_INSTALL_PREFIX="${apps}"/erkale/20170318_4a93bbd \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_Fortran_COMPILER=gfortran \
    -DSVN_VERSION=OFF \
    ..
