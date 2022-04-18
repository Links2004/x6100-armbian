#!/bin/bash
set -e

cd /root/

BASE_DIR=/root/Universal_HamRadio_Remote_HTML5

if [ ! -e "${BASE_DIR}" ] ; then
    git clone --depth=1 https://github.com/F4HTB/Universal_HamRadio_Remote_HTML5.git
fi

apt-get install -y librtlsdr0
pip3 install pyrtlsdr
