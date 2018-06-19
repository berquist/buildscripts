#!/bin/sh

# source me!

./configure \
    --prefix=${apps}/emacs/25.1 \
    --without-xpm \
    --without-jpeg \
    --without-tiff \
    --without-gif \
    --without-png \
    --without-rsvg \
    --without-sound
