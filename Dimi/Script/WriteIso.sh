
# SCRIPT DimiWriteIso

# by zellview media
# Thu 2024-02-22 seq 48
# www.github.com/zellview

	Version=4
	DimiVersion="3.2.25"

	cd ../.. 

    echo "start DimiWriteIso "$DimiVersion" file "$Version
    destDevice=$1
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zv-abba-$DimiVersion-ventoy.iso to device"
        echo
        lsblk
        echo
        echo "ATTENTION: All data on the device will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi

    dd if=../dimi-image/zv-abba-$DimiVersion-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "done DimiWriteIso"

# END DimiWriteIso.