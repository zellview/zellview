# SCRIPT DimiInstallAudacity
# 

# by zellview media
# Tue 27-Feb-2024 seq 30
# www.github.com/zellview

	Version=4
	DimiVersion="3.2.28"

	echo "DimiInstallAudacity version "$Version" started ..."

	add-apt-repository ppa:ubuntuhandbook1/audacity -y
	apt update -y
	apt-get install audacity -y

	echo "DimiInstallAudacity done"

# END DimiInstallAudacity.