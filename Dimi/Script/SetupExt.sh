# SCRIPT DimiSetupExt
# 

# by zellview media
# Mon 26-Feb-2024 seq 80
# www.github.com/zellview

	Version=5
	DimiVersion="3.2.28"

    echo "
		start DimiSetupExt version "$DimiVersion" file "$Version
    	This script will install extended software-set for zellview-dimi.
    	eg Openshot Google-Earth-Pro Audcity etc

    	Press RETURN to continue or CTRL+C to abort.
	"
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

	echo "DimiSetupExt done"
	
# END DimiSetupExt.