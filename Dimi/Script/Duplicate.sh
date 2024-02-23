
# SCRIPT DimiDuplicate;

# by zellview media
# Fri 2024-02-23 seq 147
# www.github.com/zellview

Version=10
DimiVersion="3.2.26"			# precessor Annabell

echo
echo "start DimiDuplicate "$DimiVersion" file "$Version

srcDevice=$2			# source device

if [ -z "$srcDevice" ]; then

	echo "
	This script will duplicate zellview system
	from source-device to destination-device.
	While duplicating you should stop all
	other action on the source-device.
	"
	
	lsblk
	echo
	read -p "Choose source-device? /dev/" srcDevice
fi

destDevice=$1			# destination device

if [ -z "$destDevice" ]; then
	echo "
	NOTE: All data on the destination device will be erased!
	"
	read -p "Choose destination-device? /dev/" destDevice
fi

# How to calculate parameter count #

dd if=/dev/$srcDevice of=/dev/$destDevice bs=4M count=3750 status=progress

echo "done DimiDuplicate"

# END DimiDuplicate.