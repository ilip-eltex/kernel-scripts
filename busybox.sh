wget https://busybox.net/downloads/busybox-1.32.0.tar.bz2
tar -xvf busybox-1.32.0.tar.bz2 
mv busybox-1.32.0 busybox
cd busybox
# Rename busybox-config.txt to .config or make your own by 'make menuconfig'
# IMPORTANT: choose static compilation and cross-compiler as gcc-arm
mv ../busybox-config.txt .config
make -j2
make -j2 install 
# Folder _install is a targert for build initrd for kernel
