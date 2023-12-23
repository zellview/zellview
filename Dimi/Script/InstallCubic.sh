

# SCRIPT InstallCubic;

#	by zellview media 
#	www.zellview.media
#	kk, 22. Dezember 2023

	echo "starting InstallCubic"

	apt-add-repository ppa:cubic-wizard/release -y
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E

	apt update
	apt install cubic -y

	echo "Done InstallCubic"