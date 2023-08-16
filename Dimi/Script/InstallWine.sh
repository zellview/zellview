# MODULE InstallWine;



# (** 
	by zellview new.media 
	www.zellview.network
# **)
		
# BEGIN

	echo "starting InstallWine"
	dpkg--add-architecture i386 

	mkdir -pm755 /etc/apt/keyrings
	
	wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources

#	apt update -y
	apt install --install-recommends winehq-stable -y

	echo "ending InstallWine"

# END InstallWine.
