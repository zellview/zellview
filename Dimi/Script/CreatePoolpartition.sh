# 
# SCRIPT DimiCreatePoolpartition;

# by zellview media
# Sub 2024-02-25 seq 64
# www.github.com/zellview

	Version=3
	DimiVersion="3.2.26"
	
	partitionname="zv-pool"

    echo "start DimiCreatePoolpartition version"$DimiVersion" file"$Version
    echo "This script will create a data partition"
    echo "at the end of the destination-device."
    echo
    echo "Choose the appropriate device to create the partition."
    echo
    lsblk
    echo
    read -p "Create partition on which device? /dev/" destDevice
    destDevice=/dev/$destDevice

    echo "Double check! Create partition on device >$destDevice< ?"
    echo
    echo "Press RETURN to continue or CTRL+C to abort."
    read tmp
    
    # create datapartition at the end of disk
    
    #TODO
	startpoint="15.7GB"
	filesystem="ext4"
    echo "create primary partition $filesystem $destDevice $startpoint to 100%"
    parted ${destDevice} mkpart primary $filesystem $startpoint 100%
    
#    echo "delete partition ${destDevice}3"
#    parted rm ${destDevice}3

    echo "make filesystem $filesystem on ${destDevice}3"
    mkfs.exfat ${destDevice}p3

    echo "label partition ${destDevice}p3 to ${partitionname}"
    e2label ${destDevice}p3 ${partionname}
        
	echo "done DimiCreatePoolpartition"
	
# END DimiCreatePoolpartition.