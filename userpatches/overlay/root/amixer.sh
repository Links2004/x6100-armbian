#!/bin/sh
#
# Starts pulseaudio.
#

source /etc/profile
start() {
	printf "init amixer"
    amixer cset numid=10,iface=MIXER,name='AIF1 Data Digital ADC Capture Switch' on
    amixer cset numid=19,iface=MIXER,name='Mic1 Capture Switch' on
    amixer -c 0 sset 'ADC Gain',0 3
    amixer -c 0 sset 'Mic1 Boost',0 0
    amixer -c 0 sset 'Mic1',0 7
    amixer -c 0 sset 'Mic1',0 unmute
    amixer cset numid=9,iface=MIXER,name='AIF1 Slot 0 Digital DAC Playback Switch' on
    amixer -c 0 sset 'DAC',0 on
    amixer -c 0 sset 'Headphone',0 63
    amixer -c 0 sset 'Headphone',0 unmute
	echo "OK"
}
stop() {
	printf "deinit amixer"
    amixer cset numid=10,iface=MIXER,name='AIF1 Data Digital ADC Capture Switch' off
    amixer cset numid=19,iface=MIXER,name='Mic1 Capture Switch' off
    amixer -c 0 sset 'ADC Gain',0 0
    amixer -c 0 sset 'Mic1 Boost',0 0
    amixer -c 0 sset 'Mic1',0 0
    amixer -c 0 sset 'Mic1',0 mute
    amixer cset numid=9,iface=MIXER,name='AIF1 Slot 0 Digital DAC Playback Switch' off
    amixer -c 0 sset 'DAC',0 off
    amixer -c 0 sset 'Headphone',0 0
    amixer -c 0 sset 'Headphone',0 mute
	echo "OK"
}
restart() {
	stop
	start
}

case "$1" in
  start)
	start
	;;
  stop)
	stop
	;;
  restart|reload)
	restart
	;;
  *)
	echo "Usage: $0 {start|stop|restart}"
	exit 1
esac

exit $?
