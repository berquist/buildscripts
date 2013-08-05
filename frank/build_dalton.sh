#!/bin/bash

module purge
module load dalton/2011-intel13-i8
module load boost/1.51.0-intel13 # is Boost necessary?

cd ${DALTON_ROOT}
./configure
# do make separately