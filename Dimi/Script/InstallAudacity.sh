# SCRIPT DimiInstallAudacity
# 

# by zellview media
# on Su 2024-02-11 seq 23
# www.github.com/zellview

Version=0
DimiVersion="3.2.20"

	echo "start DimiInstallAudacity "$Version

	add-apt-repository ppa:ubuntuhandbook1/audacity -y
	apt update -y
	apt-get install audacity -y

	echo "Done DimiInstallAudacity"

# END DimiInstallAudacity.