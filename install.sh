black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
reset=`tput sgr0`
echo "${magenta}-----------------------------------------------------------------------------"
echo "${yellow}[+] install docker"
echo "${magenta}---------------------------------------------------------------------------------"
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
echo "${magenta}-----------------------------------------------------------------------------"
echo "${green}install shell Mac OS"
echo "${magenta}---------------------------------------------------------------------------------"
sudo docker run -it --device /dev/kvm -p5910:5900 -p 50922:10022 -v /tmp/.X11-unix:/tmp/.X11-unix -e "DISPLAY=${DISPLAY:-:0.0}" -e GENERATE_UNIQUE=true -e TERMS_OF_USE=i_agree -e EXTRA='-vnc :0' sickcodes/docker-osx:auto
