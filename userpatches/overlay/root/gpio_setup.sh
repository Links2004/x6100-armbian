#!/bin/bash

function gpio_un {
    GPIO=$1
    GPIO_PATH="/sys/class/gpio/gpio${GPIO}"
    if [ ! -d ${GPIO_PATH} ]; then
	    echo ${GPIO} > /sys/class/gpio/unexport
    fi
}

function gpio_ex {
    GPIO=$1
    GPIO_PATH="/sys/class/gpio/gpio${GPIO}"
    if [ ! -d ${GPIO_PATH} ]; then
	    echo ${GPIO} > /sys/class/gpio/export
    fi
}

function gpio_set {
    GPIO=$1
    GPIO_PATH="/sys/class/gpio/gpio${GPIO}"
    echo "out" > ${GPIO_PATH}/direction
    echo $2 > ${GPIO_PATH}/value
}

ACTION=start

if [ "$1" != "" ] ; then
    ACTION=$1
fi


if [ "$ACTION" == "start" ] ; then
    #WIFI
    gpio_ex 357
    #WIFI ON
    gpio_set 357 0

    #RF
    gpio_ex 138
    #RF OFF
    gpio_set 138 0

    #KEYPAD
    gpio_ex 143
    #KEYPAD ON
    gpio_set 143 1
else
    #KEYPAD OFF
    gpio_set 143 0

    #RF OFF
    gpio_set 138 0

    #WIFI OFF
    gpio_set 357 1

    # disable exports
    sleep 1
    gpio_un 138
    gpio_un 143
    gpio_un 357
fi
