#!/bin/bash

export STRIDE_BIN=${apps}/vmd/1.9.1-binary/

export VMDINSTALLBINDIR="$pkgdir/usr/bin"
export VMDINSTALLLIBRARYDIR="$pkgdir/usr/lib/vmd"
./configure
cd src 
make install -j8
sed -i 's|set defaultvmddir=.*|set defaultvmddir=/usr/lib/vmd|' "$pkgdir/usr/bin/vmd"
