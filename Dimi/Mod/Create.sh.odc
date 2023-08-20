#!/bin/bash

# MODUL DimiInstall;

# zellview-dimi version 3.2.01 , 29. Juli 2023
# copyright by zellview new media

# CONST
    Modulename="DimiInstall"

# VAR
    sourceUrl="https://download.zellview.network"    # resource locator
    destDevice=$1                                    # destination device

    version="3.2.01"
    name="zellview dimi"
    label="zv-dimi"
    release="Victoria"

    mountPt="mountPoint"
    persistPt="persistence"

    persistVol="zv-persist-6G-empty.dat"
    reservedSpace=48900     # use for 64GB sticks
    
#   persistVol="zv-persist-mini.dat"
#   persistVol="zv-persist-4G.dat"
#   persistVol="zv-persist-12G.dat"
#   reservedSpace=21500     # use for 32GB sticks

# BEGIN
    echo
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
    echo "source-URL  $sourceUrl"
    echo "feedback    zellview@posteo.de"
    echo "base        linuxmint 21.2 victoria"
    echo "boot        ventoy 91"
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
    
    beg=$(date +"%H:%M:%S")
    echo "$Modulename start at $beg"

    # dimi/Script -> dimi
    cd ..

    echo "cleanup mountpoint"
    echo "unmount $mountPt"
    sudo umount $mountPt
    echo "remove $mountPt"
    sudo rm $mountPt -rf
    echo

    echo "Ventoy2Disc to $destDevice, label $label"
    sudo sh Tools/ventoy/Ventoy2Disk.sh -I -S -r $reservedSpace -L $label $destDevice

    echo "make dir $mountPt"
    mkdir $mountPt
    echo "mount ${destDevice}1 on $mountPt"
    sudo mount ${destDevice}1 $mountPt
    echo

    echo -n "copy Rsrc/tmpl/ventoy to $mountPt ... "
    cp Rsrc/tmpl/ventoy $mountPt -r
    echo "done"

    echo -n "copy iso-image to $mountPt ... "
    cp ../dimi-iso/$label-$version-pure.iso $mountPt
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
#   echo "move $persistVol to persistence.dat"
#   mv $mountPt/$persistPt/$persistVol $mountPt/$persistPt/persistence.dat
    echo

    echo "cleanup mountpoint"
    echo "unmount $mountPt"
    sudo umount $mountPt
    echo "remove $mountPt"
    sudo rm $mountPt -rf
    echo

    # finnish
    end=$(date +"%H:%M:%S")
    echo "$Modulename finnished"
    echo "start $beg"
    echo "end   $end"
    #echo "elapsed time ${ $end-$beg }"
    echo

# END DimiInstall.

echo "$name installed succesfully on device $destDevice."
echo "Shutdown your computer and boot from this device"
echo
echo "enjoy and happy coding"
echo
echo "feedback is welcome  zellview@posteo.de"
echo
echo "visit us at github   https://github.com/zellview"
echo "or sponsor zellview  https://sponsor.zellview.network"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo
echo "the zellview-team"
echo
