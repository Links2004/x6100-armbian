#!/bin/bash

if [ "$1" == "start" ] ; then
    mkdir -p /mnt/x6100
    mount /dev/mmcblk2p2 /mnt/x6100

    mount -t proc proc  /mnt/x6100/proc
    mount -t sysfs sys  /mnt/x6100/sys
    mount -o bind /dev  /mnt/x6100/dev
    mount -t devpts /dev/pts /mnt/x6100/dev/pts/

    mkdir -p /mnt/x6100/run/udev
    mount -o bind /run/udev /mnt/x6100/run/udev


    mkdir -p /var/run/pulse
    mkdir -p /mnt/x6100/tmp/pulse
    mount -o bind /var/run/pulse /mnt/x6100/tmp/pulse

    mkdir -p /var/run/dbus
    mkdir -p /mnt/x6100/tmp/dbus
    mount -o bind /var/run/dbus /mnt/x6100/tmp/dbus

    #mount -o bind,ro /usr/lib/arm-linux-gnueabihf/alsa-lib/libasound_module_pcm_pulse.so /mnt/x6100/usr/lib/alsa-lib/libasound_module_pcm_pulse.so
    #mount -o bind,ro /root/asound_x6100_app.conf /mnt/x6100/etc/asound.conf

elif  [ "$1" == "stop" ] ; then
    echo "not Implemented"
else
    chroot  /mnt/x6100 /bin/bash
fi
