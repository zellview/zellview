# SCRIPT DimiInstallGoogleEarth
# 

# kk 25. Dezember 2023
# by zellview media 
# www.zellview.net

	version="3.2.08"

    echo "start DimiInstallGoogleEarth version "$version

    echo -n "get debian package ... "
    wget -O ~/google-earth.deb https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
    echo "Done"

    echo -n "install package ... "
    dpkg -iy
	rm ~/google-earth.deb 

    echo "Done DimiInstallGoogleEarth"