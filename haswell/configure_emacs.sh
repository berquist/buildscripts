#!/bin/sh

# source me!

./configure \
    --prefix=${apps}/emacs/25.2 \
    --with-x-toolkit=no \
    --with-xpm=no --with-jpeg=no --with-png=no --with-gif=no --with-tiff=no
