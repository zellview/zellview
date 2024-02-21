# SCRIPT DimiInstallGoogleChrome
# 

# by zellview media
# Wed 2024-02-21 seq 30
# www.github.com/zellview

	Version=2
	DimiVersion="3.2.24"

	echo "start DimiInstallGoogleChrome "$DimiVersion" file "$Version

#	cd ../Rsrc/deb
#	echo -n "get debian install package ... "
#	wget --no-clobber -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#	echo "done"

	apt-get update -y

	echo -n "install package ... "
	apt-get install google-chrome-stable_current_amd64.deb -y

	echo "done DimiInstallGoogleChrome"

# END DimiInstallGoogleChrome.