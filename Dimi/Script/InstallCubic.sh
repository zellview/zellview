# SCRIPT DimiInstallCubic;
# 

#	by zellview media 
#	www.zellview.media
#	kk, 25. Dezember 2023

	echo "starting DimiInstallCubic"

	apt-add-repository ppa:cubic-wizard/release -y
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E

	apt update -y
	apt install cubic -y

	echo "Done InstallCubic"