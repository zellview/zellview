# SCRIPT DimiInstallBlackbox2
# 

# on 2024-01-09 seq 16
# by zellview media
# www.zellview.net

	version="3.2.16"

    echo "start DimiInstallBlackbox2 "$version
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
    dpkg --add-architecture i386

    echo "add source to apt/sources"
    echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

    apt-get update -y
    apt-get install bbcb2 -y

    echo "Done DimiInstallBlackbox2"
