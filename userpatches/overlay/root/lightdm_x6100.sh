#!/bin/bash
if grep -r "lightdm_screen=1" /proc/cmdline > /dev/null ; then
    rm /etc/lightdm/lightdm.conf.d/90-no-screen.conf
else
    cat > /etc/lightdm/lightdm.conf.d/90-no-screen.conf <<EOL
[LightDM]
start-default-seat=false
EOL
fi
