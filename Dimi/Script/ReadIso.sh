# SCRIPT DimiReadIso
# 

# file zellview/Dimi/Mod/ReadIso_sh
# on 2024-01-09 seq 37
# by zellview media
# www.zellview.net

	version="3.2.13"

	echo "start DimiReadIso "$version

	sourceDevice=$1

	if [ -z "$sourceDevice" ]; then
		echo "This script will create an iso-file from the first ~12G of the device."
		echo
		lsblk
		echo
		read -p "Create from which device? /dev/" sourceDevice
	fi

	# create iso-file from the two ventoy-partitions of the USB-stick	
	# - to evaluate parameter count use fdisk to read the last sector of the last partition
	# - add 1 and divide by blocksize in kB, round up to next integer
	# - eg last sector: 11263999 +1 = 11264000/2048 =< 5500	
	# - eg last sector: 24'575'999 +1 = ( 24'576'000 / 4096 ) +1 =< 6001 ??????

	cd ../..  # -> zellview/
	
#	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$version-ventoy.iso bs=4M count=10175 status=progress
	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$version-ventoy.iso bs=4096 count=3150001 status=progress
     
	echo "Done DimiReadIso"

# END DimiReadso.