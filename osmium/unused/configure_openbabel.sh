#!/bin/bash

cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$apps/openbabel/git \
    -DRUN_SWIG=ON \
    -DBUILD_DOCS=ON \
    -DENABLE_OPENMP=ON \
    -DPYTHON_BINDINGS=ON
