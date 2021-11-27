unset TMP TEMP TMPDIR LD_PRELOAD LD_DEBUG

path="${PATH}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

#hostname FlyGeekPro

mount -t proc proc ./rootfs/proc

mount -o bind /sdcard ./rootfs/sdcard

mount -o bind /sys ./rootfs/sys

mount -o bind /dev ./rootfs/dev

mount -o bind /system ./rootfs/system

mount -o bind /data ./rootfs/data

chroot "rootfs" /bin/login
