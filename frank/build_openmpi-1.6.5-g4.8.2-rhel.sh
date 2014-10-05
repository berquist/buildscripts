#!/bin/bash

module purge
module load gcc/4.8.2-rhel

version=1.6.5

cd $apps/build/openmpi-${version}
mkdir build_g4.8.2-rhel
cd build_g4.8.2-rhel

../configure \
    --prefix=$apps/openmpi/${version}-g4.8.2-rhel \
    --enable-static \
    --enable-shared \
    --enable-smp-locks \
    --with-threads=posix

make -j4
make install
