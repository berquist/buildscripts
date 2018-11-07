#!/usr/bin/env bash

./configure \
    --prefix=$apps/termcap/1.3.1 \
    --enable-install-termcap \
    --with-termcap=$apps/termcap/1.3.1/termcap
