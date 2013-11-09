#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.0
module load mkl/2013.0/icc-st
module load python/anaconda
module load openmpi/1.6.5-intel2013.0-i8
module load nwchem/6.1.1-intel2013.0

cd $NWCHEM_TOP/src
make nwchem_config
make CC=icc FC=ifort -j8 >& $NWCHEM_TOP/log.make
