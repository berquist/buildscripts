make clean
make USE_OPENMP=1 -j4
make PREFIX=${apps}/openblas/0.2.14-20150420-g4.9.2 install
