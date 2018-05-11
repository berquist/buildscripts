#!/bin/sh

. /etc/profile.d/modules.sh
module purge
module load amber/14-tools15-g5.3.0

cd "${AMBERHOME}"

make test.serial >& log.make.test.serial
make test.cuda >& log.make.test.cuda
DO_PARALLEL="mpirun -np 2" make test.parallel >& log.make.test.parallel.2.mpi
DO_PARALLEL="mpirun -np 4" make test.parallel >& log.make.test.parallel.4.mpi

# commands=(
#     'echo "foo"'
#     'echo "bar"'
#     'echo "baz"'
# )

# for command in ${commands[@]}; do
#     echo "${command}"
#     # $("${command}")
# done
