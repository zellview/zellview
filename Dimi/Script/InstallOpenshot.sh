# SCRIPT DimiInstallOpenshot
# 

# by zellview media
# Mon 26-Feb-2024 seq 24
# www.github.com/zellview

	Version=3
	DimiVersion=3.2.28

	echo "start DimiInstallOpenshot "$DimiVersion" file "$Version

	add-apt-repository ppa:openshot.developers/ppa -y
	apt-get update -y
	apt-get install openshot-qt python3-openshot -y

	echo "DimiInstallOpenshot done"

# END DimiInstallOpenshot.