#!/usr/bin/env bash

# source me!

version=1.10.0
compiler_ver=5.2.0-rhel
module_ver=g${compiler_ver}

module purge
module load gcc/${compiler_ver}

cd ${apps}/build/openmpi-${version}
mkdir build_${module_ver}
cd build_${module_ver}

../configure \
    --prefix=${apps}/mpi/openmpi/${version}-${module_ver} \
    --disable-debug \
    --disable-debug-symbols \
    --disable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix
