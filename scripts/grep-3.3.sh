#!/bin/bash
# 5.25. Grep-3.3
set -e
cd $LFS/sources
rm -rf grep-3.3
tar xf grep-3.3.tar.xz
cd grep-3.3

./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf grep-3.3
