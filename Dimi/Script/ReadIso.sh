# SCRIPT DimiReadIso;
# 

# by zellview media
# www.github.com/zellviews
# on Mon 2024-02-19 seq 70

	Version=3
	DimiVersion="3.2.22"

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

	dd if=/dev/${srcDevice}1 of=${srcDevice}1.iso bs=4M status=progress
	dd if=/dev/${srcDevice}2 of=${srcDevice}2.iso bs=4M status=progress
	
	echo "cat ${srcDevice}1 and ${srcDevice}2 to ../dimi-image/zv-abba-$version-ventoy.iso"
	cat ${srcDevice}1 ${srcDevice}2 > ../dimi-image/zv-abba-$DimiVersion-ventoy.iso"
     
	echo "done DimiReadIso"

# END DimiReadso.