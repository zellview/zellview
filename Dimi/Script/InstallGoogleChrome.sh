# SCRIPT InstallGoogleChrome;


# by zellview new media
# version 3.2.06
# 24. August 2023

	echo
	echo "install google-chrome"
	echo "start InstallGoogleChrome"
	echo

	cd ../Rsrc/deb

	echo -n "get debian install package ... "
	wget -nc -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	echo "done"

	echo -n "install package ... "
#	sudo dpkg -i ../Rsrc/deb/google-chrome-stable_current_amd64.deb
		sudo apt install ./google-chrome-stable_current_amd64.deb -y
		echo "done"

	cd ../../Script

	echo "InstallGoogleChrome done"
	