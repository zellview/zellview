# SCRIPT DimiInstallBlackbox2
# 

# by zellview media
# on Sun 2024-02-18 seq 18
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.22"

	echo "start DimiInstallBlackbox2 version"$Version
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
	dpkg --add-architecture i386

	echo "add source to apt/sources"
	echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

	apt-get update -y
	apt-get install bbcb2 -y

	echo "Done DimiInstallBlackbox2"

# END DimiInstallBlackbox2.