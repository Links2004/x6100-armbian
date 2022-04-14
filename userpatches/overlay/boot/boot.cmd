setenv verbosity "1"
setenv devnum "0"
setenv rootdev "/dev/mmcblk${devnum}p1"
setenv nosdboot "0"

setenv kernel_addr_r 0x46000000
setenv fdt_addr_r 0x49000000
setenv ramdisk_addr_r 0x50000000

setenv consoleargs ""
setenv console "both"
setenv earlycon "on"
setenv bootlogo "false"
setenv docker_optimizations "on"

setenv fdtfile "sun8i-r16-x6100.dtb"
setenv luInitrd "uInitrd"
setenv bootargs_extra ""
setenv lkernel "zImage"

# Print boot source
itest.b *0x28 == 0x00 && echo "U-boot loaded from SD"
itest.b *0x28 == 0x02 && echo "U-boot loaded from eMMC or secondary SD"
itest.b *0x28 == 0x03 && echo "U-boot loaded from SPI"

if test "${devtype}" = "mmc"; then
	part uuid mmc ${devnum}:1 partuuid;
	setenv devnum ${mmc_bootdev}
	setenv rootdev "/dev/mmcblk${mmc_bootdev}p1"
fi

echo "Boot script loaded from ${devtype}"
echo "rootdev: ${rootdev}"
echo "devnum: ${devnum}"
echo "mmc_bootdev: ${mmc_bootdev}"
echo "prefix: ${prefix}"

if test -e ${devtype} ${devnum} ${prefix}/x6100Env.txt; then
	load ${devtype} ${devnum} ${kernel_addr_r} ${prefix}/x6100Env.txt
	env import -t ${kernel_addr_r} ${filesize}
fi

#set matrix row
gpio clear PG6

if gpio input PE16 ; then
	echo "------------- BUTTON 1 -------------"
	run BUTTON_1
elif gpio input PE17 ; then
	echo "------------- BUTTON 2 -------------"
	run BUTTON_2
elif gpio input PE11 ; then
	echo "------------- BUTTON 3 -------------"
	run BUTTON_3
else
	echo "------------- NO BUTTON -------------"
	run BUTTON_NONE
fi

#reset matrix
gpio input PG6

# enable key LEDs to show that the key can be released
gpio set 143

if test "${nosdboot}" = "0" ; then

echo "------------ x6100 boot script ------------"

if test "${console}" = "display" || test "${console}" = "both"; then setenv consoleargs "console=ttyS0,115200 console=tty1"; fi
if test "${console}" = "serial"; then setenv consoleargs "console=ttyS0,115200"; fi
if test "${earlycon}" = "on"; then setenv consoleargs "earlycon ${consoleargs}"; fi
if test "${bootlogo}" = "true"; then setenv consoleargs "bootsplash.bootfile=bootsplash.armbian ${consoleargs}"; fi

setenv bootargs "root=${rootdev} rootwait ${consoleargs} net.ifnames=0 ipv6.disable=1 panic=10 fbcon=rotate:3 video=VGA:480x800 ubootpart=${partuuid} ubootsource=${devtype} loglevel=${verbosity} ${bootargs_extra}"

if test "${docker_optimizations}" = "on"; then setenv bootargs "${bootargs} cgroup_enable=memory swapaccount=1"; fi

load ${devtype} ${devnum} ${kernel_addr_r} ${prefix}/${lkernel}
load ${devtype} ${devnum} ${ramdisk_addr_r} ${prefix}/${luInitrd}
load ${devtype} ${devnum} ${fdt_addr_r} ${prefix}/${fdtfile}
fdt addr ${fdt_addr_r}
fdt resize 65536

bootz ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}

fi

# Recompile with:
# mkimage -C none -A arm -T script -d boot.cmd boot.scr
