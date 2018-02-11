#!/bin/bash

# add vagrant user to root group

adduser vagrant root

apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    git \
    python \
    awscli \
    ubuntu-desktop \
    rbenv \
    ruby-build

rbenv install 2.4.3

chmod 771 /usr/bin/gems/2.3.0

# docker
apt-get remove docker docker-engine docker.io -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce -y

# docker machine
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
install /tmp/docker-machine /usr/local/bin/docker-machine

# docker compose
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# docker needs to write in this folder
chmod 771 /usr/local/bin

# allowing vagrant user to run docker without using sudo
groupadd docker

usermod -aG docker vagrant

# Ruby mine
snap install rubymine --classic

# Sublime 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text

# Needed for nokogiri
apt-get update
apt-get install -y \
	build-essential \
	patch \
	ruby-dev \
	zlib1g-dev \
	liblzma-dev \
	libpq-dev

systemctl set-default graphical.target
reboot