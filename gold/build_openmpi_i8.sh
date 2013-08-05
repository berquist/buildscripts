#!/bin/bash

module load openmpi/1.6.5-intel13-i8

cd $HOME/opt/openmpi-$OPENMPI_BASE

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort
FFLAGS=-i8 FCFLAGS=-i8 ./configure --prefix=$OPENMPI_ROOT
make -j8
make install 