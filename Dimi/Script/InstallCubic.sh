# SCRIPT DimiInstallCubic;
# 

#	seq 22 on 2023-12-26
#	by zellview media
#	www.zellview.media

	version="3.2.08"

	echo "starting DimiInstallCubic v "$version

	apt-add-repository ppa:cubic-wizard/release -y
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E -y

	apt update -y
	apt install cubic -y

	echo "Done DimiInstallCubic"