# SCRIPT DimiInstallBlackbox2
# 

# by zellview media
# Tue 27-Feb-2024 seq 24
# www.github.com/zellview

	Version=5

	echo "DimiInstallBlackbox2 version"$Version" started"
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
	dpkg --add-architecture i386

	echo "add source to apt/sources"
	echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

	apt-get update -y
	apt-get install bbcb2 -y

	echo "DimiInstallBlackbox2 done "

# END DimiInstallBlackbox2.