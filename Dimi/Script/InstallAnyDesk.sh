# SCRIPT DimiInstallAnydesk
# 

# by zellview media
# Mon 26-Feb-2024 seq 20
# www.github.com/zellview

	Version=3
	DimiVersion="3.2.28"

	echo "start DimiInstallAnydesk version "$DimiVersion" file "$Version"

	curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/anydesk.gpg

	echo "deb http://deb.anydesk.com/ all main" | tee /etc/apt/sources.list.d/anydesk-stable.list

	apt update -y
	apt install anydesk -y

	echo "DimiInstallAnydesk done"

# END DimiInstallAnydesk.