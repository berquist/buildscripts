#!/bin/bash

module rm intel openmpi mkl 
module load use.own 
module load intel/2013.0 
module load openmpi/1.6.4-intel13-i8 
module load mkl/2013.0/icc-st-openmpi-i8 

cd ./libint-2.0.3-stable

./configure \
    CC=CC \
    CXX=CXX \
    FC=FC \
    F77=FC \
    LD=xild \
    AR=xiar