#!/bin/bash

module purge
module load intel/2013.0
module load boost/1.51.0-intel13
module load openmpi/1.6.1-intel13
module load mkl/2013.0/icc-st
module load cuda/5.0
module load python/epd-7.3

export MKL_HOME=$MKL_ROOT

export AMBERHOME="/home/dlambrecht/erb74/qcprograms/amber/amber12"
cd $AMBERHOME
./update_amber --update
make clean >& /dev/null

./configure intel >& log.configure.serial
make AMBERBUILDFLAGS='-shared-intel -lm' install -j4 >& log.make.install.serial

./configure -mpi intel >& log.configure.mpi
make AMBERBUILDFLAGS='-shared-intel -lm' install -j4 >& log.make.install.mpi

