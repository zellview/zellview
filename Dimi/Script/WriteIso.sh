# SCRIPT DimiWriteIso
# 

# on 2024-01-06 seq 25
# by zellview media
# www.zellview.net

	version="3.2.13"

    echo "start DimiWriteIso "$version
    destDevice=$1
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zvabba-$version-ventoy.iso to device"
        echo
        lsblk
        echo
        echo "ATTENTION: All data on the device will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi

	cd ../.. # ->zellview
    dd if=../dimi-image/zvabba-$version-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "Done DimiWriteIso"

# END DimiWriteIso.