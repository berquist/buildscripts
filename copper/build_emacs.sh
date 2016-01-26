#!/bin/bash

make clean
make distclean

./configure \
    --prefix=${apps}/emacs/24.3 \
    --without-xpm --without-jpeg --without-tiff --without-gif --without-png --without-rsvg \
    --without-sound

make all -j4
make install