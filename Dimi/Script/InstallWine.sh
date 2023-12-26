# SCRIPT DimiInstallWine
# 

# kk, 25.Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"
		
	echo "starting DimiInstallWine version "$version
	
	dpkg--add-architecture i386 -y

	mkdir -pm755 /etc/apt/keyrings
	
	wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
	
	sudo add-apt-repository ppa:ubuntu-wine/ppa

	apt update -y
	apt install --install-recommends winehq-stable -y
	apt install playonlinux -y

	echo "Done DimiInstallWine"
	