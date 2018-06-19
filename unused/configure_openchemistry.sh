#!/bin/bash

mkdir build_bundle2
cd build_bundle2

cmake .. \
      -DBUILD_AVOGADRO_CLIENT_SERVER=ON \
      -DBUILD_DOCUMENTATION=ON \
      -DBUILD_MOLEQUEUE_UIT=OFF \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=$apps/OpenChemistry/bundle \
      -DUSE_SYSTEM_BOOST=ON \
      -DUSE_SYSTEM_EIGEN=ON \
      -DUSE_SYSTEM_HDF5=ON
