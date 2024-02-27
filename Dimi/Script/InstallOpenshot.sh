# SCRIPT DimiInstallOpenshot
# 

# by zellview media
# Tue 27-Feb-2024 seq 26
# www.github.com/zellview

	Version=4

	echo "DimiInstallOpenshot "$Version" started ..."

	add-apt-repository ppa:openshot.developers/ppa -y
	apt-get update -y
	apt-get install openshot-qt python3-openshot -y

	echo "DimiInstallOpenshot done"

# END DimiInstallOpenshot.