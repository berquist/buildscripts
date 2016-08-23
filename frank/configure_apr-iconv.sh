#!/bin/bash

# source me!

ver=1.2.1

./configure \
    --prefix=$apps/apr-iconv/$ver \
    --with-apr=$apps/apr/1.5.2
