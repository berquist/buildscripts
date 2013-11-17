#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1

cd $apps/build/openmpi-$OPENMPI_VER
make clean >& /dev/null
make uninstall >& /dev/null
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort
./configure --prefix=$OPENMPI_ROOT
make -j8
make install 