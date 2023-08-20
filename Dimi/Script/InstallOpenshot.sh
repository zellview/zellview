# SCRIPT InstallOpenshot;

# CONST 
    Modulename="InstallOpenshot"


# BEGIN

echo
echo "start $Modulename"

sudo add-apt-repository ppa:openshot.developers/ppa -y
sudo apt update -y
sudo apt install openshot-qt python3-openshot -y

echo "ending $Modulename"
echo

# END InstallOpenshot.
