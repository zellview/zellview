# 
# SCRIPT DimiCreatePoolExFAT;

# by zellview media
# Tue 27-Feb-2024 seq 92
# www.github.com/zellview

	Version=8
	
	partitionname="zv-pool"

    echo "DimiCreatePoolExFAT version "$Version" started ...
    	This script will create a data partition
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


	#TODO 
	partno="3"
#	partno="p3"		# for nvme* volumes
    echo "make filesystem $filesystem on ${destDevice}$partno"
    mkfs.exfat ${destDevice}$partno

    echo "label partition ${destDevice}$partno to ${partitionname}"
    e2label ${destDevice}$partno ${partitionname}
        
	echo "DimiCreatePoolExFAT done"
	
# END DimiCreatePoolExFAT.