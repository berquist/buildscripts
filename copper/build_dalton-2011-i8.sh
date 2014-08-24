#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1-i8
module load dalton/2011-i8

cd ${DALTON_ROOT}
./configure
# do make separately
