
# SCRIPT DimiReadIso;

# by zellview media
# Thu 2024-02-22 seq 95
# www.github.com/zellview

	Version=6
	DimiVersion="3.2.25"

	echo "start DimiReadIso "$DimiVersion" file "$Version

	cd ../..

	sourceDevice=$1

	if [ -z "$sourceDevice" ]; then
		echo "This script will create an iso-image from the first 2 partitions of the source-device."
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
#	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$DimiVersion-ventoy.iso bs=4096 count=3251200 status=progress

	# 30654464 / 8192 = 3724
	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$DimiVersion-ventoy.iso bs=4M count=3750 status=progress

	echo "done DimiReadIso"

# END DimiReadIso.