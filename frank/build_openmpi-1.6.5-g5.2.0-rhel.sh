#!/usr/bin/env bash

module purge
module load gcc/5.2.0-rhel

version=1.6.5
compiler_ver=g5.2.0-rhel

cd $apps/build/openmpi-${version}
mkdir build_${compiler_ver}
cd build_${compiler_ver}

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-${compiler_ver} \
    --disable-debug \
    --disable-debug-symbols \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix \
    --with-pic \
    --with-libltdl=internal

# make -j4
# make install
