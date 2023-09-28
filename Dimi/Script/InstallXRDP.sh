# SCRIPT InstallXRDP;


#	by zellview new media
#	kk, 26.September 2023
#	www.zellview.net
		
	echo "starting InstallXRDP"
	
	sudo apt install xrdp xorgxrdp -y
	echo env -u SESSION_MANAGER -u DBUS_SESSION_BUS_ADDRESS cinnamon-session>~/.xsession

	echo "InstallXRDP done"

# END InstallXRDP.
 