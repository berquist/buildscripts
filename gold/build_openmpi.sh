#!/bin/bash

module load openmpi/1.6.5-intel13

cd $HOME/opt/openmpi-$OPENMPI_BASE

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort
./configure --prefix=$OPENMPI_ROOT
make -j8
make install 