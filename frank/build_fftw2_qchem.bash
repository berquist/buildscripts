#!/usr/bin/env bash

module purge
module load intel/2013.0
module load mpi/openmpi/1.6.5-i2013.0

_basename=fftw
pkgver=2.1.5
archive=${_basename}-${pkgver}.tar.gz

# wget http://www.fftw.org/${archive}

# tar xf ${archive}

cd ${_basename}-${pkgver}

CFLAGS+=" -fomit-frame-pointer -align -fstrict-aliasing -fast"

./configure \
    CC=icc \
    F77=ifort \
    --prefix=${apps}/${_basename}/${pkgver}-i2013.0-qchem \
    --enable-type-prefix \
    --enable-shared \
    --enable-threads \
    --enable-openmp \
    --enable-mpi
