setenv verbosity "1"
setenv devnum "0"
setenv rootdev "/dev/mmcblk${devnum}p1"

setenv kernel_addr_r 0x46000000
setenv fdt_addr_r 0x49000000
setenv ramdisk_addr_r 0x50000000

# Print boot source
itest.b *0x28 == 0x00 && echo "U-boot loaded from SD"
itest.b *0x28 == 0x02 && echo "U-boot loaded from eMMC or secondary SD"
itest.b *0x28 == 0x03 && echo "U-boot loaded from SPI"

echo "devnum: ${devnum}"

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


echo "------------ x6100 boot script ------------"
setenv bootargs console=ttyS0,115200 root=${rootdev} rootwait panic=10 fbcon=rotate:3 video=VGA:480x800 cgroup_enable=memory swapaccount=1 loglevel=${verbosity}


load ${devtype} ${devnum} ${kernel_addr_r} ${prefix}/zImage_org
load ${devtype} ${devnum} ${ramdisk_addr_r} ${prefix}/uInitrd
load ${devtype} ${devnum} ${fdt_addr_r} ${prefix}/sun8i-r16-x6100.dtb
fdt addr ${fdt_addr_r}
fdt resize 65536

bootz ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}

# Recompile with:
# mkimage -C none -A arm -T script -d boot.cmd boot.scr
