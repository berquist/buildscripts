#!/usr/bin/env bash

version=1.6.5
compiler_ver=g5.2.0-rhel
module_ver=g5.2.0

module purge
module load gcc/${compiler_ver}

cd $apps/build/openmpi-${version}
mkdir build_${module_ver}
cd build_${module_ver}

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-${module_ver} \
    --disable-debug \
    --disable-debug-symbols \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix \
    --with-pic \
    --with-libltdl=internal

make -j4
make install
