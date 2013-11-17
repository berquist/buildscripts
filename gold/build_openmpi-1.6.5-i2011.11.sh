#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load gcc/builtin/4.4.7
module load intel/2011.11
module load openmpi/1.6.5-i2011.11

cd $apps/build/openmpi-$OPENMPI_VER
make clean >& /dev/null
make uninstall >& /dev/null
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort
./configure --prefix=$OPENMPI_ROOT
make -j8
make install 