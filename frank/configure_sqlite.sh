#!/bin/bash

# source me!

ver=3140100

./configure \
    --enable-static \
    --enable-shared \
    --enable-threadsafe \
    --enable-fts5 \
    --enable-json1 \
    --enable-session \
    --prefix=${apps}/sqlite/${ver}
