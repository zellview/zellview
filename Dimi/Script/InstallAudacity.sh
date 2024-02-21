# SCRIPT DimiInstallAudacity
# 

# by zellview media
# Wed 2024-02-21 seq 26
# www.github.com/zellview

Version=1
DimiVersion="3.2.24"

	echo "start DimiInstallAudacity "$DimiVersion" file "$Version

	add-apt-repository ppa:ubuntuhandbook1/audacity -y
	apt update -y
	apt-get install audacity -y

	echo "done DimiInstallAudacity"

# END DimiInstallAudacity.