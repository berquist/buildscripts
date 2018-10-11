#!/usr/bin/env bash

# source me!

./buildconf

./configure \
    --prefix=$apps/libssh2/git \
    --with-libssl-prefix=$apps/openssl/1.1.1
