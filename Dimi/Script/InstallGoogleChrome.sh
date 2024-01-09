# SCRIPT InstallGoogleChrome
# 

# on 2024-01-09 seq 23
# by zellview media
# www.zellview.net

	version="3.2.16"

	echo "start DimiInstallGoogleChrome "$version

#	cd ../Rsrc/deb
#	echo -n "get debian install package ... "
#	wget --no-clobber -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#	echo "done"

	apt-get update -y

	echo -n "install package ... "
	apt-get install google-chrome-stable_current_amd64.deb -y
	
#	cd ../../Script

	echo "Done DimiInstallGoogleChrome"
	