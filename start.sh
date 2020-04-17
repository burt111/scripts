#!/bin/sh
echo deb "https://assets.checkra.in/debian /" | sudo tee -a /etc/apt/sources.list sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key 
sudo apt update 
sudo apt-get install -y checkra1n 
wget https://assets.checkra.in/downloads/linux/cli/arm/1ed46fb34c72ee942a1af185fd5347b999f4bba667d594dd56554e3b3d3ea417/checkra1n-armel 
 sudo mv checkra1n-armel /usr/bin/checkra1n 
sudo mv /usr/bin/checkra1n /opt/checkra1n/
sudo mkdir /opt/checkra1n/
sudo rm -rf checkra1n-armel
sudo chmod a+rwx /usr/bin/checkra1n
sudo rm -rf /opt/exploitscript.sh
sudo wget https://github.com/burt111/scripts/blob/master/exploitscript.sh -P /opt/
sudo chmod +x /opt/exploitscript.sh
sudo wget https://github.com/burt111/scripts/blob/master/01-exploit.rules -P /etc/udev/rules.d
rm -rf exploitscript.sh
rm -rf 01-exploit.rules

