# SCRIPT DimiSetupExt
# 

# on Su 2024-02.11 seq 69
# by zellview media
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"

    echo "start DimiSetupExt version "$Version
    echo "This script will install extended software-set for zellview-dimi."
    echo "eg Openshot Google-Earth-Pro Audcity etc"
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

	echo "Done DimiSetupExt"
# END DimiSetupExt.