#!/bin/bash
set -e

BASE_DIR=/root/build/framebuffer-vncserver

mkdir -p /root/build
cd /root/build

if [ ! -e "${BASE_DIR}" ] ; then
    git clone --depth=1 https://github.com/ponty/framebuffer-vncserver.git
fi

cd "${BASE_DIR}"
git pull

if [ -e "${BASE_DIR}/build" ] ; then
    rm -rf "${BASE_DIR}/build"
fi

mkdir -p "${BASE_DIR}/build"
cd "${BASE_DIR}/build"

cmake ..
make

make install

# cleanup
if [ -e "${BASE_DIR}/build" ] ; then
    rm -rf "${BASE_DIR}/build"
fi