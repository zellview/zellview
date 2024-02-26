# SCRIPT DimiInstallGoogleChrome
# 

# by zellview media
# Mon 25-Feb-2024 seq 33
# www.github.com/zellview

	Version=4
	DimiVersion="3.2.28"

	echo "start DimiInstallGoogleChrome "$DimiVersion" file "$Version

#	cd ../Rsrc/deb
#	echo -n "get debian install package ... "
#	wget --no-clobber -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#	echo "done"

	apt-get update -y

	echo -n "install package ... "
	apt-get install google-chrome-stable_current_amd64.deb -y

	echo "DimiInstallGoogleChrome done"

# END DimiInstallGoogleChrome.