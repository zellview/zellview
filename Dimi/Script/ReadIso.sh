# SCRIPT DimiReadIso
# 

# kk, 25. Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

	echo "start DimiReadIso version "$version

	sourceDevice=$1

	# create iso-file from the two ventoy-partitions of the USB-stick	
	# - to evaluate parameter count use fdisk to read the last sector of the last partition
	# - add 1 and divide by blocksize in kB, round up to next integer
	# - eg last sector: 11263999 +1 = 11264000/2048 =< 5500

	if [ -z "$sourceDevice" ]; then
		echo "This script will create an iso-file from the first ~12G of the device."
		echo
		lsblk
		echo
		read -p "Create from which device? /dev/" sourceDevice
	fi

	sudo dd if=/dev/$sourceDevice of=~/zDev/dimi-iso/zv-dimi-$version-ventoy.iso bs=4M count=10175 status=progress
     
     echo "Done DimiReadIso"