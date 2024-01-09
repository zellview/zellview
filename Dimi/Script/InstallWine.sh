# SCRIPT DimiInstallWine
# 

# on 2024-01-09 seq 19
# by zellview media
# www.zellview.net

	version="3.2.16"
		
	echo "starting DimiInstallWine "$version
	
	dpkg --add-architecture i386

	mkdir -pm755 /etc/apt/keyrings
	
	wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
	
	sudo add-apt-repository ppa:ubuntu-wine/ppa

	apt update -y
	apt install --install-recommends winehq-stable -y
	apt install playonlinux -y

	echo "Done DimiInstallWine"
	