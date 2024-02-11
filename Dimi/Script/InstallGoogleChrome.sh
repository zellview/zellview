# SCRIPT DimiInstallGoogleChrome
# 

# by zellview media
# on Su 2024-02-11 seq 27
# www.github.com/zellview

	Version=0
	DimiVersion="3.2.20"

	echo "start DimiInstallGoogleChrome "$Version

#	cd ../Rsrc/deb
#	echo -n "get debian install package ... "
#	wget --no-clobber -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#	echo "done"

	apt-get update -y

	echo -n "install package ... "
	apt-get install google-chrome-stable_current_amd64.deb -y

	echo "Done DimiInstallGoogleChrome"

# END DimiInstallGoogleChrome.