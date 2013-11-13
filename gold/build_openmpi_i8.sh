#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1-i8

cd $apps/build/openmpi-$OPENMPI_BASE
make clean >& /dev/null
make uninstall >& /dev/null
export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort
FFLAGS=-i8 FCFLAGS=-i8 ./configure --prefix=$OPENMPI_ROOT
make -j8
make install 