
# SCRIPT InstallGoogleEarth


#	by zellview media 24. August 2023
#	www.zellview.network

    echo "start InstallGoogleEarth"

    echo -n "get debian install package ... "
    wget -O ~/google-earth.deb https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
    echo "done"

    echo -n "install package ... "
    sudo dpkg -i ~/google-earth.deb

    echo "InstallGoogleEarth done"


