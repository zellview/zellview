# SCRIPT DimiInstallOpenshot
# 

# by zellview media
# on Su 2023-12-26 seq 19
# www.github.com/zellview

	Version=0
	DimiVersion=3.2.20

	echo "start DimiInstallOpenshot "$Version

	add-apt-repository ppa:openshot.developers/ppa -y
	apt-get update -y
	apt-get install openshot-qt python3-openshot -y

	echo "Done DimiInstallOpenshot"

# END DimiInstallOpenshot.