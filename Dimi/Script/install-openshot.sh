# MODULE InstallOpenshot"

# CONST 
    Modulename="InstallOpenshot"

echo
beg=$(date +"%H:%M:%S")
echo "start $Modulename at $beg"

sudo add-apt-repository ppa:openshot.developers/ppa -y
sudo apt update -y
sudo apt install openshot-qt python3-openshot -y

end=$(date +"%H:%M:%S")
echo "$Modulename started at $beg, end $end"
# elap=$($beg-$end)
#echo "elapsed time $elap"
echo

# END InstallOpenshot
