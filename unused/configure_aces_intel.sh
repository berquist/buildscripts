#!/usr/bin/env bash

module purge
module load modules
module load intel/2013.0
module load openmpi/1.6.3-intel13

export MKL_ROOT=${MKLROOT}
export MPIHOME=${MPI_ROOT}
export ACES_EXE_PATH=${PWD}/bin

./configure \
    --prefix=${apps}/aces/3.0-i2013.0-mkl \
    --enable-mkl \
    MKLLIBS="-Wl,--start-group -lmkl_intel_lp64 -lmkl_sequential -lmkl_core  -Wl,--end-group" \
    MKLFLAGS="-L${MKL_ROOT}/lib/intel64 -L${INTEL_ROOT}/compiler/lib/intel64" \
    FCFLAGS="-D__fortran -D__fortran77 -DMPIF2C -Zp8 -zero -traceback -DMPI2 -shared-intel -O2" \
    CFLAGS=" -DMPIF2C -DC_SUFFIX  -DMPI2 -shared-intel -O2  -DCB_SUFFIX" \
    CXXFLAGS="-DMPIF2C -DC_SUFFIX -DCB_SUFFIX  -DMPI2 -shared-intel -O2"

make -j2
