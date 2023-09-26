# SCRIPT DimiSetup; 

#	by zellview new media
#	www.zellview.network
#	version 3.2.06, 20. August 2023

# BEGIN
	echo "start DimiSetup"
	echo "by zellview new media"
	echo "www.zellview.network"
	echo
	echo "This script will install software-set for zellview-dimi."
	echo 
	echo "eg blackbox2 git kazam kate krusader retext wine xfburn etc"
	echo
	echo "feedback is welcome   zellview@posteo.de"
	echo "visit us at GitHub www.github.com/zellview"
	echo
	echo "consider to sponsor zellview ? https://sponsor.zellview.network"
	echo
	echo "Press RETURN to continue or CTRL+C to abort."
	read tmp

	echo "apt update"
	apt update -y

	echo "install git"
	apt install git -y

	echo "install blackbox2"
	sh InstallBlackbox2.sh

	echo "install kate"
	apt install kate -y

	echo "install wine"
	sh InstallWine.sh
	
	echo "install XRDP-Server"
	sh InstallXRDP.sh
	
	echo "install XRDP-Client Remmina"
	apt install remmina

	echo "install kazam"
	apt install kazam -y
  
	echo "install krusader"
	apt install krusader -y

	echo "install retext"
	apt install retext -y
    
	echo "install xfburn"
	apt install xfburn -y
    
	echo "apt update"
	apt update -y
	echo

#	END DimiSetup.

echo "install succesfully finnished"
echo "enjoy and happy coding"
echo
echo "feedback welcome at zellview@posteo.de"
echo
echo "visit us at GitHub https://github.com/zellview"
echo
echo "consider to sponsor zellview ? https://.zellview.eu"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo "the zellview-team"
echo
