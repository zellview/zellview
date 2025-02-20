

# SCRIPT DimiInstallGoogleChrome

# by zellview media
# www.github.com/zellview

	Version=5

	echo "DimiInstallGoogleChrome version "$Version" start ..."

#	cd ../Rsrc/deb
#	echo -n "get debian install package ... "
#	wget --no-clobber -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#	echo "done"

	apt-get update -y

	echo -n "install package ... "
	apt-get install google-chrome-stable_current_amd64.deb -y

	echo "DimiInstallGoogleChrome done"

# END DimiInstallGoogleChrome.