# 
# SCRIPT DimiCreatePoolExt4;

# by zellview media
# Sun 25-Feb-2024 seq 1
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.27"
	
	partitionname="zv-pool"

    echo "start DimiCreatePoolExt4 version"$DimiVersion" file"$Version
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
    echo "create primary partition $filesystem $destDevice $startpoint to 100%"
    parted ${destDevice} mkpart primary ext4 $startpoint 100%
    
#    echo "delete partition ${destDevice}3"
#    parted rm ${destDevice}3


	#TODO 
#	partno="3"
	partno="p3"
    echo "make filesystem $filesystem on ${destDevice}3"
    mkfs.ext4 ${destDevice}$partno

    echo "label partition ${destDevice}$partno to ${partitionname}"
    e2label ${destDevice}$partno ${partitionname}
        
	echo "done DimiCreatePoolExt4"
	
# END DimiCreatePoolExt4.