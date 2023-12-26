# SCRIPT DimiWriteIso
# 

# kk, 25.Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

    echo "start DimiWriteIso version "$version
    destDevice=$1
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zv-dimi-$version iso-image to USB-stick."
        echo
        lsblk
        echo
        echo "ATTENTION: All data on the device will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi

    dd if=~/zDev/dimi-iso/zv-dimi-$version-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "Done DimiWriteIso"