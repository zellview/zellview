# SCRIPT DimiSetup; 

# (** 
#	by zellview new media, 20. August 2023
#	www.zellview.network
#	zellview/Dimi/Mod/DimiSetup.sh.odc
# **)

# BEGIN
    echo "starting DimiSetup"
    echo "by zellview new media"
    echo "www.zellview.network"
    echo
    echo "This script will install software-set for zellview-dimi."
    echo 
    echo "eg blackbox2 git google-earth kazam"
    echo "kate krusader retext wine xfburn etc"
    echo
    echo "feedback is welcome   zellview@posteo.de"
    echo "visit us at GitHub https://zellview.network"
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

#    echo "install anydesk"
#   sudo sh .install-anydesk.sh

	echo "install openshot"
	sudo sh InstallOpenshot.sh

	echo "install google-earth"
	sudo sh InstallGoogleEarth.sh

	echo "install kazam"
	sudo apt install kazam -y
  
	echo "install krusader"
	sudo apt install krusader -y

	echo "install retext"
	sudo apt install retext -y
	
#    echo "install snap"
#    sudo apt install snapd
#    echo
    
    echo "install xfburn"
	sudo apt install xfburn -y
    
#   echo "install zoom"
#   sudo snap install zoom-client
#   echo 

    echo "apt update"
    sudo apt update -y
    echo

# END DimiSetup.

echo "install succesfully finnished"
echo "enjoy and happy coding"
echo
echo "feedback welcome at zellview@posteo.de"
echo
echo "visit us at GitHub https://github.com/zellview"
echo
echo "consider to sponsor zellview ? https://sponsor.zellview.network"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo "the zellview-team"
echo
