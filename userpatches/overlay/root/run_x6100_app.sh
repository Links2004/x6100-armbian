#!/bin/bash
function cleanup()
{
    echo 0 > /sys/class/gpio/gpio138/value
}

trap cleanup EXIT
trap cleanup SIGINT

echo 1 > /sys/class/gpio/gpio138/value
chroot /mnt/x6100 /bin/bash -c 'source /etc/profile && nice --5 /usr/app_qt/x6100_ui_v100'
