#!/usr/bin/env bash

CPATH=$apps/ncurses/6.1/include:$apps/ncurses/6.1/include/ncurses:$CPATH ./configure \
    --prefix=$apps/readline/7.0 \
    --enable-static \
    --disable-shared \
    --with-curses
