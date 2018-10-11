#!/usr/bin/env bash

# source me!

./configure \
    --prefix=${apps}/emacs/26.1 \
    --with-x-toolkit=no \
    --with-xpm=no --with-jpeg=no --with-png=no --with-gif=no --with-tiff=no
