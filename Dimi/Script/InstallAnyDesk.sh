# SCRIPT DimiInstallAnydesk
# 

# seq 09 on 2024-01 04
# by zellview media
# www.zellview.net

	version="3.2.11"

	echo "start DimiInstallAnydesk "$version

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

	apt update -y
	apt install anydesk -y

	echo "Done DimiInstallAnydesk"