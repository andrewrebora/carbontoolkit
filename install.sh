#!/bin/bash
# Script to install carbontoolkit
# Created by Andrea Rebora (@AndreaRebora01)

echo ""
echo "                        _                   __                  __         __  __    "
echo "     _____   __  ______| |__    ____   ____/  |__  ____   ____ |  |  __  _|__|/  |_  "
echo "   _/ ___/  /__\ \_  __ \ __ \ /    \ /    \   __\/    \ /    \|  | |  |/ /  \   __\ "
echo "   \  \___ / __ \ |  | \/ \_\ (  <>  )   |  \  | (  <>  |  <>  )  |_|    <|  ||  |   "
echo "    \_____/_/  \_\|__|  |_____/\____/|___|__/__|  \____/ \____/|____/__|__\__||__|   "
echo "                                                                                     "
echo "		Information Gathering and Vulnerability Assessment"
echo "		Version 1.0"
echo "		Created by Andrea Rebora (AndreaRebora01)"
echo ""

INSTALL_DIR=/usr/share/carbontoolkit
MODULES_DIR=/usr/share/carbontoolkit/modules
GO_DIR=~/go/bin

tput setaf 1; echo "[You are about to install carbontoolkit. Do you want to continue? (Press [Enter] to continue, [Ctrl+c] to cancel)]"
tput sgr0;
echo ""
read answer
tput setaf 1; echo "[At the end of the installation you will have the opportunity to install the Penetration Testers Framework (PTF).]"
echo ""
echo "[This is to make sure that all the tools needed are installed and in the proper directory.]"
echo ""
echo "[When you reach that point, type 'use module/install_update_all' and then press [Enter]. Follow the prompts and type 'quit' at the end of the installation.]"
echo ""
echo "[Don't worry, you will find this message above the PTF main screen (just scroll up if you don't see it.)]"
echo ""
echo "[If you already have the PTF installed in the default directory and you don't want to update, type 'quit' when prompted.]"
echo ""
echo "[Press [Enter] to continue.]"
tput sgr0;
echo ""
read answer
tput setaf 1; echo "[The installation has started]"
tput sgr0;
echo ""

mkdir -p $INSTALL_DIR 2> /dev/null
cp -Rf * $INSTALL_DIR 2> /dev/null
cd $INSTALL_DIR

pip install --upgrade pip
apt update
apt install -y python3-uritools python3-paramiko nfs-common xdg-utils ruby rubygems python dos2unix aha libxml2-utils rpcbind cutycapt host whois curl php php-curl nbtscan cisco-torch amap jq golang adb xsltproc ldapscripts
apt install -y seclists
mv /usr/share/seclists /usr/share/wordlists
apt install -y waffit
apt install -y libssl-dev
apt install -y python-pip 
apt remove -y python3-pip
apt install -y python3-pip
apt install -y xmlstarlet
apt install -y chromium
apt install -y net-tools
pip install dnspython colorama tldextract urllib3 ipaddress argparse netaddr requests beautifulsoup4 prettytable humanfriendly progressbar configparser parse
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

gem install rake
gem install ruby-nmap net-http-persistent mechanize text-table
gem install public_suffix

dpkg-reconfigure ruby

rm -Rf $MODULES_DIR 2> /dev/null
mkdir $MODULES_DIR 2> /dev/null
cd $MODULES_DIR
mkdir -p $MODULES_DIR/nmap_scripts/ 2> /dev/null
mkdir -p $GO_DIR 2> /dev/null

chmod 777 perl.sh
./perl.sh
 
git clone https://github.com/1N3/Goohak.git 
git clone https://github.com/1N3/BlackWidow
cp /usr/share/carbontoolkit/modules/BlackWidow/blackwidow /usr/bin/blackwidow 
cp /usr/share/carbontoolkit/modules/BlackWidow/injectx.py /usr/bin/injectx.py
pip install -r /usr/share/carbontoolkit/modules/BlackWidow/requirements.txt
git clone https://github.com/Dionach/CMSmap.git 
git clone https://github.com/0xsauby/yasuo.git 
git clone https://github.com/nccgroup/shocker.git
git clone https://github.com/faizann24/XssPy.git
git clone https://github.com/urbanadventurer/WhatWeb.git
git clone https://github.com/m4ll0k/WAScan.git
git clone https://github.com/metachris/wpscanner.git
git clone https://github.com/m4ll0k/WPSeku.git
git clone https://github.com/hahwul/a2sv.git
cd a2sv/
./install.sh
cd ..
git clone https://github.com/jekyc/wig.git
git clone https://github.com/rbsec/dnscan.git
git clone https://github.com/christophetd/censys-subdomain-finder.git
pip install -r $MODULES_DIR/censys-subdomain-finder/requirements.txt
pip3 install -r $MODULES_DIR/dnscan/requirements.txt 
git clone https://github.com/ProjectAnte/dnsgen
cd dnsgen
pip3 install -r requirements.txt
python3 setup.py install
cd ..
pip3 install webtech
cd ~/go/bin/;go get github.com/haccer/subjack
rm -Rf ~/go/src/amass*
wget https://github.com/OWASP/Amass/releases/download/v3.4.2/amass_v3.4.2_linux_amd64.zip -O ~/go/src/amass.zip
cd ~/go/src/
unzip ~/go/src/amass.zip
mv amass_v3.4.2_linux_amd64 amass 2> /dev/null
cd amass
cp amass /usr/bin/amass -f 2> /dev/null
rm -f ~/go/src/amass.zip 2> /dev/null
cd ~/go/bin;go get -u github.com/subfinder/subfinder; mv subfinder /usr/local/bin/subfinder
cd /usr/share/nmap/scripts/
rm -Rf vulscan 2> /dev/null
git clone https://github.com/scipag/vulscan
rm -f /usr/share/nmap/scripts/vulners.nse
wget https://raw.githubusercontent.com/vulnersCom/nmap-vulners/master/vulners.nse
mkdir -p ~/.msf4/modules/exploits/web
wget https://raw.githubusercontent.com/1N3/Exploits/master/defcon_webmin_unauth_rce.rb -O ~/.msf4/modules/exploits/web/defcon_webmin_unauth_rce.rb
mv ~/.carbontoolkit.conf ~/.carbontoolkit.conf.old 2> /dev/null
cp $INSTALL_DIR/carbontoolkit.conf ~/.carbontoolkit.conf 2> /dev/null
cd $MODULES_DIR/CMSmap/ && pip3 install . && python3 setup.py install
cd $INSTALL_DIR 
chmod +x $INSTALL_DIR/carbontoolkit
chmod 777 $INSTALL_DIR/carbontoolkit/carbontoolkit.sh
chmod +x $MODULES_DIR/Goohak/goohak
rm -f /usr/bin/carbontoolkit
rm -f /usr/bin/goohak
ln -s $INSTALL_DIR/carbontoolkit /usr/bin/carbontoolkit
ln -s $MODULES_DIR/Goohak/goohak /usr/bin/goohak
msfdb-kali init

echo ""
tput setaf 1; echo "[Type the following 'use module/install_update_all' and then press [Enter]. Follow the prompts and type 'quit' at the end of the installation."
echo ""
echo "[If you already have the PTF installed in the default directory and you don't want to update, type 'quit'.]"
tput sgr0;
cd
git clone https://github.com/trustedsec/ptf
cd ptf
./ptf
use module/install_update_all
echo ""
tput setaf 1; echo "[The installation is complete.]"
echo ""
echo "[Type 'carbontoolkit' to run the program.]"
tput sgr0;
echo ""













