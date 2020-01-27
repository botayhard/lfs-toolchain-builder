#!/bin/bash
# 5.24. Gettext-0.20.1
set -e
cd $LFS/sources
rm -rf gettext-0.20.1
tar xf gettext-0.20.1.tar.xz
cd gettext-0.20.1

cd gettext-tools
./configure --disable-shared
make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /tools/bin

cd $LFS/sources
rm -rf gettext-0.20.1
