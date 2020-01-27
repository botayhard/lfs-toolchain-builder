#!/bin/bash
# 5.7. Glibc-2.30
set -e
cd $LFS/sources
rm -rf glibc-2.30
tar xf glibc-2.30.tar.xz
cd glibc-2.30

mkdir -v build
cd       build
../configure                             \
      --prefix=/tools                    \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --enable-kernel=3.2                \
      --with-headers=/tools/include
make
make install

cd $LFS/sources
rm -rf glibc-2.30
