#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
# module load libxc/2.0.2-gcc447

# cd $LIBXC_ROOT

make clean
make distclean

./configure \
    --prefix=$apps/libxc/2.0.2-gcc447

make -j8
make check
make install