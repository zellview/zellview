# SCRIPT InstallBlackbox2;


#	by zellview new media	
#	www.zellview.network
#	24. August 2023
#	v 3.2.06

    echo
    echo "start InstallBlackbox2"
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
    dpkg --add-architecture i386

    echo "add source to apt/sources"
    echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

    apt-get update -y
    apt-get install bbcb2 -y

    echo "InstallBlackbox2 done "
