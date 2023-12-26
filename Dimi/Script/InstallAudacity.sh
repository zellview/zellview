# SCRIPT DimiInstallAudacity
# 

# seq 20 on 2023-12-26
# by zellview media, www.zellview.net

version="3.2.08"

echo "start DimiInstallAudacity version "$version

add-apt-repository ppa:ubuntuhandbook1/audacity -y
apt update -y
apt-get install audacity -y

echo "Done DimiInstallAudacity"