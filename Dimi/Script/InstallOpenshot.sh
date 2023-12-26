# SCRIPT DimiInstallOpenshot
# 

#	seq 12 on 2023-12-26
#	by zellview media, www.zellview.net
#	version 3.2.08

echo "start DimiInstallOpenshot version "$version

add-apt-repository ppa:openshot.developers/ppa -y
apt-get update -y
apt-get install openshot-qt python3-openshot -y

echo "Done DimiInstallOpenshot"
