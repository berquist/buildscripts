#!/usr/bin/env bash

"${HOME}"/repositories/libint/configure \
         --prefix="${apps}"/libint/git-g5.3.0 \
         --enable-static \
         --enable-shared \
         --with-cxx-optflags="-O2" \
         --with-cxxgen-optflags="-O2" \
         CC=gcc \
         CXX=g++

         # --disable-composite-evaluators \
         # --enable-contracted-ints \
         # --enable-accum-ints \
         # --enable-mpfr \

# --with-cartgauss-ordering=standard \
# --with-shell-set=standard \
# --enable-1body=4 \
# --enable-eri=2 \
# --enable-eri2=2 \
# --enable-eri3=2 \
# --with-max-am=7 \
# --with-opt-am=4 \
# --with-eri-max-am=7,4,3 \
# --with-eri-opt-am=4,3,2 \
# --with-1body-max-am=7,4,3 \
# --with-1body-opt-am=4,3,2 \
