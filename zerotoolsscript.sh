#!/bin/bash

# System package update and upgrade
echo "------------------------------Software updating--------------------------------" && \
sudo apt-get -y update && sudo apt-get -y upgrade && \
echo "------------------------------Software updated--------------------------------"

# Remove packages which are unwanted
echo "------------------------------Removing useless packages--------------------------------" && \
sudo apt-get auto-remove && \
echo "------------------------------Removed useless packages--------------------------------"

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
echo "------------------------------python3-pip installing--------------------------------" && \
sudo apt-get install -y python3-pip && \
echo "------------------------------python3-pip installed--------------------------------"
echo "------------------------------python-dnspython installing--------------------------------" && \
sudo apt-get install -y python-dnspython && \
echo "------------------------------python-dnspython installed--------------------------------"
echo "------------------------------python-setuptools installing--------------------------------" && \
sudo apt-get install -y python-setuptools && \
echo "------------------------------python-setuptools installed--------------------------------"
echo "------------------------------python-dev installing--------------------------------" && \
sudo apt-get install -y python-dev && \
echo "------------------------------python-dev installing--------------------------------"

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

# XML files
echo "------------------------------libxml2 installing--------------------------------" && \
sudo apt-get install -y libxml2 && \
echo "------------------------------libxml2 installed--------------------------------"
echo "------------------------------libxml2-dev installing--------------------------------" && \
sudo apt-get install -y libxml2-dev && \
echo "------------------------------libxml2-dev installed--------------------------------"
echo "------------------------------libxslt1-dev installing--------------------------------" && \
sudo apt-get install -y libxslt1-dev && \
echo "------------------------------libxslt1-dev installed--------------------------------"

# Build-essential for different compilers
echo "------------------------------build-essential installing--------------------------------" && \
sudo apt-get install -y build-essential && \
echo "------------------------------build-essential installed--------------------------------"
echo "------------------------------libgmp-dev installing--------------------------------" && \
sudo apt-get install -y libgmp-dev && \
echo "------------------------------libgmp-dev installed--------------------------------"
echo "------------------------------libffi-dev installing--------------------------------" && \
sudo apt-get install -y libffi-dev && \
echo "------------------------------libffi-dev installed--------------------------------"

# Helps to simplify the programming of DNS
echo "------------------------------libldns-dev installing--------------------------------" && \
sudo apt-get install -y libldns-dev && \
echo "------------------------------libldns-dev installed--------------------------------"

# Compression file library
echo "------------------------------zlib1g-dev isntalling--------------------------------" && \
sudo apt-get install -y zlib1g-dev && \
echo "------------------------------zlib1g-dev installed--------------------------------"

# OhMyBash installation and setup
echo "------------------------------OhMyBash installing--------------------------------" && \

cd ~ && \

# Take a backup of .bashrc file with time stamp
mv ~/.bashrc ~/.bashrc.OMB`date "+%H%M%S%d%m%Y"`.bak

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" &

read -t 60 -p "Wait for a minute to install OhMyBash"

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

# Change the theme font to robbyrussell in bash .bashrc file
sed -i -e 's/OSH_THEME="font"/OSH_THEME="robbyrussell"/g' ~/.bashrc
echo "------------------------------OhMyBash installed--------------------------------"

# Installing Go Language
echo "------------------------------Go language installing--------------------------------" && \
cd ~/Downloads/
if [[ -z "$GOPATH" ]]; then
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo tar -zxvf go1.20.2.linux-amd64.tar.gz
sudo mv go /usr/local/go
GOPATH=/usr/local/go
PATH=$PATH:$GOPATH/bin
PATH=$PATH:$HOME/go/bin
echo 'export GOPATH=/usr/local/go' >> ~/.bash_profile
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bash_profile
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bash_profile
source ~/.bash_profile
sleep 1
fi
echo "------------------------------Go language installed--------------------------------"

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
sudo apt-get -y update && sudo apt-get -y install brave-browser && \
cd ~/Downloads/ && \
echo "------------------------------Brave-browser installed--------------------------------"

mkdir ~/tools

# network scanning tool
echo "------------------------------nmap installing--------------------------------" && \
sudo apt-get install -y nmap && \
echo "------------------------------nmap installed--------------------------------"

# Installing WPScan
echo "------------------------------WPScan installing--------------------------------" && \
sudo gem install wpscan && \
echo "------------------------------WPScan installed--------------------------------"

# Installing Sublist3r
echo "------------------------------Sublist3r installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/aboul3la/Sublist3r.git && \
cd ~/tools/ && \
echo "------------------------------Sublist3r installed--------------------------------"


# Installing SecList
echo "------------------------------SecList installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/danielmiessler/SecLists.git && \
cd ~/tools/SecLists/Passwords/Leaked-Databases/ && \
sudo tar -zxvf rockyou.txt.tar.gz rockyou.txt && \
cd ~/tools/ && \
echo "------------------------------SecList installed--------------------------------"

# Installing Chromium
echo "------------------------------chromium installing--------------------------------" && \
sudo snap install chromium && \
echo "------------------------------chromium installed--------------------------------"

echo "------------------------------asnlookup installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/yassineaboukir/asnlookup.git && \
cd ~/tools/asnlookup && \
pip install -r requirements.txt && \
cd ~/tools/ && \
echo "------------------------------asnlookup installed--------------------------------"

echo "------------------------------massdns isntalling--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/blechschmidt/massdns.git && \
cd ~/tools/massdns && \
sudo make && \
cd ~/tools/ && \
echo "------------------------------massdns installed--------------------------------"

echo "------------------------------lazyrecon installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/nahamsec/lazyrecon.git && \
cd ~/tools/ && \
echo "------------------------------lazyrecon installed--------------------------------"

echo "------------------------------knock installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/guelfoweb/knock.git && \
cd ~/tools/ && \
echo "------------------------------knock installed--------------------------------"

echo "------------------------------virtual-host-discovery installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/jobertabma/virtual-host-discovery.git && \
cd ~/tools/ && \
echo "------------------------------virtual-host-discovery installed--------------------------------"

echo "------------------------------lazys3 installing--------------------------------" && \
cd ~/tools/ && \
sudo git clone https://github.com/nahamsec/lazys3.git && \
cd ~/tools/ && \
echo "------------------------------lazys3 installed--------------------------------"

# Installing httprobe
echo "------------------------------httprobe installing--------------------------------" && \
cd ~/tools/ && \
go install -v github.com/tomnomnom/httprobe@latest && \
cd ~/tools && \
echo "------------------------------httprobe installed--------------------------------"

# Installing waybackurls
echo "------------------------------waybackurls installing--------------------------------" && \
cd ~/tools/ && \
go install -v github.com/tomnomnom/waybackurls@latest && \
cd ~/tools/ && \
echo "------------------------------waybackurls installed--------------------------------"

# Installing aquatone
echo "------------------------------aquatone installing--------------------------------" && \
cd ~/tools/ && \
go install -v github.com/michenriksen/aquatone@latest && \
cd ~/tools/ && \
echo "------------------------------aquatone installed--------------------------------"

echo "------------------------------unfurl installing--------------------------------" && \
cd ~/tools && \
go install -v github.com/tomnomnom/unfurl@latest && \
cd ~/tools && \
echo "------------------------------unfurl installed--------------------------------"

read -p "Press any key to exit the program."