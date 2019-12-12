#!/bin/sh
CURL_VERSION_STR="7.67.0"
rm -rf build_dir/curl*
tar xvf dl/curl-$CURL_VERSION_STR.tar.bz2 -C build_dir/
cd curl-$CURL_VERSION_STR
cmake -DCMAKE_INSTALL_PREFIX=/usr
make -j4
sudo make install