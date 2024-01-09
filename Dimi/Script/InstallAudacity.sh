# SCRIPT DimiInstallAudacity
# 

# on 2024-01-09 seq 21
# by zellview media
# www.zellview.net

version="3.2.16"

echo "start DimiInstallAudacity "$version

add-apt-repository ppa:ubuntuhandbook1/audacity -y
apt update -y
apt-get install audacity -y

echo "Done DimiInstallAudacity"