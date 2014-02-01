#!/bin/bash

source /etc/profile.d/modules.sh
module purge
module load intel/2013.sp1.1
module load openmpi/1.6.5-i2013.sp1.1
module load dalton/2.0

cd ${DALTON_ROOT}
./configure
# do make separately
