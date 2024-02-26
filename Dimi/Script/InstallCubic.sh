# SCRIPT DimiInstallCubic
# 

# by zellview media
# Mon 26-Feb-2024 seq 41
# www.github.com/zellview

	Version=3
	DimiVersion="3.2.28"

	echo "starting DimiInstallCubic "$DimiVersion" file "$Version

	sudo apt-add-repository universe -y
	sudo apt-add-repository ppa:cubic-wizard/release -y
	sudo apt update -y
	sudo apt-get install --no-install-recommends cubic -y

# apt-add-repository ppa:cubic-wizard/release -y
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

	echo "DimiInstallCubic done"

# END DimiInstallCubic.