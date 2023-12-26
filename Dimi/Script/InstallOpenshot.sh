# SCRIPT DimiInstallOpenshot
# 

#	kk 25. Dezember 2023
#	by zellview media
#	www.zellview.net
#	3.2.08

echo "start DimiInstallOpenshot version "$version

add-apt-repository ppa:ubuntuhandbook1/audacity -y
apt update -y
sudo apt install audacity -y

echo "Done DimiInstallOpenshot"
