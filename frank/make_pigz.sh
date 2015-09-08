#!/usr/bin/env bash

module purge

cd ${HOME}/repositories/pigz

make clean
make -j4
mv -f ./pigz ./unpigz ${HOME}/opt/bin
