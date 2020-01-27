#!/bin/bash
# 5.26. Gzip-1.10
set -e
cd $LFS/sources
rm -rf gzip-1.10
tar xf gzip-1.10.tar.xz
cd gzip-1.10

./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf gzip-1.10
