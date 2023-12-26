# SCRIPT InstallGoogleChrome
# 

# seq 16 on 2023-12-26
# by zellview media
# www.zellview.net

	version="3.2.08"

	echo "start DimiInstallGoogleChrome version "$version

#	cd ../Rsrc/deb

#	echo -n "get debian install package ... "

#	wget --no-clobber -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#	echo "done"

	apt-get update

	echo -n "install package ... "
	apt-get install google-chrome-stable_current_amd64.deb -y
	echo "done"

#	cd ../../Script

	echo "Done DimiInstallGoogleChrome"
	