# SCRIPT DimiSetup
# 
 
# on 2024-01-12 seq 76
# by zellview media
# www.zellview.net

	version="3.2.17"

	echo "start DimiSetup "$version
	echo "by zellview media www.zellview.net"
	echo
	echo "This script will install software-set for zellview-dimi."
	echo "eg blackbox2 git kazam kate krusader retext wine xfburn etc"
	echo
	echo "feedback and sponsoring via"
	echo "PayPal is appreciated here"
	echo "zellview@posteo.de"
	echo
	echo "join us at GitHub www.github.com/zellview"
	echo
	echo "Press RETURN to continue or CTRL+C to abort."
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

echo "Done DimiSetup"
echo "enjoy and happy coding"
echo
echo "sponsoring via PayPal and"
echo "feedback is appreciated"
echo "here"
echo "zellview@posteo.de"
echo
echo "join us at GitHub www.github.com/zellview"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo "the zellview-team"
echo
