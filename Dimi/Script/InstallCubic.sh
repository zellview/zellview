# SCRIPT DimiInstallCubic
# 

# by zellview media
# Wed 2024-02-21 seq 38
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.24"

	echo "starting DimiInstallCubic "$DimiVersion" file "$Version

	sudo apt-add-repository universe -y
	sudo apt-add-repository ppa:cubic-wizard/release -y
	sudo apt update -y
	sudo apt-get install --no-install-recommends cubic -y

# apt-add-repository ppa:cubic-wizard/release -y
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

	echo "done DimiInstallCubic"

# END DimiInstallCubic.