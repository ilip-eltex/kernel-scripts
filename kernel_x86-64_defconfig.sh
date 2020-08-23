git clone https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
cd linux
make defconfig
make -j2
make -j2 modules
cd arch/x86/boot
qemu-system-x86_64 -append "console=ttyS0"  -kernel bzImage -curses -nographic

