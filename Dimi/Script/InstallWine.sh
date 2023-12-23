

# SCRIPT RemoveGit;

#	by zellview media
#	www.zellview.net
#	kk, 22.August 2023
		
	echo "starting InstallWine"
	
	dpkg--add-architecture i386 

	mkdir -pm755 /etc/apt/keyrings
	
	wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
	
#	sudo add-apt-repository ppa:ubuntu-wine/ppa
#	sudo apt-get update

	apt update -y
	apt install --install-recommends winehq-stable -y
	apt install playonlinux -y

	echo "InstallWine done"

