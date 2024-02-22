# SCRIPT DimiSetup
# 
 
# by zellview media
# Thu 2024-02-22 seq 95
# www.github.com/zellview

	Version=4
	DimiVersion="3.2.25"

	echo "start DimiSetup version "$DimiVersion" file "$Version
	echo
	echo "This script will install software-set for zellview-dimi."
	echo "eg blackbox2 git kazam kate krusader retext wine xfburn etc"
	echo
	echo "Press RETURN to continue or CTRL+C to cancel."
	read tmp

	echo "apt-get update"
	apt-get update -y

	echo "install git"
	apt-get install git -y

	echo "install blackbox2"
	sh InstallBlackbox2.sh

	echo "install kate"
	apt-get install kate -y

	echo "install wine"
	sh InstallWine.sh
#	apt-get install wine-installer
	
#	echo "install XRDP-Server"
#	sh InstallXRDP.sh
	
#	echo "install XRDP-Client Remmina"
#	apt-get install remmina -y
	
	echo "install anydesk"
	sh InstallAnydesk.sh

	echo "install kazam"
	apt-get install kazam -y
  
	echo "install krusader"
	apt-get install krusader -y

	echo "install retext"
	apt-get install retext -y
    
	echo "install xfburn"
	apt-get install xfburn -y
    
	echo "apt update"
	apt update -y
	echo

	echo "done DimiSetup"

# END DimiSetup.
