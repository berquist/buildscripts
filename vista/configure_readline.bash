#!/usr/bin/env bash

# curses_root=$apps/ncurses/6.1
# CPATH=$curses_root/include:$curses_root/include/ncurses:$CPATH LD_LIBRARY_PATH=$curses_root/lib:$LD_LIBRARY_PATH
# CPATH=$apps/termcap/1.3.1/include
./configure \
    --prefix=$apps/readline/7.0 \
    --enable-static \
    --enable-shared \
    --without-curses
