# SCRIPT DimiReadIso;
# 

# by zellview media
# on Sun 2024-02-18 seq 63
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.22"

	echo "start DimiReadIso "$DimiVersion" file"$Version

	cd ../..

	sourceDevice=$1

	if [ -z "$sourceDevice" ]; then
		echo "This script will create an iso-image from the first 2 partitions of source device."
		echo
		lsblk
		echo
		read -p "Create from which device? /dev/" sourceDevice
	fi

	dd if=/dev/${sourceDevice}1 of=${sourceDevice}1.iso bs=4M status=progress
	dd if=/dev/${sourceDevice}2 of=${sourceDevice}2.iso bs=4M status=progress
	
	echo "concat ${sourceDevice}1 and ${sourceDevice}2 to ../dimi-image/zv-abba-$version-ventoy.iso"
	cat ${sourceDevice}1 ${sourceDevice}2 > ../dimi-image/zv-abba-$DimiVersion-ventoy.iso"
     
	echo "Done DimiReadIso"

# END DimiReadso.