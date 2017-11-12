#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y git build-essential
sudo apt-get install -y gdb gdb-multiarch
sudo apt-get install -y tmux unzip

# python
sudo apt-get -y install python2.7 python-pip python-dev git libssl-dev libffi-dev
sudo apt-get -y install python3-pip

# 32-bit support
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386

# pwntools
sudo pip install --upgrade pip
sudo pip install --upgrade pwntools

# pwndbg
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh
cd

# r2
git clone https://github.com/radare/radare2
cd radare2
./sys/install.sh
cd

# binwalk
git clone https://github.com/devttys0/binwalk
cd binwalk
sudo python3 setup.py install
cd

# kaitai
sudo apt-get install default-jre
echo "deb https://dl.bintray.com/kaitai-io/debian jessie main" | sudo tee /etc/apt/sources.list.d/kaitai.list
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv 379CE192D401AB61
sudo apt-get update
sudo apt-get install kaitai-struct-compiler
sudo apt-get install ruby
gem install kaitai-struct-visualizer
