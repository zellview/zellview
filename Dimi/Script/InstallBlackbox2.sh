# MODULE InstallBlackbox2;



# (**
#	by zellview new media
#	www.zellview.network
# **)

# BEGIN
    echo
    echo "install blackbox2 from oberon.org"
    echo "starting InstallBlackbox2"
	wget http://deb.oberon.org/deb.oberon.org.gpg.key 

	apt-key add deb.oberon.org.gpg.key
	echo "add i386 architecture"
    dpkg --add-architecture i386

    echo "add source to apt/sources"
    echo "deb http://deb.oberon.org/linux testing main" | sudo tee -a /etc/apt/sources.list

    apt-get update -y
    apt-get install bbcb2 -y

    echo "end InstallBlackbox2"

# END InstallBlackbox2.
