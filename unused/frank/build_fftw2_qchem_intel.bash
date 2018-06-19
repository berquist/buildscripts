#!/usr/bin/env bash

compiler_ver=i2013.0

module purge
module load intel/2013.0
module load mpi/openmpi/1.10.0-${compiler_ver}

_basename=fftw
pkgver=2.1.5
archive=${_basename}-${pkgver}.tar.gz

cd ${apps}/build

# wget http://www.fftw.org/${archive}
# tar xf ${archive}

modname=${pkgver}-${compiler_ver}-qchem
mkdir ${_basename}_${modname}
# cd ${_basename}_${modname}
cd ${_basename}-${pkgver}

_flags=" -O3 -fast -fomit-frame-pointer"
CFLAGS+="${_flags}"
CPPFLAGS+="${_flags}"
FFLAGS+="${_flags}"

# --enable-type-prefix

# ../${_basename}-${pkgver}/configure \
./configure \
    CC=icc \
    F77=ifort \
    --prefix=${apps}/${_basename}/${modname} \
    --enable-shared \
    --enable-threads \
    --enable-openmp \
    --enable-mpi \
    --with-pic
