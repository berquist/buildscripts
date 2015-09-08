#!/usr/bin/env bash

compiler_ver=g5.2.0-rhel

module purge
module load gcc/5.2.0-rhel
module load mpi/openmpi/1.6.5-${compiler_ver}

_basename=fftw
pkgver=2.1.5
archive=${_basename}-${pkgver}.tar.gz

cd ${apps}/build

# wget http://www.fftw.org/${archive}
# tar xf ${archive}

cd ${_basename}-${pkgver}

CFLAGS+=" -fomit-frame-pointer -malign-double -fstrict-aliasing -ffast-math"

./configure \
    --with-gcc \
    --prefix=${apps}/${_basename}/${pkgver}-${compiler_ver}-qchem \
    --enable-type-prefix \
    --enable-shared \
    --enable-threads \
    --enable-openmp \
    --enable-mpi \
    --with-pic

# make -j4
# make install
