#!/bin/bash
# 5.13. DejaGNU-1.6.2
set -e
cd $LFS/sources
rm -rf dejagnu-1.6.2
tar xf dejagnu-1.6.2.tar.gz
cd dejagnu-1.6.2

./configure --prefix=/tools
make install

cd $LFS/sources
rm -rf dejagnu-1.6.2
