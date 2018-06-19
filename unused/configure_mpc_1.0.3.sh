ver=1.0.3
dir_source=${apps}/build/mpc-${ver}

source /etc/profile.d/modules.sh
module purge
cd ${dir_source}

./configure \
    --prefix=${apps}/mpc/${ver}-g6.1.1 \
    --enable-static \
    --enable-shared \
    --with-mpfr=${apps}/mpfr/3.1.4-g6.1.1 \
    --with-gmp=${apps}/gmp/6.1.1-g6.1.1 \

# make -j4
# make check -j4
# make install
