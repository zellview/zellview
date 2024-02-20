# SCRIPT DimiReadIso;
# 

# by zellview media
# Tur 2024-02-20 seq 76
# www.github.com/zellviews

	Version=3
	DimiVersion="3.2.23"

	echo "start DimiReadIso "$DimiVersion" file "$Version

	cd ../..

	srcDevice=$1	# source device

	if [ -z "$srcDevice" ]; then
		echo "The script will read an image from the first two partitions of source device."
		echo
		lsblk
		echo
		read -p "from which device? /dev/" srcDevice
	fi

	dd if=/dev/${srcDevice} of=MBR.iso bs=512 count=1 status=progress

	dd if=/dev/${srcDevice}1 of=${srcDevice}1.iso bs=4M status=progress
	
	dd if=/dev/${srcDevice}2 of=${srcDevice}2.iso bs=4M status=progress
	
	echo "concat iso-files to ../dimi-image/zv-abba-$DimiVersion-ventoy.iso"
	cat MBR.iso ${srcDevice}1.iso ${srcDevice}2.iso > ../dimi-image/zv-abba-$DimiVersion-ventoy.iso
     
	echo "done DimiReadIso"

# END DimiReadso.