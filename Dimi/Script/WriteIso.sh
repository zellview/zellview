#! bin/bash      

# MODULE DimiWriteIso;

# 26. August 2023
# version 3.2.06
# by zellview media
# www.github.com/zellview

# CONST
    Modulename="DimiWriteIso"
    Version="3.2.06"

# VAR
    destDevice=$1

# BEGIN
    echo "start $Modulename"
    
    if [ -z "$destDevice" ]; then
        echo "This script will write zv-dimi-$Version iso-image to USB-stick."
        echo
        lsblk
        echo
        echo "ATTENTION: All data on stick will be erased"
        read -p "Write through which device? /dev/" destDevice
        destDevice=/dev/$destDevice
    fi

    dd if=../../../zDev/dimi-iso/zv-dimi-$Version-ventoy.iso of=$destDevice bs=4M status=progress
    
    echo "$Modulename done"
    echo
    
# END DimiWriteIso.
