# SCRIPT DimiInstallAudacity
# 

# by zellview media
# Mon 26-Feb-2024 seq 28
# www.github.com/zellview

	Version=3
	DimiVersion="3.2.28"

	echo "start DimiInstallAudacity "$DimiVersion" file "$Version

	add-apt-repository ppa:ubuntuhandbook1/audacity -y
	apt update -y
	apt-get install audacity -y

	echo "DimiInstallAudacity done"

# END DimiInstallAudacity.