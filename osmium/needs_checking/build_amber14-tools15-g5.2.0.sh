#!/usr/bin/env bash

source /etc/profile.d/modules.sh

module purge
module load amber/14-tools15-g5.2.0
module load orca/3.0.3
module load gaussian/blacklight/g09D.01
module load nwchem/6.0-binary

cd "${AMBERHOME}"

make clean >& /dev/null
make uninstall >& /dev/null

./configure intel >& log.configure.serial
make install -j4 >& log.make.install.serial
make test.serial >& log.make.test.serial

./configure -mpi intel >& log.configure.mpi
make install -j4 >& log.make.install.mpi

export DO_PARALLEL="mpirun -np 2"
make test.parallel >& log.make.test.parallel.2.mpi

export DO_PARALLEL="mpirun -np 4"
make test.parallel >& log.make.test.parallel.4.mpi
