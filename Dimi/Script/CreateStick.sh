# SCRIPT DimiCreateStick;
# 

#	by zellview media
#	on Su 2024-02-11 seq 94
#	www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"
	
	echo "start DimiCreateStick "$Version

	destDevice=$1	# destination device

	name="zellview abba"
	labelventoy="zv-abba"
	labelfresh="zv-dimi"
	release="Thea"

	mountPt="mountPoint"
	persistPt="persistence"

	reservedSpace=39000    # use for 64GB sticks with 8GB persist-image
#	reservedSpace=41500     # use for 64GB sticks with 12GB persist-image
#	reservedSpace=21500     # use for 32GB sticks
    
#	persistVol="zv-persist-mini.dat"
#	persistVol="zv-persist-4G.dat"
#	persistVol="zv-persist-6G-empty.dat"
	persistVol="zv-persist-1G-empty.dat"
#	persistVol="zv-persist-12G-empty.dat"

	echo "This script will install zellview-dimi on the given device"
	echo "zellview-dimi is a platform and operating-system"
	echo "based on Linuxmint and Ubuntu."
	echo
	echo "Evaluate the appropriate device to install."
	echo
	lsblk
	echo
	read -p "Install zellview-dimi on which device? /dev/" destDevice
	destDevice=/dev/$destDevice

	echo
	echo "*************************************************************** "
	echo "$name  -  $labelventoy - $release"
	echo
	echo "source       $source"
	echo "feedback     zellview@posteo.de"
	echo "base         linuxmint 21.3 virginia"
	echo "boot         ventoy 91"
	echo

#    echo "persistVolume      $persistVol"
#    echo "persistVolumeSize  $persistSize MB"
#    echo "workImage         $workImage"
#    echo "workImagesize     $workImagesize MB"
#    echo "sourceImagename   $sourceImagename"
#    echo "mointpoint        $mountPt"
#    echo "persistPoint      $persistPt"

	echo "This script will install zellview-abba on device >>> $destDevice <<<"
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
	echo "Done DimiCreateStick"

	echo "$labelfresh-$version-fresh.iso persistent installed on device $destDevice."
	echo "you may now boot from this device ;-)"
	echo
	echo "enjoy and happy coding"
	echo
	echo "feel free to join us at github"
	echo "www.github.com/zellview"
	echo
	echo "keep the spirit of Pascal and the message of Niklaus Wirth"
	echo "cu"
	echo
	echo "the zellview-team"
	echo
	echo "done DimiCreateStick"
	
# END DimiCreateStick.