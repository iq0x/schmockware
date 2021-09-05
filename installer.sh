#!/bin/bash
echo "installing depencies......"
sudo apt install pip3
sudo pip3 install readchar

echo "download plugins......"
git clone https://github.com/iq0x/schmockware.git
git clone https://github.com/iq0x/java.git
git clone https://github.com/iq0x/python.git
git clone https://github.com/iq0x/bash.git
git clone https://github.com/iq0x/cpp.git

cd schmockware
chmod + x *.sh 
cd ..

