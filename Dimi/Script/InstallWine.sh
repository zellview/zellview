# SCRIPT DimiInstallWine
# 

# by zellview media
# on 2024-2-11 seq 21
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"
		
	echo "starting DimiInstallWine "$Version
	
	dpkg --add-architecture i386

	mkdir -pm755 /etc/apt/keyrings
	
	wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
	
	sudo add-apt-repository ppa:ubuntu-wine/ppa

	apt update -y
	apt install --install-recommends winehq-stable -y
	apt install playonlinux -y

	echo "Done DimiInstallWine"
	
# END DimiInastallWine.