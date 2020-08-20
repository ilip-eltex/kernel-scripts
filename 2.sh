make ARCH=arm defconfig
make -j2 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
qemu-system-arm -kernel zImage -curses -nographic -machine virt

