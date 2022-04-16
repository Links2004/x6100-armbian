# x6100-armbian
tools and scripts to build armbian for the x6100

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

![armbian on x6100](docs/armbian_on_x6100.jpg)

# requirements
- SD card update image
- access to the x6100 (or a way to extract files form the update image)

# Bootup OS selection

the Image build by this repo has multiple boot options,
based on which button is pressed on startup of the Device.
currently the buttons under the screen are used.

- no Button: Boot internal storage (X6100 orginal OS)
- 1 Button: stock Kernel + Armbian with X6100 APP on screen
- 2 Button: stock Kernel + Armbian with xfce on screen + X6100 APP hidden but running for CAT
- 3 Button: Armbian Kernel + boot to console

Notes:
- you can release the button as soon the button backlight LED come on.
- Armbian Kernel currently has no support for the screen

# Status

|       	  | WiFi | BT   | Local | USB-C  |
|:----------- |:---- |:---- |:----- | :----- |
| CAT	      |  ✅  |  ❔  |  ✅   |  ✅    |
| RF Audio RX |  ✅  |  ❔  |  ✅   |  ✅    |
| RF Audio TX |  ❌  |  ❔  |  ❌   |  ✅    |
| I/Q         |  ⁉   |  ⁉   |  ⁉    |  ⁉     |

✅ = Tested and working

❔ = Needs testing and most likely little code changes

❌ = Not working at the moment but possible in theory

⁉ = unknown if possible needs research

Note:
local means running on the SoC in Linux on the X6100

# VNC

after armbian init setup, a VNC server will be running on port 5900 powered by lightdm.

Note:
the bad build in WiFi Antenna can make a VNC connection Instable very fast.

## noVNC

the VNC server can be accessed via a webbrowser:
```
http://<x6100 IP>:6080/vnc_auto.html
```

# WiFi / Network config

on the command line use `nmtui` or use the Network Manager UI after login.

## open network ports

|  Port 	|  Software                                                 |
|:--------- |:--------------------------------------------------------- |
| TCP 9090	| RAW CAT                                                   |
| TCP 7000	| RF RX (audio/x-raw,rate=16000,channels=2,format=S16LE)    |
| TCP 6080  | noVNC                                                     |
| TCP 5900	| VNC (xfce)                                                |
| TCP 4532  | rigctld                                                   |
| TCP 3389  | xrdp (untested)                                           |
| TCP 22    | SSH        	                                            |

# Audio via Network

with armbian booted the X6100 will open a TCP server on port 7000 to allow access to the RX audio stream.

## getting RX audio steam (Linux)

this will create a `X6100_RX.monitor` pulse device and connect in to the X6100

```sh
export X6100_IP=<IP of the x6100>
pactl load-module module-null-sink sink_name=X6100_RX sink_properties=device.description=X6100_RX
gst-launch-1.0 tcpclientsrc port=7000 host=${X6100_IP} ! audio/x-raw,rate=16000,channels=2,format=S16LE ! pulsesink device=X6100_RX client-name=X6100
```

# CAT via Network

the X6100 runs a `rigctld` on TCP port 4532.

for RAW Serial access via Network use TCP port 9990.

## Virtual Serial port on Linux
```sh
export X6100_IP=<IP of the x6100>
sudo socat pty,link=/dev/ttyX6100Cat,raw,echo=0,user=${USER} tcp:${X6100_IP}:9990
```

## wsjtx config

for network or local access via Hamlib use `Hamlib NET rigctl` with the IP of the X6100.
`127.0.0.1` is fine for local use.

![wsjtx rigctld config](docs/wsjtx_network.png
)

# Xorg

## virtual FHD

for setting up the screen with a virtual FHD resolution

```sh
xrandr --output None-1 --mode 480x800 --panning 1920x1080
```

# build steps

## extract uboot:
```sh
dd if=X6100-sdcard-20220219.img of=uboot_sdcard.bin bs=1024 skip=8 count=512 seek=0
```

## extract kernel and kernel modules
we need:
- zImage
- sun8i-r16-x6100.dtb
- kernel modules found in /lib/modules/5.8.9

put the files to /userpatches/overlay/extracted

example:
```
└── userpatches
    └── overlay
...
        ├── extracted
        │   ├── modules
        │   │   └── 5.8.9
        │   │       ├── kernel
        ...........
        │   │       ├── modules.alias
        │   │       ├── modules.alias.bin
        │   │       ├── modules.builtin
        │   │       ├── modules.builtin.bin
        │   │       ├── modules.builtin.modinfo
        │   │       ├── modules.dep
        │   │       ├── modules.dep.bin
        │   │       ├── modules.devname
        │   │       ├── modules.order
        │   │       ├── modules.softdep
        │   │       ├── modules.symbols
        │   │       └── modules.symbols.bin
        │   ├── sun8i-r16-x6100.dtb
        │   └── zImage
```



## build armbian:
```sh
git clone https://github.com/armbian/build --depth=1
cp -r userpatches/ build/

cd build
./compile.sh docker BOARD=lime-a33 BSPFREEZE=yes BRANCH=current RELEASE=sid BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no DESKTOP_ENVIRONMENT=xfce DESKTOP_ENVIRONMENT_CONFIG_NAME=config_base DESKTOP_APPGROUPS_SELECTED="3dsupport browsers" COMPRESS_OUTPUTIMAGE=sha,gpg,img
```

## install on sdcard

install armbian:
```sh
dd if=output/images/Armbian_22.05.0-trunk_Lime-a33_buster_current_5.15.32_xfce_desktop.img of=/dev/<SDCARD>
```

install uboot:
```sh
dd if=uboot_sdcard.bin of=/dev/<SDCARD> bs=1024 seek=8
```

# booting armbian kernel

Note:
currently the screen driver src is not public, resulting in no screen output.
(kernel/drivers/gpu/drm/panel/panel-jlt4013a-pss.ko)

change:
/userpatches/overlay/boot.cmd

from:
```sh
load ${devtype} ${devnum} ${kernel_addr_r} ${prefix}/zImage_org
```

to:
```sh
load ${devtype} ${devnum} ${kernel_addr_r} ${prefix}/zImage
```

if changed live on the x6100 rebuild:
```sh
mkimage -C none -A arm -T script -d boot.cmd boot.scr
```

# starting radio UI

Using ssh or serial:
```sh
/etc/init.d/lightdm stop
/root/chroot_onboard.sh
/etc/init.d/S99userappstart start
```

# working with the device tree

```sh
dtc -I dtb -O dts sun8i-r16-x6100.dtb > sun8i-r16-x6100.dts

dtc -I dts -O dtb sun8i-r16-x6100.dts > sun8i-r16-x6100.dtb
```

# uboot

## get all gpio

```sh
gpio status -a
```

## get button state

this code checks the buttons below the screen.
number 1 is the left most.

```sh
#set matrix row
gpio clear PG6

if gpio input PE16 ; then
echo 1
elif gpio input PE17 ; then
echo 2
elif gpio input PE11 ; then
echo 3
else
echo none
fi

#reset matrix
gpio input PG6
```
