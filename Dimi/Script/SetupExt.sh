# SCRIPT DimiSetupExt
# 

# kk 25. Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

    echo "start DimiSetupExt version v "$version
    echo "by zellview media"
    echo "www.zellview.net"
    echo
    echo "This script will install extended software-set for zellview-dimi."
    echo 
    echo "eg Openshot Google-Earth-Pro Audcity etc"
    echo
    echo "feedback is welcome   zellview@posteo.de"
    echo "visit us at GitHub https://github.com/zellview"
    echo
    echo "consider to sponsor zellview ? https://zellview.eu"
    echo
    echo "Press RETURN to continue or CTRL+C to abort."
    read tmp

    echo "apt-get update"
    apt-get update -y

	echo "install openshot"
	sh InstallOpenshot.sh

	echo "install google-earth"
	sh InstallGoogleEarth.sh
	
	echo "install cubic"
	sh InstallCubic.sh	

	echo "install audacity"
	sh InstallAudacity.sh

#    echo "install snap"
#    sudo apt install snapd
#    echo
    
#   echo "install zoom"
#   sudo snap install zoom-client
#   echo 

	echo "apt update"
	sudo apt update -y
	echo

echo "install succesfully finnished"
echo "enjoy and happy coding"
echo
echo "feedback welcome at zellview@posteo.de"
echo
echo "visit us at GitHub https://github.com/zellview"
echo
echo "consider to sponsor zellview ? https://zellview.eu"
echo
echo "keep the spirit of Pascal and the message of Niklaus Wirth"
echo "cu"
echo "the zellview-team"
echo
