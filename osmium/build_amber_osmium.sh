#!/bin/bash

export MKL_HOME=$MKLROOT
export AMBERHOME=$QCPROGS/amber/amber12
cd $AMBERHOME
./update_amber --update
make clean        >& /dev/null
./configure intel >& log.configure.serial
patch ./AmberTools/src/config.h < ../config_osmium_serial.patch >& /dev/null
make install -j8  >& log.make.install.serial
