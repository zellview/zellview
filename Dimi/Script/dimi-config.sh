# MODUL DimiConfig;

# zellview dimi version 3.2.01 , 29.Juli 2023
# copyright by zellview new media 

# CONST
	Modulname="DimiConfig"

# VAR

echo
beg=$(date +"%H:%M:%S")
echo "$Modulname started at $beg"
echo

# BEGIN
    echo "This script will configure some settings"
    echo "for zellview-dimi:  keyboard, timezobe, background etc."
    echo
    echo "Keyboardlayout"
    echo "cd /etc/default"
    cd /etc/default
    echo "set keyboard, XKBLAYOUT=de"
    sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="de"/' keyboard

    echo "Zeitzone"
    echo "cd /etc"
    cd /etc
    echo "remove localtime"
    rm localtime
    echo "link to Europe/Berlin"
    ln -s /usr/share/zoneinfo/Europe/Berlin localtime

    echo "Background"
    echo "cd /usr/share/backgrounds/linuxmint"
    cd /usr/share/backgrounds/linuxmint
    echo "remove default_background.png"
    rm default_background.jpg
    echo "set background to zellview3_cloudy.png"
    ln -s /zell/dimi/Rsrc/zellview3_cloudy.png default_background.jpg

# END DimiConfig.

echo "$Modulename finnished"
end=$(date +"%H:%M:%S")
echo "script started at $beg ended $end"
#echo "elapsed time ${ $end-$beg }"
