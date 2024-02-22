# SCRIPT DimiInstallOpenshot
# 

# by zellview media
# Wed 2024-02-21 seq 22
# www.github.com/zellview

	Version=1
	DimiVersion=3.2.24

	echo "start DimiInstallOpenshot "$DimiVersion" file "$Version

	add-apt-repository ppa:openshot.developers/ppa -y
	apt-get update -y
	apt-get install openshot-qt python3-openshot -y

	echo "done DimiInstallOpenshot"

# END DimiInstallOpenshot.