ver=6.1.1
dir_source=${apps}/build/gmp-${ver}

source /etc/profile.d/modules.sh
module purge
cd ${dir_source}

# --enable-assert         enable ASSERT checking [default=no]
# --enable-alloca         how to get temp memory [default=reentrant]
# --enable-cxx            enable C++ support [default=no]
# --enable-assembly       enable the use of assembly loops [default=yes]
# --enable-fft            enable FFTs for multiplication [default=yes]
# --enable-old-fft-full   enable old mpn_mul_fft_full for multiplication
# [default=no]
# --enable-nails          use nails on limbs [default=no]
# --enable-profiling      build with profiler support [default=no]
# --enable-fat            build fat libraries on systems that support it
# [default=no]
# --enable-minithres      choose minimal thresholds for testing [default=no]
# --enable-fake-cpuid     enable GMP_CPU_TYPE faking cpuid [default=no]
# --enable-shared[=PKGS]  build shared libraries [default=yes]
#   --enable-static[=PKGS]  build static libraries [default=yes]

# do not --enable-fat - see https://bugs.archlinux.org/task/47284 

./configure \
    --prefix=${apps}/gmp/${ver}-g6.1.1 \
    --enable-cxx \
    --enable-static \
    --enable-shared

# make -j4
# make check -j4
# make install
