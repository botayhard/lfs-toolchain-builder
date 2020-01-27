#!/bin/bash
# 5.30. Python-3.7.4
set -e
cd $LFS/sources
rm -rf python-3.7.4
tar xf python-3.7.4.tar.xz
cd python-3.7.4

sed -i '/def add_multiarch_paths/a \        return' setup.py
./configure --prefix=/tools --without-ensurepip
make
make install

cd $LFS/sources
rm -rf bash-5.0
