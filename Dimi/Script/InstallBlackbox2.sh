# SCRIPT DimiInstallBlackbox2
# 

# kk 25 Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

    echo "start DimiInstallBlackbox2 version "$version
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
    dpkg --add-architecture i386 -y

    echo "add source to apt/sources"
    echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

    apt-get update -y
    apt-get install bbcb2 -y

    echo "Done DimiInstallBlackbox2"
