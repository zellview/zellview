# SCRIPT DimiCreateDatapartition;
# 

# on 2024-01-05 seq 26
# by zellview media
# www.zellview.net

	version="3.2.13"
	partionname="zvpool"

    echo "starting DimiCreateDatapartition"
    echo "This script will create a data partition"
    echo "at the end of the destination-device."
    echo
    echo "Choose the appropriate device to create the partition."
    echo
    lsblk
    echo
    read -p "Create partition on which device? /dev/" destDevice
    destDevice=/dev/$destDevice

    echo "Create partition on device >>> $destDevice <<< ?"
    echo
    echo "Press RETURN to continue or CTRL+C to abort."
    read tmp
    
    # create datapartition at the end of disk
    
    #TODO
    echo "create primary partition ext4 $destDevice 12.6GB to 100%"
    parted $destDevice mkpart primary ext4 12.6GB 100% 
    
#    echo "delete partition ${destDevice}3"
#    parted rm ${destDevice}3

    echo "make filesystem ext4 on ${destDevice}3"
    mkfs.ext4 ${destDevice}3 

    echo "label partition ${destDevice}3 to ${partitionname}"
    e2label ${destDevice}3 ${partionname}
        
	echo "Done DimiCreateDatapartition"
	
# END DimiCreateDatapartition.