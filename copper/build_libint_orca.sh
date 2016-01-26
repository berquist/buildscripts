#!/bin/bash

set -e

cd ./build_orca

../libint/configure \
    --prefix=/home/eric/opt/apps/libint/git_orca \
    --enable-eri=2 \
    --enable-eri2=2 \
    --enable-eri3=2 \
    --with-max-am=7 \
    --with-opt-am=4 \
    --with-eri-max-am=7,4,3 \
    --with-eri-opt-am=4,3,2 \
    --disable-unrolling \
    --enable-generic-code \
    --enable-contracted-ints \
    --with-cartgauss-ordering=orca \
    --with-shell-set=orca \
    --enable-debug \
    --disable-t1g12-support \
    --disable-composite-evaluators \
    --enable-mpfr \
    --enable-static \
    --enable-shared \
    --with-cxxgen-optflags="-O2"
