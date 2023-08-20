# SCRIPT InstallGoogleChrome;

# copyright by zellview new media
# version 3.2.05, 20. August 2023

# BEGIN

    echo
    echo "starting InstallGoogleChrome"

    cd ../Rsrc/deb

    echo -n "get debian install package ... "
    wget -nc -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    echo "done"

    echo -n "install package ... "
#    sudo dpkg -i ../Rsrc/deb/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb -y
    echo "done"

    cd ../../Script

    echo "ending InstallGoogleChrome"

# END InstallGoogleChrome.
