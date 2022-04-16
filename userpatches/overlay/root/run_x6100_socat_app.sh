#!/bin/bash
set -e

ACTION=start

CAT_DEV=/dev/ttyS2
CAT_DEV_NEW=/dev/ttyS2_VIRT
CAT_DEV_ORG=/dev/ttyS2_USB_CAT

if [ "$1" != "" ] ; then
    ACTION=$1
fi

if [ "$ACTION" == "start" ] ; then
    if [ -e "${CAT_DEV}" ] ; then
        rm ${CAT_DEV}
    fi
    if [ -e "${CAT_DEV_NEW}" ] ; then
        rm ${CAT_DEV_NEW}
    fi

    if [ ! -e "${CAT_DEV_ORG}" ] ; then
        # create orginal
        mknod -m 660 ${CAT_DEV_ORG} c 4 66
        chown root:dialout ${CAT_DEV_ORG}
    fi

    exec socat pty,link=${CAT_DEV_NEW},raw,user=root,group=dialout,echo=0 tcp-listen:9990,bind=127.0.0.1,fork
else
    if [ -e "${CAT_DEV_ORG}" ] ; then
        rm ${CAT_DEV_ORG}
    fi
    if [ -e "${CAT_DEV}" ] ; then
        rm ${CAT_DEV}
    fi
    if [ -e "${CAT_DEV_NEW}" ] ; then
        rm ${CAT_DEV_NEW}
    fi

    if [ -e "/mnt/x6100/${CAT_DEV}" ] ; then
        umount /mnt/x6100/${CAT_DEV}
    fi
    # restore orginal
    mknod -m 660 ${CAT_DEV} c 4 66
    chown root:dialout ${CAT_DEV}

fi
