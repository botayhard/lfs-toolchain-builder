#!/bin/bash
# 5.33. Texinfo-6.6
set -e
cd $LFS/sources
rm -rf texinfo-6.6
tar xf texinfo-6.6.tar.xz
cd texinfo-6.6

./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf texinfo-6.6
