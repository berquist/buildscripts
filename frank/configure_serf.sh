#!/bin/bash

module rm scons
module rm python
module load python/anaconda2

# scons APR=$apps/apr/1.5.2 APU=/path/to/apu OPENSSL=/openssl/base PREFIX=/path/to/prefix
$(which scons) \
    PREFIX=$apps/serf/1.3.8 \
    APR=$apps/apr/1.5.2 \
    APU=$apps/apr-util/1.5.4 \
    OPENSSL=$apps/openssl/1.0.2h \
    -j 4

$(which scons) install
