#!/usr/bin/env bash

module purge
# module load cmake/2.8.11.2

cd pcre2-10.00
rm -rf build
mkdir -p build
cd build

# cmake .. \
#       -DCMAKE_INSTALL_PREFIX=${apps}/pcre2/10.00 \
#       -DPCRE2_SUPPORT_JIT=ON \
#       -DPCRE2_SUPPORT_VALGRIND=OFF \
#       -DPCRE2_SUPPORT_UNICODE=ON \
#       -DBUILD_SHARED_LIBS=ON
../configure \
    --prefix=${apps}/pcre2/10.00 \
    --enable-static \
    --enable-shared \
    --enable-pcre2-8 \
    --enable-pcre2-16 \
    --enable-pcre2-32 \
    --enable-jit \
    --enable-pcre2grep-libz \
    --enable-pcre2grep-libbz2 \
    --enable-pcre2test-libreadline


make all -j2
make pcre2-config
make test
make install
