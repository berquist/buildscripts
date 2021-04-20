#!/bin/bash

# source me!

ver=2020.0-g10.2.0-mkl-mpi
dir_build="${apps}"/build/dalton_"${ver}"
dir_source="${HOME}"/repositories/dalton_2020.0

# mkdir -p "${dir_build}"
# cd "${dir_build}"

# cmake \
#     -DCMAKE_INSTALL_PREFIX="${apps}/dalton/${ver}" \
#     -DCMAKE_BUILD_TYPE=Release \
#     -DENABLE_MPI=ON \
#     -DENABLE_PDE=ON \
#     -DENABLE_VPOTDAMP=ON \
#     -DENABLE_OPENMP=ON \
#     -DBLAS_TYPE=MKL \
#     -DLAPACK_TYPE=MKL \
#     -DENABLE_PCMSOLVER=ON \
#     "${dir_source}"
"${dir_source}"/setup \
               --prefix="${apps}/dalton/${ver}" \
               --mpi \
               "${dir_build}"
cd "${dir_build}"
