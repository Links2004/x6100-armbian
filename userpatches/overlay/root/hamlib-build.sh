#!/bin/bash
set -e

mkdir -p /root/build
cd /root/build

BASE_DIR=/root/build/Hamlib

mkdir -p /root/build
cd /root/build

if [ ! -e "${BASE_DIR}" ] ; then
    git clone --depth=1 https://github.com/Hamlib/Hamlib.git
fi

cd "${BASE_DIR}"
git pull

mkdir -p "${BASE_DIR}/build"
cd "${BASE_DIR}/build"

../bootstrap
../configure --prefix="" --host=arm-linux-gnueabihf --libdir=/lib/arm-linux-gnueabihf --without-cxx-binding

make -j $(nproc)
make install

cd "${BASE_DIR}"

# cleanup
if [ -e "${BASE_DIR}/build" ] ; then
    rm -rf "${BASE_DIR}/build"
fi