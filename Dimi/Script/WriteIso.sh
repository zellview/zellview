

# SCRIPT DimiWriteIso

# www.github.com/zellview
# by zellview media
# contrib kai47x

	Version=8
	DimiVersion="3.3.03"

	cd ../.. 

    echo "DimiWriteIso version "$Version" Dimiversion"$DimiVersion" started ..."
    destDevice=$1
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zv-dimi-$DimiVersion-ventoy.iso to device"
        echo
        lsblk
        echo
        echo "ATTENTION: All data on the device will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi

    dd if=../dimi-image/zv-dimi-$DimiVersion-fresh.iso of=$destDevice bs=4M status=progress
    
    echo "done DimiWriteIso"

# END DimiWriteIso.