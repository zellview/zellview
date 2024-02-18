# SCRIPT DimiConfig 
# 

# by zellview media
# on Sun 2024-02-18 seq 90
# www.github.com/zellview

	Version=1
	DimiVersion="3.2.22"

	echo "start DimiConfig version "$DimiVersion" file"$Version
	echo "This script will configure some settings for zellview-dimi"
	echo "keyboard, timezone, background, languages etc"

	echo "set keyboard, XKBLAYOUT=de"
	sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/g' /etc/default/keyboard

	echo "link timezone to Europe/Berlin"
	ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

	echo "set background to zellview3_cloudy.png"
	ln -sf /root/zellview/Dimi/Rsrc/zv-impressions/zellview3_cloudy.png /usr/share/backgrounds/linuxmint/default_background.jpg

	echo "install de_De.utf8"
	locale-gen de_DE.utf8

#	update-locale=de_DE.utf8
#	dpkg-reconfigure locales

	echo "Done DimiConfig"

# END DimiConfig.