#!/bin/bash

# System package update and upgrade
echo "------------------------------Software update--------------------------------" && \
sudo apt-get -y update && sudo apt-get -y upgrade && \
echo "------------------------------Software updated--------------------------------" && \

# Remove packages which are unwanted
echo "------------------------------Removing useless packages--------------------------------" && \
sudo apt-get auto-remove && \
echo "------------------------------Removed useless packages--------------------------------" && \

# Basic Software Installation
echo "------------------------------git installing--------------------------------" && \
sudo apt-get install -y git && \
echo "------------------------------git installed--------------------------------"
echo "------------------------------curl installing--------------------------------" && \
sudo apt-get install -y curl && \
echo "------------------------------curl installed--------------------------------"
echo "------------------------------wget installing--------------------------------" && \
sudo apt-get install -y wget && \
echo "------------------------------wget installed--------------------------------"
echo "------------------------------rename installing--------------------------------" && \
sudo apt-get install -y rename && \
echo "------------------------------rename installed--------------------------------"
echo "------------------------------xargs installing--------------------------------" && \
sudo apt-get install -y xargs && \
echo "------------------------------xargs installed--------------------------------"
echo "------------------------------snap installing--------------------------------" && \
sudo apt-get install -y snap && \
echo "------------------------------snap installed--------------------------------"
echo "------------------------------terminator installing--------------------------------" && \
sudo apt-get install -y terminator && \
echo "------------------------------terminator installed--------------------------------"
echo "------------------------------tmux installing--------------------------------" && \
sudo apt-get install -y tmux && \
echo "------------------------------tmux installed--------------------------------"

# Python programming language and their packages
echo "------------------------------python3 installing--------------------------------" && \
sudo apt-get install -y python3 && \
echo "------------------------------python3 installed--------------------------------"
echo "------------------------------python2 installing--------------------------------" && \
sudo apt-get install -y python2 && \
echo "------------------------------python2 installed--------------------------------"
echo "------------------------------python-pip installing--------------------------------" && \
sudo apt-get install -y python-pip && \
echo "------------------------------python-pip installed--------------------------------"
echo "------------------------------python-dnspython installing--------------------------------" && \
sudo apt-get install -y python-dnspython && \
echo "------------------------------python-dnspython installed--------------------------------"
echo "------------------------------python-setuptools installing--------------------------------" && \
sudo apt-get install -y python-setuptools && \
echo "------------------------------python-setuptools installed--------------------------------"
echo "------------------------------python-dev installing--------------------------------" && \
sudo apt-get install -y python-dev && \
echo "------------------------------python-dev installing--------------------------------"

# network scanning tool
echo "------------------------------nmap installing--------------------------------" && \
sudo apt-get install -y nmap
echo "------------------------------nmap installed--------------------------------"

# lightweight and flexible command-line JSON processor
echo "------------------------------JSON Processor installing--------------------------------" && \
sudo apt-get install -y jq && \
echo "------------------------------JSON Processor installed--------------------------------"

# Programming language
echo "------------------------------ruby language installing--------------------------------" && \
sudo apt-get install -y ruby-full && \
echo "------------------------------ruby language installed--------------------------------"
echo "------------------------------ruby language dev installing--------------------------------" && \
sudo apt-get install -y ruby-dev && \
echo "------------------------------ruby language dev installed--------------------------------"

# development files and documentation for libcurl (OpenSSL flavour)
echo "------------------------------libcurl14-openssl-dev installing--------------------------------" && \
sudo apt-get install -y libcurl4-openssl-dev && \
echo "------------------------------libcurl14-openssl-dev installed--------------------------------"

# Secure Sockets Layer toolkit - development files
echo "------------------------------libssl-dev installing--------------------------------" && \
sudo apt-get install -y libssl-dev && \
echo "------------------------------libcurl14-openssl-dev installed--------------------------------"

# sudo apt-get install -y libxml2 libxml2-dev libxslt1-dev build-essential libgmp-dev zlib1g-dev

# sudo apt-get install -y build-essential libssl-dev libffi-dev

# sudo apt-get install -y libldns-dev

# echo "------------------------------Go language installing--------------------------------" && \
# echo "------------------------------Go language installed--------------------------------"

# Install SublimeText
echo "------------------------------SublimeText installing--------------------------------" && \
cd ~/Downloads/ && \
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null && \
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && \
sudo apt-get update && sudo apt-get install sublime-text && \
echo "------------------------------SublimeText installed--------------------------------"

# Install Brave Browser
echo "------------------------------Brave-browser installing--------------------------------" && \
cd ~/Downloads/ && \
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && \
sudo apt-get update && sudo apt-get install brave-browser && \
echo "------------------------------Brave-browser installed--------------------------------"

mkdir ~/Tools

# Installing Sublist3r
echo "------------------------------Sublist3r installing--------------------------------" && \
cd ~/Tools && \
git clone https://github.com/aboul3la/Sublist3r.git && \
echo "------------------------------Sublist3r installed--------------------------------"


# Installing SecList
echo "------------------------------SecList installing--------------------------------" && \
git clone https://github.com/danielmiessler/SecLists.git && \
echo "------------------------------SecList installed--------------------------------"

# Installing Aquatone
# echo "------------------------------Aquatone installing--------------------------------" && \
# go get github.com/michenriksen/aquatone && \
# echo "------------------------------SublimeText installed--------------------------------"

# Installing Chromium
echo "------------------------------Chromium installing--------------------------------" && \
sudo snap install chromium && \
echo "------------------------------chromium installed--------------------------------"

# Installing JSParser
echo "------------------------------JSParser installing--------------------------------" && \
git clone https://github.com/nahamsec/JSParser.git && \
cd JSParser* && \
sudo python setup.py install && \
cd ~/tools/ && \
echo "------------------------------JSParser installed--------------------------------"

# Installing WPScan
echo "------------------------------WPScan installing--------------------------------" && \
git clone https://github.com/wpscanteam/wpscan.git && \
cd wpscan* && \
sudo gem install bundler && bundle install --without test && \
cd ~/tools/ && \
echo "------------------------------WPScan installed--------------------------------"

# Installing httprobe
# echo "------------------------------httprobe installing--------------------------------" && \
# go get -u github.com/tomnomnom/httprobe && \
# echo "------------------------------httprobe installed--------------------------------"

# Installing waybackurls
# echo "------------------------------waybackurls installing--------------------------------" && \
# go get github.com/tomnomnom/waybackurls && \
# echo "------------------------------waybackurls installed--------------------------------"

# OhMyBash installation and setup
echo "------------------------------OhMyBash installing--------------------------------" && \

cd ~ && \

# Take a backup of .bashrc file with time stamp
mv ~/.bashrc ~/.bashrc.OMB`date "+%H%M%S%d%m%Y"`.bak && \

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && \

# Take a backup of the .bash_profile file with time stamp and append the three command lines in that
if [[ -f ~/.bash_profile ]]; then
cp ~/.bash_profile ~/.bash_profile.OMB`date "+%H%M%S%d%m%Y"`.bak
tee -a ~/.bash_profile <<EOF
if [[ -f ~/.bashrc ]]; then
	source ~/.bashrc
fi
EOF
else
tee ~/.bash_profile <<EOF
if [[ -f ~/.bashrc ]]; then
	source ~/.bashrc
fi
EOF
fi

# Change the theme random to robbyrussell in bash .bashrc file
sed -i -e 's/OSH_THEME="font"/OSH_THEME="robbyrussell"/g' .bashrc

echo "------------------------------OhMyBash installed--------------------------------"

# read -p "Press any key to exit the program."