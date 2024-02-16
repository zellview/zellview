# SCRIPT DimiConfig 
# 

# by zellview media
# on Th 2024-02-15 seq 85
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.21"

	echo "start DimiConfig version "$Version
	echo "This script will configure some settings for zellview-dimi"
	echo "keyboard, timezone, background, languages etc"

	echo "set keyboard, XKBLAYOUT=de"
	sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/g' /etc/default/keyboard

	echo "link timezone to Europe/Berlin"
	ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

	echo "set background to zellview3_cloudy.png"
	ln -sf /root/zellview-rel/Dimi/Rsrc/zv-impressions/zellview3_cloudy.png /usr/share/backgrounds/linuxmint/default_background.jpg

	echo "install de_De.utf8"
	locale-gen de_DE.utf8

#	update-locale=de_DE.utf8
#	dpkg-reconfigure locales

	echo "Done DimiConfig"

# END DimiConfig.