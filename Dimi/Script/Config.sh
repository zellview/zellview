# SCRIPT DimiConfig 
# 
# on 2024-01-05 seq 65
# by zellview media
# www.zellview.net

	version="3.2.13"

	echo "start DimiConfig "$version
	echo "This script will configure some settings for zellview-dimi"
	echo "keyboard, timezone, background etc"

	echo "set keyboard, XKBLAYOUT=de"
	sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/g' /etc/default/keyboard

	echo "link timezone to Europe/Berlin"
	ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime

	echo "set background to zellview3_cloudy.png"
	ln -sf ~/zellview/Dimi/Rsrc/zv-impressions/zellview3_cloudy.png /usr/share/backgrounds/linuxmint/default_background.jpgs

	echo "Done DimiConfig"

# END DimiConfig.
