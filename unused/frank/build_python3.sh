#!/usr/bin/env bash

module purge
module load modules

./configure \
    --prefix=${apps}/python/3.4.2 \
    --enable-shared