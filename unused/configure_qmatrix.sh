#!/usr/bin/env bash

cmake ~/repositories/qmatrix \
      -DCMAKE_INSTALL_PREFIX=$apps/qmatrix/git \
      -DCMAKE_BUILD_TYPE=Release \
      -DQCMATRIX_BUILD_ADAPTER=OFF \
      -DQCMATRIX_CXX_API=ON \
      -DQCMATRIX_ENABLE_HDF5=OFF \
      -DQCMATRIX_ENABLE_VIEW=ON \
      -DQCMATRIX_Fortran_API=None
