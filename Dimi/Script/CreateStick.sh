#	
#	SCRIPT DimiCreateStick

#	by zellview media
#	Fri 2024-02-23 seq 249
#	www.github.com/zellview

	Version=20

	DimiVersion="dimi-3.2.26"
	Diminame="Romina"

	AbbaVersion="abba-3.2.26"
	Abbaname="Silly"

	name="zellview romina silly"

	echo "DimiCreateStick version "$DimiVersion" file "$Version" alias "$Diminame-$Abbaname" started ..."

	zv-base="zv-abba-3.2.25"

	destDevice=$1	# destination device
	
	ventoy=Dimi/Rsrc/Tools/ventoy/
	labelventoy="zv-abba"

	persistPt="persistence"
	mountPt="mountPoint"

	persistVol="zv-persist-1G-empty.dat"
	increaseDat=9216	# 9 * 1024 for increasing 1 GiB empty.dat by 9 GiB"
	reservedSpace=45000	# use for 64GiB sticks with 10 GiB persist-image

	echo "
		zellview is a platform and operating-system
		based on BlackBox and Linuxmint
		see www.github.com/zellview
		for details and enjoy

		Would you like to install zellview abba ??
		
		It takes 15 GB on a fresh device
		and about 10 minutes

		NOTE: All data on the device will be erased !

		Cancel with CTRL-C or choose a device
		"
	lsblk
	echo
	read -p "Setup zellview on which device ? /dev/" destDevice

	echo "
		***************************************************************
		release			$labelventoy - $release
		feedback  			zellview@posteo.de

		zv-base			zv-abba-3.2.25
		base         linuxmint 21.2 victoria
		boot         ventoy 91
		"

#    echo "persistVolume      $persistVol"
#    echo "persistVolumeSize  $persistSize MB"
#    echo "workImage         $workImage"
#    echo "workImagesize     $workImagesize MB"
#    echo "sourceImagename   $sourceImagename"
#    echo "mointpoint        $mountPt"
#    echo "persistPoint      $persistPt"

	echo "Would you like to install zellview on device >>> $destDevice <<<"
	echo "Press RETURN to continue or CTRL+C to abort."
#	read tmp

	cd ../..	

	mkdir temp && cd temp

	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rfv

	echo "$ventoy/Ventoy2Disc to $destDevice, label $label"
	sh $ventoy/Ventoy2Disk.sh -I -S -r $reservedSpace -L $labelventoy $destDevice
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

# copy iso-image
	cp /$isoname $mountPt -v

	echo "make dir $mountPt/$persistPt"
	mkdir $mountPt/$persistPt

#   echo "create $persistVol ($persistSize MB) volume in $persistPoint"
#   Tools/ventoy/CreatePersistentImg.sh -s $persistSize -o $mountPoint/$persistPoint/$persistVol

#   echo "copy $persistVolEmpty.zip to "
#   cp Rsrc/$persistVolMini.zip $mountPt/$persistPt

	echo "unzip $persistVol.zip to $persistPt"
	unzip Dimi/Rsrc/dat/$persistVol.zip -d $mountPt/$persistPt
	echo "increase persistence.dat by $increaseDat MB"
	sh $Ventoy/ExtendPersistentImg.sh $mountPt/$persistPt/persistence.dat $increaseDat

	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rf

	echo "
		$labelfresh-$AbbaVersion-fresh.iso persistent installed on device $destDevice.
		you may now boot from this device ;-)
		enjoy and happy coding
		feel free and join us at github
		www.github.com/zellview
		keep the spirit of Pascal 
		and the message of
		Niklaus Wirth
		cu
		the zellview-team
		done DimiCreateStick
		"

# END DimiCreateStick.