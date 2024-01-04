# SCRIPT DimiCreateStick;
# 

#	seq 28 on 2024-01-04
#	by zellview media
#	www.zellview.net

	version="3.2.11"
	
	echo "start DimiCreateStick "$version

	destDevice=$1	# destination device
	
	source="www.zellview.net"
	file="zellview.net/zellview/Dimi/Mod/CreateStick"

	name="zellview abba"
	label="zv-abba"
	release="New Year 2024 rc3"

	mountPt="mountPoint"
	persistPt="persistence"
	
	reservedSpace=32000    # use for 64GB sticks
#	reservedSpace=21500     # use for 32GB sticks
    
#	persistVol="zv-persist-mini.dat"
#	persistVol="zv-persist-4G.dat"
	persistVol="zv-persist-6G-empty.dat"
#	persistVol="zv-persist-12G.dat"

	echo "zellview-dimi is platform and operating-system"
	echo "based on Linuxmint and Ubuntu."
	echo
	echo "Evaluate the appropriate device to install."
	echo
	lsblk
	echo
	read -p "Install zellview-abba on which device? /dev/" destDevice
	destDevice=/dev/$destDevice

	echo
	echo "************************************************************ "
	echo "$name  -  $label - $release"
	echo
	echo "source		   $source"
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

	echo "This script will install zellview-abba on destination-device"
	echo ">>> $destDevice <<<"
	echo "Press RETURN to continue or CTRL+C to abort."
	read tmp

	# Dimi/Script -> zellview
	cd ../..

	echo "cleanup mountpoint"
	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rf
	echo

	echo "Ventoy2Disc to $destDevice, label $label"
	sh Dimi/Rsrc/Tools/ventoy/Ventoy2Disk.sh -I -S -r $reservedSpace -L $label $destDevice

	echo "make dir $mountPt"
	mkdir $mountPt
	echo "mount ${destDevice}1 on $mountPt"
	mount ${destDevice}1 $mountPt
	echo

	echo -n "copy Rsrc/tmpl/ventoy to $mountPoint ... "
	cp Dimi/Rsrc/tmpl/ventoy $mountPt -rv
	echo "done"

	echo -n "copy iso-image to $mountPt ... "
	cp ../dimi-image/$label-$version-fresh.iso $mountPt
	echo "done"

	echo "make dir $mountPt/$persistPt"
	mkdir $mountPt/$persistPt
	echo

#   echo "create $persistVol ($persistSize MB) volume in $persistPoint"
#   sudo Tools/ventoy/CreatePersistentImg.sh -s $persistSize -o $mountPoint/$persistPoint/$persistVol

#   echo "copy $persistVolEmpty.zip to "
#   cp Rsrc/$persistVolMini.zip $mountPt/$persistPt 

	echo "unzip $persistVol.zip to $persistPt"
	unzip Dimi/Rsrc/dat/$persistVol.zip -d $mountPt/$persistPt

	echo "cleanup mountpoint"
	echo "unmount $mountPt"
	umount $mountPt
	echo "remove $mountPt"
	rm $mountPt -rf
	echo "Done DimiCreateStick"

echo "$label-$version-fresh.iso installed succesfully on device $destDevice."
echo "Shutdown your computer and boot from this device"
echo
echo "enjoy and happy coding"
echo
echo "sponsoring via PayPal and feedback and hello"
echo "is appreciated here zellview@posteo.de"
echo "or here www.zellview.eu"
echo
echo "feel free to join us at github"
echo "www.github.com/zellview"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo
echo "the zellview-team"
echo