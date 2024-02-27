# SCRIPT DimiInstallCubic
# 

# by zellview media
# Tue 27-Feb-2024 seq 45
# www.github.com/zellview

	Version=4

	echo "DimiInstallCubic "$Version" started ..."
	
	sudo apt-add-repository universe -y
	sudo apt-add-repository ppa:cubic-wizard/release -y
	sudo apt update -y
	sudo apt-get install --no-install-recommends cubic -y

# apt-add-repository ppa:cubic-wizard/release -y
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

	echo "DimiInstallCubic done"

# END DimiInstallCubic.