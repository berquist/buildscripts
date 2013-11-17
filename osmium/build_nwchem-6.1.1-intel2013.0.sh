#!/bin/bash

module purge
module load python/anaconda
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1
module load nwchem/6.1.1-i2013.sp1.1

cd $NWCHEM_TOP/src
make nwchem_config
make CC=icc FC=ifort -j8 >& $NWCHEM_TOP/log.make
