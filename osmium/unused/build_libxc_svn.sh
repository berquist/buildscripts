#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load libxc/2.2.0-gcc4.8.2

#cd $LIBXC_ROOT
autoreconf -i

#make clean
#make distclean

./configure \
    --prefix=$apps/libxc/2.2.0-gcc4.8.2 \
    --enable-static \
    --enable-shared

make -j4
make check
make install
