

# SCRIPT DimiConfig

# www.github.com/zellview
# by zellview media

	Version=9

	echo "DimiConfig version "$Version" started ...
		
		This script will configure some settings for zellview-dimi
		keyboard, timezone, background, languages etc
		"

	echo "set keyboard, XKBLAYOUT=de"
	sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/g' /etc/default/keyboard

	echo "link timezone to Europe/Berlin"
	ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

	echo "set background"
#	(* so so ??? *)
	cp /root/zellview-main/Dimi/Rsrc/zv-impressions /usr/share/backgrounds -r
#	srcLink=/home/mint/zellview/Dimi/Rsrc/zv-impressions/zellview3_cloudy.png
	srcLink=/usr/share/backgrounds/zv-impressions/zellview3_cloudy.png
	destLink=/usr/share/backgrounds/linuxmint/default_background.jpg
	ln -sf  $srcLink $destLink
	
	echo "install de_De.utf8"
	locale-gen de_DE.utf8
	
#	update-locale=de_DE.utf8
#	dpkg-reconfigure locales

	echo "DimiConfig done"

# END DimiConfig.