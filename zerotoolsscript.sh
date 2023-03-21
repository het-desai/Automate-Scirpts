#!/bin/bash

# System package update and upgrade
sudo apt-get -y update && sudo apt-get -y upgrade

echo "----------------------------------------------------------------"

# Remove packages which are unwanted
sudo apt-get auto-remove

echo "----------------------------------------------------------------"

# Install softwares
sudo apt-get install -y git curl wget rename xargs

# Python programming language and their packages
sudo apt-get install -y python3 python2 python-pip python-dnspython python-setuptools python-dev

# network scanning tool
sudo apt-get install -y nmap

# lightweight and flexible command-line JSON processor
sudo apt-get install -y jq

# Programming language
sudo apt-get install -y ruby-full ruby-dev

# development files and documentation for libcurl (OpenSSL flavour)
sudo apt-get install -y libcurl4-openssl-dev

# Secure Sockets Layer toolkit - development files
sudo apt-get install -y libssl-dev

# sudo apt-get install -y libxml2 libxml2-dev libxslt1-dev build-essential libgmp-dev zlib1g-dev

# sudo apt-get install -y build-essential libssl-dev libffi-dev

# sudo apt-get install -y libldns-dev

echo "----------------------------------------------------------------"

# Download and Install Go

echo "----------------------------------------------------------------"

# Install sublime text

cd ~/Downloads/

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update && sudo apt-get install sublime-text

echo "----------------------------------------------------------------"

# Install Brave Browser

cd ~/Downloads/

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && \
sudo apt-get update && sudo apt-get install brave-browser

echo "----------------------------------------------------------------"

mkdir ~/Tools

echo "----------------------------------------------------------------"

# Download SecList

cd ~/Tools
git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/danielmiessler/SecLists.git

echo "----------------------------------------------------------------"

# OhMyBash installation and setup

cd ~

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Take a backup of .bashrc file with time stamp
mv ~/.bashrc ~/.bashrc.OMB`date "+%H%M%S%d%m%Y"`.bak

# Take a backup of the .bash_profile file with time stamp and append the three command lines in that
if [[ -f ~/.bash_profile ]]; then
cp ~/.bash_profile ~/.bash_profile.OMB`date "+%H%M%S%d%m%Y"`.bak
tee -a ~/.bash_profile <<EOF
if [[ -f ~/.bashrc ]]; then
	source ~/.bashrc
fi
EOF
fi

# Change the theme random to robbyrussell in bash .bashrc file
sed -i -e 's/OSH_THEME="random"/OSH_THEME="robbyrussell"/g' .bashrc

echo "----------------------------------------------------------------"

# read -p "Press any key to exit the program."