#!/usr/bin/env bash

# source me!

# make clean
# make configure

./configure \
    --prefix=${HOME}/opt/apps/git/github \
    --with-curl=${HOME}/opt/apps/curl/7.61.1 \
    --with-openssl=${HOME}/opt/apps/openssl/1.1.1 \
    --with-libpcre

# make -j4 all doc
# make install install-doc install-html
# make -j4 all
# make install
