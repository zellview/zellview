# SCRIPT DimiInstallCubic
# 

#	on 2024-01-09 seq 32
#	by zellview media
#	www.zellview.net

	version="3.2.16"

	echo "starting DimiInstallCubic "$version

	sudo apt-add-repository universe -y
	sudo apt-add-repository ppa:cubic-wizard/release -y
	sudo apt update -y
	sudo apt-get install --no-install-recommends cubic -y

#	apt-add-repository ppa:cubic-wizard/release -y
#	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

	echo "Done DimiInstallCubic"
	
# END DimiInstallCubic.