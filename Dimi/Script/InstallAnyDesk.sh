# SCRIPT DimiInstallAnydesk;


#	by zellview new media
#	www.zellview.network
#	version 3.2.06
#	24. August 2023

	echo "start DimiInstallAnydesk"

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

	sudo apt update
	sudo apt install anydesk -y

	echo "DimiInstallAnydesk done"
