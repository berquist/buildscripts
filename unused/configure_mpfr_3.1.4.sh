ver=3.1.4
dir_source=${apps}/build/mpfr-${ver}

source /etc/profile.d/modules.sh
module purge
cd ${dir_source}

# --enable-gmp-internals  enable use of GMP undocumented functions [default=no]
# --enable-assert         enable ASSERT checking [default=no]
# --enable-logging        enable MPFR logging (the system must support it)
# [default=no]
# --disable-thread-safe   explicitly disable TLS support
# --enable-thread-safe    build MPFR as thread safe, i.e. with TLS support
# (the system must support it) [default=autodetect]
# --enable-warnings       allow MPFR to output warnings to stderr [default=no]
# --enable-tests-timeout=NUM    enable timeout (NUM seconds) for test programs
# (NUM <= 9999) [default=no]; if enabled, env variable
#                                $MPFR_TESTS_TIMEOUT overrides NUM (0: no timeout).
#                                --enable-dependency-tracking
# do not reject slow dependency extractors
#    --disable-dependency-tracking
#    speeds up one-time build
#    --enable-decimal-float  build conversion functions from/to decimal floats
#    [default=no]
#    --enable-shared[=PKGS]  build shared libraries [default=yes]
#      --enable-static[=PKGS]  build static libraries [default=yes]

./configure \
    --prefix=${apps}/mpfr/${ver}-g6.1.1 \
    --enable-gmp-internals \
    --enable-thread-safe \
    --enable-static \
    --enable-shared

# make -j4
# make check
# make install
