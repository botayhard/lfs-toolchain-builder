#!/bin/bash
# 5.17. Bison-3.4.1
set -e
cd $LFS/sources
rm -rf bison-3.4.1
tar xf bison-3.4.1.tar.xz
cd bison-3.4.1

./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf bison-3.4.1
