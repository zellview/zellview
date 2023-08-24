# SCRIPT InstallAudacity;


#	by zellview new media	
#	www.zellview.network
#	24. August 2023
#	v 3.2.06

echo "start InstallAudacity"

add-apt-repository ppa:ubuntuhandbook1/audacity
apt update -y
sudo apt install audacity

echo "InstallAudacity done"
 