#!/bin/bash
function cleanup()
{
    echo 0 > /sys/class/gpio/gpio138/value
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

echo 1 > /sys/class/gpio/gpio138/value
chroot /mnt/x6100 /bin/bash -c 'source /etc/profile && nice --5 /usr/app_qt/x6100_ui_v100'
