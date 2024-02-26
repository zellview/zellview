# 
# SCRIPT DimiCreatePoolExt4;

# by zellview media
# Mon 26-Feb-2024 seq 86
# www.github.com/zellview

	Version=5
	DimiVersion="3.2.28"
	
	partitionname="zv-pool"

    echo "DimiCreatePoolExt4 version"$DimiVersion" file"$Version" start ..."
    	This script will create a data partition"
    	at the end of the destination-device.

    	Choose the appropriate device to create the partition.
	"
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
    mkfs.exfat ${destDevice}$partno

    echo "label partition ${destDevice}$partno to ${partitionname}"
    e2label ${destDevice}$partno ${partitionname}
        
	echo "DimiCreatePoolExt4 done"
	
# END DimiCreatePoolExt4.