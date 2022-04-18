#!/bin/bash
set -e

CAT_DEV=/dev/ttyS2
CAT_DEV_NEW=/dev/ttyS2_VIRT

function cleanup()
{
    echo "cleanup"
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

TZ=$(cat /etc/timezone)
APP_ARGS=""
APP_VNC=0

if grep -r "x6100_app_hide=1" /proc/cmdline > /dev/null ; then
    APP_VNC=1
fi

if [ "$1" == "vnc" ] ; then
    APP_VNC=1
fi

if [ "${APP_VNC}" == "1" ] ; then
    echo "Starting in VNC mode"
    # Note: the APP is not happy to run in VNC mode (no egl)
    # but its runnimg so we hode all the error messages to not spam the log.
    APP_ARGS="--platform vnc:port=5901:size=800x480 >/dev/null 2>&1"

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

chroot /mnt/x6100 /bin/bash -c "source /etc/profile && export TZ=${TZ} && nice --5 /usr/app_qt/x6100_ui_v100 ${APP_ARGS}"