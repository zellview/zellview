# 
# SCRIPT DimiReadIso;

# by zellview media
# Mon 26-Feb-2024 seq 101
# www.github.com/zellview

	Version=8
	DimiVersion="3.2.28"

	echo "DimiReadIso "$DimiVersion" file "$Version" started ..."

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

	# 30654464 / 8192 = 3724
	dd if=/dev/$sourceDevice of=../dimi-image/zv-abba-$DimiVersion-ventoy.iso bs=4M count=3750 status=progress

	echo "DimiReadIso done"

# END DimiReadIso.