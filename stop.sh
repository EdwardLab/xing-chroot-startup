pids=$(lsof | grep "./rootfs" | awk '{print $1}' | uniq)
pkill $pids
echo $pids
umount ./rootfs/proc
umount ./rootfs/sdcard
umount ./rootfs/sys
umount ./rootfs/dev
umount ./rootfs/system
umount ./rootfs/data
