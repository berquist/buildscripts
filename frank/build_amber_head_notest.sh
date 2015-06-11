#!/bin/bash

module purge
module load moadles
module load amber/12-intel-custom

export MKL_HOME=$MKL_ROOT

cd $AMBERHOME
./update_amber --update
# make clean >& /dev/null
# make uninstall >& /dev/null

./configure intel >& log.configure.serial
make install -j4 >& log.make.install.serial

./configure -mpi intel >& log.configure.mpi
make install -j4 >& log.make.install.mpi
