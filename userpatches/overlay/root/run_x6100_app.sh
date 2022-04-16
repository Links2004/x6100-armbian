#!/bin/bash
set -e

CAT_DEV=/dev/ttyS2
CAT_DEV_NEW=/dev/ttyS2_VIRT

function cleanup()
{
    echo 0 > /sys/class/gpio/gpio138/value

    if [ -e "/mnt/x6100/${CAT_DEV}" ] ; then
      umount /mnt/x6100/${CAT_DEV} || true
    fi
    if [ -f "/mnt/x6100/${CAT_DEV}" ] ; then
      rm /mnt/x6100/${CAT_DEV}
    fi
}

trap cleanup EXIT
trap cleanup SIGINT

if grep -r "x6100_app_hide=1" /proc/cmdline > /dev/null ; then
    cat > /root/qtkmsconfig.json <<EOL
{
    "device": "/dev/dri/renderD128",
    "headless": "800x480"
}
EOL
else
    cat > /root/qtkmsconfig.json <<EOL
{
    "device": "/dev/dri/card1",
    "hwcursor": false,
    "pbuffers": true,
    "outputs": [
        {
            "name": "LCD",
            "mode": "800x480"
        }
    ]
}
EOL
fi

until [ -e ${CAT_DEV_NEW} ] ; do
    echo "waiting for ${CAT_DEV_NEW}"
    sleep 1
done

if [ -e "/mnt/x6100/${CAT_DEV}" ] ; then
    umount /mnt/x6100/${CAT_DEV} || true
fi

touch /mnt/x6100/${CAT_DEV}
mount -o bind ${CAT_DEV_NEW} /mnt/x6100${CAT_DEV}

echo 1 > /sys/class/gpio/gpio138/value

chroot /mnt/x6100 /bin/bash -c 'source /etc/profile && nice --5 /usr/app_qt/x6100_ui_v100'
