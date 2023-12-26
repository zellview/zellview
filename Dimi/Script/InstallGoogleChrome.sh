# SCRIPT InstallGoogleChrome
# 

# kk, 25. Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

	echo "start DimiInstallGoogleChrome version "$version

	cd ../Rsrc/deb

	echo -n "get debian install package ... "
	wget -nc -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	echo "done"

	echo -n "install package ... "
#	sudo dpkg -i ../Rsrc/deb/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb -y
	echo "done"

	cd ../../Script

	echo "Done DimiInstallGoogleChrome"
	