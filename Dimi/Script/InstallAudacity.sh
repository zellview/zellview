# SCRIPT DimiInstallAudacity
# 

# kk 25. Dezember 2023
# by zellview media
# www.zellview.net

version="3.2.08"
seqno=17

echo "start DimiInstallAudacity version "$version

add-apt-repository ppa:ubuntuhandbook1/audacity
apt update -y
apt-get install audacity -y

echo "Done DimiInstallAudacity"