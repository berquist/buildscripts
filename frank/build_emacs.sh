#!/usr/bin/env bash

./configure \
    --prefix=${apps}/emacs/24.5 \
    --without-xpm \
    --without-jpeg \
    --without-tiff \
    --without-gif \
    --without-png \
    --without-rsvg \
    --without-sound
