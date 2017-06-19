#!/bin/sh

source /etc/profile.d/modules.sh
module purge
module load amber/17-tools17-g5.4.0
module load orca/3.0.3

cd "${AMBERHOME}"
./update_amber --update
# make clean >& /dev/null
# make uninstall >& /dev/null

# GOTO=/usr/lib/libopenblas.so CC=gcc-5 CXX=g++-5 FC=gfortran-5 F90=gfortran-5 F77=gfortran-5 ./configure --with-netcdf /usr gnu
GOTO=/usr/lib/libopenblas.so CC=gcc-5 CXX=g++-5 FC=gfortran-5 F90=gfortran-5 F77=gfortran-5 ./configure --with-netcdf /usr -openmp gnu
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
