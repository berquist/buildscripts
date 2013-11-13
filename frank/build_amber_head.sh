#!/bin/bash

module purge
module load modules
# module load intel/2013.0
# module load boost/1.51.0-intel13
# module load openmpi/1.6.1-intel13
# module load mkl/2013.0/icc-mt-openmpi-i8
# module load cuda/5.0
# module load python/anaconda-1.6.1-sam
module load amber/12-intel-custom

export MKL_HOME=$MKL_ROOT

cd $AMBERHOME
# ./update_amber --update
make clean >& /dev/null
make uninstall >& /dev/null

./configure intel >& log.configure.serial
make install -j4 >& log.make.install.serial
make test.serial >& log.make.test.serial

./configure -mpi intel >& log.configure.mpi
make install -j4 >& log.make.install.mpi
make test.serial >& log.make.test.serial.mpi

export DO_PARALLEL="mpirun -np 2"
make test.parallel >& log.make.test.parallel.2.mpi

export DO_PARALLEL="mpirun -np 4"
make test.parallel >& log.make.test.parallel.4.mpi

