#!/bin/bash
# 5.23. Gawk-5.0.1
set -e
cd $LFS/sources
rm -rf gawk-5.0.1
tar xf gawk-5.0.1.tar.xz
cd gawk-5.0.1

./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf gawk-5.0.1
