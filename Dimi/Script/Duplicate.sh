# 
# SCRIPT DimiDuplicate;

# by zellview media
# Mon 26-Feb-2024 seq 153
# www.github.com/zellview

Version=12
DimiVersion="3.2.28"			# Denis

echo
echo "DimiDuplicate "$DimiVersion" file "$Version" started"

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