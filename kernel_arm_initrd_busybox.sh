# in */busybox
# cd _install
# find . | cpio -o -H newc | gzip > initramfs.cpio.gz
# copy .gz to zImage folder, do cd
# run down command 
qemu-system-arm -kernel zImage -curses -nographic -machine virt -initrd initramfs.cpio.gz -append "rdinit=/bin/ash"

