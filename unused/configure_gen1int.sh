#!/usr/bin/env bash

cmake ~/repositories/gen1int \
      -DCMAKE_INSTALL_PREFIX=$apps/gen1int/git \
      -DCMAKE_BUILD_TYPE=Release \
      -DQMATRIX_INCLUDE_DIR=/home/espeon/repositories/qmatrix/include \
      -DQMATRIX_LIB=$apps/qmatrix/git/lib/libqmatrix.a
