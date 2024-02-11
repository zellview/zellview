# SCRIPT DimiInstallAnydesk
# 

# by zellview media
# on 2024-01-09 seq 15
# www.zellview.net

	Version=0
	DimiVersion="3.2.20"

	echo "start DimiInstallAnydesk "$Version

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | tee /etc/apt/sources.list.d/anydesk-stable.list

	apt update -y
	apt install anydesk -y

	echo "Done DimiInstallAnydesk"

# END DimiInstallAnydesk.