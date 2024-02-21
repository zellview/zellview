# SCRIPT DimiInstallBlackbox2
# 

# by zellview media
# Wed 2024-02-21 seq 20
# www.github.com/zellview

	Version=2
	DimiVersion="3.2.24"

	echo "start DimiInstallBlackbox2 version"$Version
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
	dpkg --add-architecture i386

	echo "add source to apt/sources"
	echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

	apt-get update -y
	apt-get install bbcb2 -y

	echo "done DimiInstallBlackbox2"

# END DimiInstallBlackbox2.