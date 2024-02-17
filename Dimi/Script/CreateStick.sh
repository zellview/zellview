# SCRIPT DimiCreateStick;
# 

#	on Fr 2024-02-16 seq 127
#	by zellview new media
#	github.com/zellview

	Version=2
	DimiVersion="3.2.23"

	echo "start DimiCreateStick v "$Version
	destDevice=$1	# destination device

	label-ventoy="zv-abba"
 	name="zellview abba"
	label-fresh="zv-dimi"
	release="Pamela"

	persistPt="persistence"
	mountPt="mountPoint"

	reservedSpace=39000    # use for 64GB sticks with 8GB persist-image
	persistVol="zv-persist-1G-empty.dat"
	echo "install zellview on device ?"
	
	echo "zellview is a platform and operating-system"
	echo "based on Linuxmint and Ubuntu."
	echo
	echo "Evaluate device for zellview"
	echo
	lsblk
	echo
	read -p "zellviewto device? /dev/" destDevice
	destDevice=/dev/$destDevice

	echo
	echo "*************************************************************** "
	echo "$labelventoy - $release"
	echo
	echo "source       $source"
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

	echo "make dir $mountPt"
	mkdir $mountPt
	echo "mount ${destDevice}1 on $mountPt"
	sudo mount ${destDevice}1 ${mountPt}
	echo

	echo -n "copy Rsrc/tmpl/ventoy to $mountPt ... "
	cp Dimi/Rsrc/tmpl/ventoy $mountPt -rv
	echo "done"

	echo -n "copy iso-image to $mountPt ... "
	cp ../dimi-image/$labelfresh-$version-fresh.iso $mountPt
	echo "done"

	echo "make dir $mountPt/$persistPt"
	mkdir $mountPt/$persistPt
	echo

#   echo "create $persistVol ($persistSize MB) volume in $persistPoint"
#   Tools/ventoy/CreatePersistentImg.sh -s $persistSize -o $mountPoint/$persistPoint/$persistVol

#   echo "copy $persistVolEmpty.zip to "
#   cp Rsrc/$persistVolMini.zip $mountPt/$persistPt

	echo "unzip $persistVol.zip to $persistPt"
	unzip Dimi/Rsrc/dat/$persistVol.zip -d $mountPt/$persistPt
	echo "increase $persistVol by 15360 MB"
	sh Dimi/Rsrc/Tools/ventoy/ExtendPersistentImage.sh $persistVol.zip 15360

	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rf
	
	echo "$labelfresh-$version-fresh.iso persistent installed on device $destDevice."
	echo "you may now boot from this device ;-)"
	echo
	echo "enjoy and happy coding"
	echo
	echo "feel free to join us at github"
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