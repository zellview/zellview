# SCRIPT DimiSetupExt
# 

# by zellview media
# Thu 2024-02-22 seq 73
# www.github.com/zellview

	Version=3
	DimiVersion="3.2.25"

    echo "start DimiSetupExt version "$DimiVersion" file "$Version
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

	echo "done DimiSetupExt"
	
# END DimiSetupExt.