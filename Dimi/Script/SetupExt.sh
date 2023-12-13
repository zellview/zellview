# SCRIPT DimiSetupExt;

#	by zellview new media
#	www.zellview.net
#	24. August 2023
#	version 3.2.06

# BEGIN
    echo "start DimiSetupExt"
    echo "by zellview new media"
    echo "www.zellview.network"
    echo
    echo "This script will install extended software-set for zellview-dimi."
    echo 
    echo "eg Openshot Google-Earth-Pro Audcity etc"
    echo
    echo "feedback is welcome   zellview@posteo.de"
    echo "visit us at GitHub https://github.com/zellview"
    echo
    echo "consider to sponsor zellview ? https://sponsor.zellview.network"
    echo
    echo "Press RETURN to continue or CTRL+C to abort."
    read tmp

    echo "apt update"
    apt update -y

	echo "install openshot"
	sudo sh InstallOpenshot.sh

	echo "install audacity"
	sudo sh InstallAudacity.sh

	echo "install google-earth"
	sudo sh InstallGoogleEarth.sh

#	echo "install anydesk"
#	sudo sh .install-anydesk.sh

#    echo "install snap"
#    sudo apt install snapd
#    echo
    
#   echo "install zoom"
#   sudo snap install zoom-client
#   echo 

	echo "apt update"
	sudo apt update -y
	echo

# END DimiSetupExt.

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
