echo $red 
echo ""----------------------------------------------------------------------------- ""
echo "install shell Mac OS"
echo "---------------------------------------------------------------------------------"

echo

sudo curl -sSL https://get.docker.com/ | sh
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository ""deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable
apt-cache policy docker-ce
apt install docker-ce
docker run -it --device /dev/kvm -p5910:5900 -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e ""DISPLAY=${DISPLAY:-:0.0}"" -e GENERATE_UNIQUE=true -e TERMS_OF_USE=i_agree -e EXTRA='-vnc :0' sickcodes/docker-osx:auto

exit