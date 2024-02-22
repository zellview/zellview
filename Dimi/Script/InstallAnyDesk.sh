# SCRIPT DimiInstallAnydesk
# 

# by zellview media
# Wed 2024-01-21 seq 18
# www.zellview.net

	Version=1
	DimiVersion="3.2.24"

	echo "start DimiInstallAnydesk "$Version

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | tee /etc/apt/sources.list.d/anydesk-stable.list

	apt update -y
	apt install anydesk -y

	echo "done DimiInstallAnydesk"

# END DimiInstallAnydesk.