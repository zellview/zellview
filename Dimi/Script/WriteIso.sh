# SCRIPT DimiWriteIso
# 

# by zellview media
# on Su 2024-02-11 seq 34
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"

	cd ../.. 

    echo "start DimiWriteIso "$Version
    destDevice=$1
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zv-abba-$version-ventoy.iso to device"
        echo
        lsblk
        echo
        echo "ATTENTION: All data on the device will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi
	
    dd if=../dimi-image/zv-abba-$version-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "Done DimiWriteIso"

# END DimiWriteIso.