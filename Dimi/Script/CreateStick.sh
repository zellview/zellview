# SCRIPT DimiCreateStick;
# 

#	by zellview media
#	www.github.com/zellview
#	on Tue 2024-02-20 seq 162

	Version=3
	DimiVersion="3.2.22"
	AbbaVersion="3.2.23"

	echo "start DimiCreateStick version "$AbbaVersion" file "$Version
	destDevice=$1	# destination device

	labelventoy="zv-abba"
 	name="zellview abba mint dimi"
	labelfresh="zv-dimi"
	release="Leonie"

	persistPt="persistence"
	mountPt="mountPoint"

	persistVol="zv-persist-1G-empty.dat"
#	increaseDat=15360
#	increaseDat=12288			# 12 * 1024
	increaseDat=9216			# 9 * 1024
#	reservedSpace=48000   # use for 64GB sticks with 8GB persist-image
	reservedSpace=46000   # use for 64GB sticks with 8GB persist-image	
	echo "install zellview on device ?"	
	echo "zellview is a platform and operating-system"
	echo "based on Linuxmint and Ubuntu."
	echo
	echo "Evaluate device for zellview"
	echo
	lsblk
	echo
	read -p "zellview to device? /dev/" destDevice
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
	cp Dimi/Rsrc/tmpl/ventoy $mountPt -r
	echo "done"

	echo -n "copy iso-image to $mountPt ... "
	cp ../dimi-image/$labelfresh-$DimiVersion-fresh.iso $mountPt
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