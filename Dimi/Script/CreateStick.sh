# SCRIPT DimiCreateStick;


#	by zellview new media
#	www.zellview.network
#	24. August 2023
#	version 3.2.06

# VAR
	sourceUrl="https://download.zellview.network"    # resource locator
	destDevice=$1	# destination device

	version="3.2.06"
	name="zellview dimi"
	label="zv-dimi"
	release="Victoria"

	mountPt="mountPoint"
	persistPt="persistence"

	persistVol="zv-persist-6G-empty.dat"
	
	reservedSpace=48500     # use for 64GB sticks
#	reservedSpace=21500     # use for 32GB sticks
    
#	persistVol="zv-persist-mini.dat"
#	persistVol="zv-persist-4G.dat"
#	persistVol="zv-persist-12G.dat"

# BEGIN
	echo "start DimiCreateStick"
	echo "zellview-dimi is an operating-system,"
	echo "based on Linuxmint and Ubuntu."
	echo
	echo "Evaluate the appropriate device to install."
	echo
	lsblk
	echo
	read -p "Install zellview-dimi on which device? /dev/" destDevice
	destDevice=/dev/$destDevice

	echo
	echo "************************************************************ "
	echo "$name  -  '$release'"
	echo
	echo "source-URL   $sourceUrl"
	echo "feedback     zellview@posteo.de"
	echo "base         linuxmint 21.2 victoria"
	echo "boot         ventoy 91"
	echo

#    echo "persistVolume      $persistVol"
#    echo "persistVolumeSize  $persistSize MB"

#    echo "workImage         $workImage"
#    echo "workImagesize     $workImagesize MB"
#    echo
#    echo "sourceImagename   $sourceImagename"
#    echo
#    echo "mointpoint        $mountPt"
#    echo "persistPoint      $persistPt"
#    echo

	echo "This script will install zellview-dimi on destination-device"
	echo "************"
	echo $destDevice
	echo "************"
	echo
	echo "Press RETURN to continue or CTRL+C to abort."
	read tmp

	# Dimi/Script -> Dimi
	cd ..

	echo "cleanup mountpoint"
	echo "unmount $mountPt"
	sudo umount $mountPt
	echo "remove $mountPt"
	sudo rm $mountPt -rf
	echo

	echo "Ventoy2Disc to $destDevice, label $label"
	sudo sh Rsrc/Tools/ventoy/Ventoy2Disk.sh -I -S -r $reservedSpace -L $label $destDevice

	echo "make dir $mountPt"
	mkdir $mountPt
	echo "mount ${destDevice}1 on $mountPt"
	sudo mount ${destDevice}1 $mountPt
	echo

	echo -n "copy Rsrc/tmpl/ventoy to $mountPoint ... "
	cp Rsrc/tmpl/ventoy $mountPt -r
	echo "done"

	echo -n "copy iso-image to $mountPt ... "
	cp ../../zDev/dimi-iso/$label-$version-pure.iso $mountPt
	echo "done"

	echo "make dir $mountPt/$persistPt"
	mkdir $mountPt/$persistPt
	echo

#   echo "create $persistVol ($persistSize MB) volume in $persistPoint"
#   sudo Tools/ventoy/CreatePersistentImg.sh -s $persistSize -o $mountPoint/$persistPoint/$persistVol

#   echo "copy $persistVolEmpty.zip to "
#   cp Rsrc/$persistVolMini.zip $mountPt/$persistPt 

	echo "unzip $persistVol.zip to $persistPt"
	unzip Rsrc/dat/$persistVol.zip -d $mountPt/$persistPt

	echo "cleanup mountpoint"
	echo "unmount $mountPt"
	sudo umount $mountPt
	echo "remove $mountPt"
	sudo rm $mountPt -rf
	echo "DimiCreateStick done"

# END CreateStick.

echo "$name installed succesfully on device $destDevice."
echo "Shutdown your computer and boot from this device"
echo
echo "enjoy and happy coding"
echo
echo "feedback is welcome  zellview@posteo.de"
echo
echo "visit us at github   www.github.com/zellview"
echo "consider to sponsor  zellview ? https://sponsor.zellview.network"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo
echo "the zellview-team"
