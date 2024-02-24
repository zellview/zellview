#	
#	SCRIPT DimiCreateStick

#	by zellview media
#	www.github.com/zellview
#	on Sat 24-Feb-2024 seq 286

	Version=25

	DimiVersion="3.2.26"
	Diminame="Romina"
	Dimi="dimi"

	AbbaVersion="3.2.26"
	Abbaname="Silly"
	Abba="abba"

	name="zellview $Diminame $Abbaname"

	echo "	DimiCreateStick version "$DimiVersion" file "$Version" started ..."
				
	zvBase="zv-$Abba-3.2.25"
	mintBase="linuxmint 21.2 victoria"
	ventoyVersion="ventoy 91"

	labelventoy="zv-$Abba"
	ventoy=Dimi/Rsrc/Tools/ventoy		#TODO
	
	persistPt="persistence"
	mountPt="mountPoint"
	
	destDevice=$1	# destination device

	persistVol="zv-persist-1G-empty.dat"
	increaseDat=9216			# 9 * 1024 for increasing 1 GiB empty.dat by 9 GiB"
	reservedSpace=45000			# use for 64GiB sticks with 10 GiB persist-image

	echo "
		zellview is a platform and operating-system
		based on BlackBox and Linuxmint
		see www.github.com/zellview
		for details and enjoy

		Would you like to install zellview abba ??
		
		It takes 15 GB on a fresh device and about 
		10 minutes to have a short break and chill :-)

		NOTE: All data on the device will be erased !

		Cancel with CTRL-C or choose a device
		"
	lsblk
	echo
	read -p "Setup zellview on which device ? /dev/" destDevice
	destDevice=/dev/$destDevice

	echo "
		release			$labelventoy-$AbbaVersion
		feedback  		zellview@posteo.de
		zellview-base		$zvBase
		mint-base         	$mintBase
		boot         		$ventoyVersion
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

#	rm action -rf
#	mkdir action && cd action

	umount $mountPt -v
	rm $mountPt -rfv

	sh $ventoy/Ventoy2Disk.sh -I -S -r $reservedSpace -L $labelventoy $destDevice

	mkdir $mountPt
	mount ${destDevice}1 ${mountPt}

	echo "copy ventoy-template to $mountPt"
	cp Dimi/Rsrc/tmpl/ventoy $mountPt -r

	isoname=zv-$Dimi-$DimiVersion-fresh.iso

#	copy iso-image direct from DVD
#	dd if=/dev/sr0 of=$mountPt/$isoname bs=4M # read image from DVD

# (* copy iso-image *)
	cp ../dimi-image/$isoname $mountPt -vu

	mkdir $mountPt/$persistPt

#   echo "create $persistVol ($persistSize MB) volume in $persistPoint"
#   Tools/ventoy/CreatePersistentImg.sh -s $persistSize -o $mountPoint/$persistPoint/$persistVol

	echo "unzip $persistVol.zip to $persistPt"
	unzip Dimi/Rsrc/dat/$persistVol.zip -d $mountPt/$persistPt
	echo "increase persistence.dat by $increaseDat MB"
	sh $ventoy/ExtendPersistentImg.sh $mountPt/$persistPt/persistence.dat $increaseDat

	umount $mountPt
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
		
		DimiCreateStick done
		"

# END DimiCreateStick.