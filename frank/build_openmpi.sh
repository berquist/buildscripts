#!/bin/bash

module purge
module load modules use.own
module load intel/2013.0

cd $HOME/programs/openmpi-1.6.4/

export CC=icc; export CXX=icpc; export FC=ifort; export F77=ifort
FFLAGS=-i8 FCFLAGS=-i8 ./configure --prefix=$HOME/programs/openmpi-1.6.4/
make -j8
make install 