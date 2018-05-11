#!/usr/bin/env bash

export NWCHEM_TOP=$PWD
export NWCHEM_TARGET=LINUX64
# export ARMCI_NETWORK=OPENIB
export USE_MPI=y
export USE_MPIF=y
export USE_MPIF4=y
export LIBMPI="-lmpi_f90 -lmpi_f77 -lmpi"
export MPI_LIB="-L$MPI_ROOT/lib"
export MPI_INCLUDE="-I$MPI_ROOT/include"
# export ARMCI_NEWWORK=OPENIB
# export IB_INCLUDE=/usr/include
export MSG_COMMS=MPI
export NWCHEM_MODULES="all python"
export LARGE_FILES=true
export USE_NOFSCHECK=true
#export LIB_DEFINES="-DDFLT_TOT_MEM=16777216"
export USE_SCALAPACK=y
export SCALAPACK="-L$MKL_ROOT/lib/intel64 -lmkl_scalapack_ilp64 -lmkl_blacs_openmpi_ilp64"
export BLASOPT="-L$MKL_ROOT/lib/intel64 -lmkl_solver_ilp64_sequential -lmkl_intel_ilp64 -lmkl_sequential -lmkl_core"
export USE_64TO32=yes
export SCALAPACK_SIZE=4
export BLAS_SIZE=4
export LAPACK_SIZE=4
