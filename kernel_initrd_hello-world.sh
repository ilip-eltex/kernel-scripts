#write HelloWorld to file
echo '#include <stdio.h>' >> init.c
echo '#include <unistd.h>' >> init.c
echo 'int main (){' >> init.c
echo 'printf("\\n\\n\\tHELLO WORLD\\n\\n");' >> init.c
echo 'sleep(20);' >> init.c
echo 'return 0;}' >> init.c

#Compile for ARM architecture and compress into simple .gz
arm-linux-gnueabihf-gcc init.c -o init --static
echo init | cpio -o -H newc | gzip > initramfs.cpio.gz

# Run in Qemu setting it to use our craft initrd
qemu-system-arm -kernel zImage -curses -nographic -machine virt -initrd initramfs.cpio.gz
