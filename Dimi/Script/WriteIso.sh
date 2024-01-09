# SCRIPT DimiWriteIso
# 

# on 2024-01-09 seq 30
# by zellview media
# www.zellview.net

	version="3.2.16"

    echo "start DimiWriteIso "$version
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

	cd ../.. # ->zellview
    dd if=../dimi-image/zv-abba-$version-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "Done DimiWriteIso"

# END DimiWriteIso.