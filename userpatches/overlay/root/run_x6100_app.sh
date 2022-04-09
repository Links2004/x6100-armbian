#!/bin/bash
echo 1 > /sys/class/gpio/gpio138/value
chroot /mnt/x6100 /bin/bash -c 'source /etc/profile && /usr/app_qt/x6100_ui_v100'