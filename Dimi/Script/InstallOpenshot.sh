# SCRIPT DimiInstallOpenshot
# 

#	on 2023-12-26 seq 18
#	by zellview media, www.zellview.net

version=3.2.16

echo "start DimiInstallOpenshot "$version

add-apt-repository ppa:openshot.developers/ppa -y
apt-get update -y
apt-get install openshot-qt python3-openshot -y

echo "Done DimiInstallOpenshot"