# SCRIPT DimiInstallAnydesk
# 

# kk 25. Dezember 2023
# by zellview media
# www.zellview.net

	version="3.2.08"

	echo "start DimiInstallAnydesk version "$version

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

	apt update
	apt install anydesk -y

	echo "Done DimiInstallAnydesk"