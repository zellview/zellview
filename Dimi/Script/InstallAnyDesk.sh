# SCRIPT DimiInstallAnydesk
# 

# by zellview media
# Tue 27-Feb-2024 seq 22
# www.github.com/zellview

	Version=4

	echo "DimiInstallAnydesk version "$Version" started ..."

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | tee /etc/apt/sources.list.d/anydesk-stable.list

	apt update -y
	apt install anydesk -y

	echo "DimiInstallAnydesk done"

# END DimiInstallAnydesk.