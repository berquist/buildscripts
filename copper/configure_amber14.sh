#!/bin/sh

. /etc/profile.d/modules.sh
module purge
module load amber/14-tools15-g5.3.0
# module load orca/3.0.3
# module load nwchem/6.0-binary

# 84654:84730  GOTO=/usr/lib/libopenblas_sandybridgep-r0.2.14.so ./configure --with-netcdf /usr gnu
# 84657:84733  GOTO=/usr/lib/libopenblas_sandybridgep-r0.2.14.so ./configure --with-netcdf /usr -cuda gnu
# 84660:84736  GOTO=/usr/lib/libopenblas_sandybridgep-r0.2.14.so ./configure --with-netcdf /usr -cuda gnu
# 84661:84737  GOTO=/usr/lib/libopenblas_sandybridgep-r0.2.14.so ./configure --with-netcdf /usr -mpi gnu
# 84663:84739  GOTO=/usr/lib/libopenblas_sandybridgep-r0.2.14.so ./configure --with-netcdf /usr -openmp gnu

cd "${AMBERHOME}"
./update_amber --update
# make clean >& /dev/null
# make uninstall >& /dev/null

GOTO=/usr/lib/libopenblas.so ./configure --with-netcdf /usr gnu
# GOTO=/usr/lib/libopenblas.so ./configure --with-netcdf /usr -cuda gnu
# GOTO=/usr/lib/libopenblas.so ./configure --with-netcdf /usr -mpi gnu
# GOTO=/usr/lib/libopenblas.so ./configure --with-netcdf /usr -openmpi gnu

# ./configure intel >& log.configure.serial
# make install -j8 >& log.make.install.serial
# make test.serial >& log.make.test.serial

# ./configure -mpi intel >& log.configure.mpi
# make install -j8 >& log.make.install.mpi
# make test.serial >& log.make.test.serial.mpi

# export DO_PARALLEL="mpirun -np 2"
# make test.parallel >& log.make.test.parallel.2.mpi

# export DO_PARALLEL="mpirun -np 4"
# make test.parallel >& log.make.test.parallel.4.mpi
