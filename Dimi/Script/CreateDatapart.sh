

# SCRIPT DimiCreateDatapart;

# by zellview media
# on GitHub www.zellview.network/dimi
# version 3.2.05
# 20. August 2023

# CONST
    Modulename="DimiCreateDatapart"
	Partionname="zv-data"

# BEGIN
    echo
    echo "starting $Modulename"
    echo "This script will create a data partition"
    echo "at the end of the destination-device."
    echo
    echo "Choose the appropriate device to create the partition."
    echo
    lsblk
    echo
    read -p "Create partition on which device? /dev/" destDevice
    destDevice=/dev/$destDevice

    echo "Create partition on device"
    echo "************"
    echo $destDevice
    echo "************"
    echo
    echo "Press RETURN to continue or CTRL+C to abort."
    read tmp
    
    # create datapartition at the end of disk
    
    #TODO
    echo "create primary partition ext4 $destDevice 10.5 GB to 100%"
    sudo parted $destDevice mkpart primary ext4 10.5GB 100% 
    
#    echo "delete partition ${destDevice}3"
#    sudo parted rm ${destDevice}3

    echo "make filesystem ext4 on ${destDevice}3"
    sudo mkfs.ext4 ${destDevice}3 

    echo "label partition ${destDevice}3"
    sudo e2label ${destDevice}3 ${Partionname}
        
    echo "$Modulename finnished"
    echo
    
# END DimiCreateDatapart.
