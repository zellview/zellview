# SCRIPT DimiInstallWine
# 

# by zellview media
# Wed 2024-2-11 seq 24
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.24"
		
	echo "start DimiInstallWine "$DimiVersion" file "$Version
	
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