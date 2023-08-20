#	SCRIPT DimiConfig;  

#	

#	by zellview new media, 20. August 2023
#	www.zellview.network
#	kai47x version 3.2.05

#	echo "starting DimiConfig"
#	echo "This script will configure some settings for zellview-dimi"
#	echo "keyboard, timezone, background etc"

	echo "set keyboard, XKBLAYOUT=de"
	sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/g' /etc/default/keyboard

	echo "link timezone to Europe/Berlin"
	ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

	echo "set background to zellview3_cloudy.png"
	ln -sf ../Rsrc/zellview3_cloudy.png /usr/share/backgrounds/linuxmint/default_background.jpg

	echo "end DimiConfig" 