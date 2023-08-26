#! bin/bash

# MODULE DimiReadIso;   

# zellview-dimi version 3.2.06 , 26. August 2023
# www.github.com/zellview
# by zellview media

# CONST
    Modulename="DimiReadIso"

# VAR
    sourceDevice=$1

# BEGIN

    # create iso-file from the two ventoy-partitions of the USB-stick
    # - to evaluate parameter count use fdisk to read the last sector of the last partition
    # - add 1 and divide by blocksize in kB, round up to next integer
    # - eg last sector: 11263999 +1 = 11264000/2048 =< 5500

    echo "start $Modulename"
    
    if [ -z "$sourceDevice" ]; then
        echo "This script will create an iso-file from the first ~12G of the device."
        echo
        lsblk
        echo
        read -p "Create from which device? /dev/" sourceDevice
    fi
    
	#/zDev/dimi-iso
    sudo dd if=/dev/$sourceDevice of=~/zv-dimi-3.2.06-ventoy.iso bs=1M count=10175 status=progress
    
    echo "$Modulename done"
    echo
    
# END DimiReadIso.
