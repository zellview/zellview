

#! bin/bash      

# SCRIPT DimiWriteIso;

# by zellview media
# www.github.com/zellview
# kk, 22.Dezember 2023

    Modulename="DimiWriteIso"
    DimiVersion="3.2.07"
	Version=1

    destDevice=$1

    echo "start $Modulename"
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zv-dimi-$Version iso-image to USB-stick."
        echo
        lsblk
        echo
        echo "ATTENTION: All data on the device will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi

    dd if=../Rsrc/iso/zv-dimi-$DimiVersion-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "Done $Modulename"
