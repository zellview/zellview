# SCRIPT DimiReadIso;
# 

# by zellview media
# on Su 2024-02-11 seq 58
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"

	echo "start DimiReadIso "$Version

	cd ../..

	sourceDevice=$1

	if [ -z "$sourceDevice" ]; then
		echo "This script will create an iso-image from the first 2 partitions of $sourceDevice."
		echo
		lsblk
		echo
		read -p "Create from which device? /dev/" sourceDevice
	fi

	# create iso-file from the two ventoy-partitions of the USB-stick	
	# - to evaluate parameter count use fdisk to read the last sector of the last partition
	# - add 1 and divide by blocksize in kB, round up to next integer
	# - eg last sector: 11263999 +1 = 11264000/2048 =< 5500	
	# - eg last sector: 37887999 +1 = ( 21860352 / 4096 ) +1 =< 6001 ??????
	# - eg last sector: 37887999 +1 = ( 37888000 / 4096 ) +1 =< 6001 ??????
	# - eg last sector: 26009599 +1 = ( 26009600 / 4096 ) +1 =< 6001 ??????


#	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$version-ventoy.iso bs=4M count=10175 status=progress
#	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$version-ventoy.iso bs=4096 count=3150001 status=progress
#	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$version-ventoy.iso bs=4096 count=3251200 status=progress

	dd if=/dev/${sourceDevice}1 of=${sourceDevice}1.iso bs=4M status=progress
	dd if=/dev/${sourceDevice}2 of=${sourceDevice}2.iso bs=4M status=progress
	
	echo "concat ${sourceDevice}1 and ${sourceDevice}2 to ../dimi-image/zv-abba-$version-ventoy.iso"
	cat ${sourceDevice}1 ${sourceDevice}2 > ../dimi-image/zv-abba-$version-ventoy.iso"
     
	echo "Done DimiReadIso"

# END DimiReadso.