#!/usr/bin/env bash

module purge
module load modules
module load pcre/8.36
module load pcre2/10.00

module load java/1.7.0-oracle
module load perl/5.16.2
module load r/3.1.1

# module load python/anaconda
module load python/anaconda3

cd swig-3.0.4
rm -rf build
mkdir -p build
cd build

../configure \
    --prefix=${apps}/swig/3.0.4
