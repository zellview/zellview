#	
#	SCRIPT DimiCreateStick

#	by zellview media
#	Fri 2024-02-23 seq 208
#	www.github.com/zellview

	Version=14
	DimiVersion="3.2.26"
	AbbaVersion="3.2.26"

	echo "DimiCreateStick version "$AbbaVersion" file "$Version" start"
	destDevice=$1	# destination device

	labelventoy="zv-abba"
	name="zellview abba dimi mint "
	labelfresh="zv-dimi"
	release="Romina"

	persistPt="persistence"
	mountPt="mountPoint"

	persistVol="zv-persist-1G-empty.dat"
	increaseDat=9216		# 9 * 1024

	reservedSpace=45000   # use for 64GB sticks with 10 GiB persist-image

	echo "
		zellview is a platform and operating-system
		based on BlackBox and Linuxmint 
		see www.github.com/zellview
		for more details
		
		Would you like to install zellview ??
		It takes about 15 GB on a fresh device
		
		NOTE: All data on the device will be erased !

		Choose a device or CTRL-C to cancel
		"
	lsblk
	echo
	read -p "zellview to device? /dev/" destDevice
	destDevice=/dev/$destDevice

	echo
	echo "*************************************************************** "
	echo "$labelventoy - $release"
	echo
	echo "feedback     zellview@posteo.de"
	echo "base         linuxmint 21.2 victoria"
	echo "boot         ventoy 91"
	echo

#    echo "persistVolume      $persistVol"
#    echo "persistVolumeSize  $persistSize MB"
#    echo "workImage         $workImage"
#    echo "workImagesize     $workImagesize MB"
#    echo "sourceImagename   $sourceImagename"
#    echo "mointpoint        $mountPt"
#    echo "persistPoint      $persistPt"

	echo "Would you like to install zellview on device >>> $destDevice <<<"
	echo "Press RETURN to continue or CTRL+C to abort."
	read tmp

	cd ../..

	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rfv
	echo

	echo "Ventoy2Disc to $destDevice, label $label"
	sh Dimi/Rsrc/Tools/ventoy/Ventoy2Disk.sh -I -S -r $reservedSpace -L $labelventoy $destDevice
#	sh Dimi/Rsrc/Tools/ventoy/Ventoy2Disk.sh -I -S  -L $labelventoy $destDevice

	echo "make dir $mountPt"
	mkdir $mountPt
	echo "mount ${destDevice}1 on $mountPt"
	sudo mount ${destDevice}1 ${mountPt}
	echo

	echo "copy ventoy-template to $mountPt"
	cp Dimi/Rsrc/tmpl/ventoy $mountPt -r

	isoname=$labelfresh-$DimiVersion-fresh.iso

#	copy iso-image direct from DVD
#	dd if=/dev/sr0 of=$mountPt/$isoname bs=4M # read image from DVD

#	copy iso-image
	cp ../dimi-image/$isoname $mountPt -v

	echo "make dir $mountPt/$persistPt"
	mkdir $mountPt/$persistPt

#   echo "create $persistVol ($persistSize MB) volume in $persistPoint"
#   Tools/ventoy/CreatePersistentImg.sh -s $persistSize -o $mountPoint/$persistPoint/$persistVol

#   echo "copy $persistVolEmpty.zip to "
#   cp Rsrc/$persistVolMini.zip $mountPt/$persistPt

	echo "unzip $persistVol.zip to $persistPt"
	unzip Dimi/Rsrc/dat/$persistVol.zip -d $mountPt/$persistPt
	echo "increase persistence.dat by $increaseDat MB"
	sh Dimi/Rsrc/Tools/ventoy/ExtendPersistentImg.sh $mountPt/$persistPt/persistence.dat $increaseDat

	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rf
	
	echo "$labelfresh-$AbbaVersion-fresh.iso persistent installed on device $destDevice."
	echo "you may now boot from this device ;-)"
	echo
	echo "enjoy and happy coding"
	echo
	echo "feel free and join us at github"
	echo "www.github.com/zellview"
	echo
	echo "keep the spirit of Pascal "
	echo "and the message of"
	echo "Niklaus Wirth"
	echo "cu"
	echo
	echo "the zellview-team"
	echo
	echo "done DimiCreateStick"
	
# END DimiCreateStick.