#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1
module load amber/12-tools13-i2013

export MKL_HOME=$MKLROOT

cd $AMBERHOME
# ./update_amber --update
make clean >& /dev/null
make uninstall >& /dev/null

./configure intel >& log.configure.serial
#patch ./AmberTools/src/config.h < ../config_osmium_serial.patch >& /dev/null
#patch $AMBERHOME/src/sander/qm2_extern_orc_module.F90 < ../01.printorcastep.patch
make install -j8 >& log.make.install.serial
make test.serial >& log.make.test.serial

./configure -mpi intel >& log.configure.mpi
make install -j8 >& log.make.install.mpi
make test.serial >& log.make.test.serial.mpi

export DO_PARALLEL="mpirun -np 2"
make test.parallel >& log.make.test.parallel.2.mpi

export DO_PARALLEL="mpirun -np 4"
make test.parallel >& log.make.test.parallel.4.mpi

export DO_PARALLEL="mpirun -np 8"
make test.parallel >& log.make.test.parallel.8.mpi
