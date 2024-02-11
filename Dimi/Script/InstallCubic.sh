# SCRIPT DimiInstallCubic
# 

# by zellview media
# on Su 2024-02-11 seq 37
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"

	echo "starting DimiInstallCubic "$Version

	sudo apt-add-repository universe -y
	sudo apt-add-repository ppa:cubic-wizard/release -y
	sudo apt update -y
	sudo apt-get install --no-install-recommends cubic -y

# apt-add-repository ppa:cubic-wizard/release -y
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

	echo "Done DimiInstallCubic"

# END DimiInstallCubic.