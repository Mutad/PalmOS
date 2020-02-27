run:
	/usr/local/bin/nasm -f bin bootloader.asm -o bootloader.bin
	qemu-system-x86_64 bootloader.bin