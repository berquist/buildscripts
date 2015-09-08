#!/usr/bin/env bash

module purge

cd pcre-8.36
rm -rf build
mkdir -p build
cd build

../configure \
    --prefix=${apps}/pcre/8.36 \
    --enable-static \
    --enable-shared \
    --enable-pcre8 \
    --enable-pcre16 \
    --enable-pcre32 \
    --enable-jit \
    --enable-unicode-properties \
    --enable-pcregrep-libz \
    --enable-pcregrep-libbz2 \
    --enable-pcretest-libreadline


make all -j2
make pcre-config
make test
make install
