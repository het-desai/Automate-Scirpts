#!/bin/bash

# System package update and upgrade
apt-get -y update && apt-get -y upgrade && apt-get -y full-upgrade

echo "----------------------------------------------------------------"

# Install softwares
apt-get install -y git curl wget rename xargs

apt-get install -y python3 python2 python-pip python-dnspython python-setuptools python-dev

apt-get install -y nmap

# apt-get install -y jq

# apt-get install ruby-full

# apt-get install -y libcurl4-openssl-dev

# apt-get install -y libssl-dev

# apt-get install -y libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev

# apt-get install -y build-essential libssl-dev libffi-dev

# apt-get install libldns-dev

echo "----------------------------------------------------------------"



echo "----------------------------------------------------------------"

# Install sublime text
# cd ~/Downloads/

# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# apt-get update && apt-get install sublime-text

echo "----------------------------------------------------------------"

# Install firefox
# cd ~/Downloads/

# curl -L https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US -o  firefox.tar.bz2 && tar -xvf firefox.tar.bz2

echo "----------------------------------------------------------------"

# Install Brave Browser
# cd ~/Downloads/

# curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# apt-get update && apt-get install brave-browser

echo "----------------------------------------------------------------"

# Download SecList
cd /opt/
git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/danielmiessler/SecLists.git

echo "----------------------------------------------------------------"

# Install OhMyBash

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# mv ~/.bashrc ~/.bashrc.OMB`date "+%H%M%S%d%m%Y"`.bak

# if [[ -f ~/.bashrc ]]; then
#        source ~/.bashrc
# fi

# read -p "Press any key to exit the program."