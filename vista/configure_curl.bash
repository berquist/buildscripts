#!/usr/bin/env bash

# source me!

./configure \
    --prefix=$apps/curl/7.61.1 \
    --with-libssh2=$apps/libssh2/git \
    --with-ssl=$apps/openssl/1.1.1
