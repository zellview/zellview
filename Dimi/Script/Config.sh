# 
# SCRIPT DimiConfig

# by zellview media
# Mon 26-Feb-2024 seq 110
# www.github.com/zellview

	Version=7
	DimiVersion="3.2.28"

	echo "
		start DimiConfig version "$DimiVersion" file "$Version
		This script will configure some settings for zellview-dimi
		keyboard, timezone, background, languages etc
		"

	echo "set keyboard, XKBLAYOUT=de"
	sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/g' /etc/default/keyboard

	echo "link timezone to Europe/Berlin"
	ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime


	echo "set background"
	srcLink=/home/mint/zellview/Dimi/Rsrc/zv-impressions/zellview3_cloudy.png
	destLink=/usr/share/backgrounds/linuxmint/default_background.jpg
	ln -sf  $srcLink $destLink
	
	echo "install de_De.utf8"
	locale-gen de_DE.utf8
	
#	update-locale=de_DE.utf8
#	dpkg-reconfigure locales

	echo "DimiConfig done"

# END DimiConfig.