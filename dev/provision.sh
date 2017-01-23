#!/bin/sh

sudo apt-get update

sudo apt-get install curl \
                     linux-image-extra-$(uname -r) \
                     linux-image-extra-virtual

# 最新版の Docker をインストールする
# apt を https 通信に対応させる
sudo apt-get install apt-transport-https \
                     ca-certificates

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

# Docker リポジトリを追加
sudo add-apt-repository \
     "deb https://apt.dockerproject.org/repo/ \
      ubuntu-$(lsb_release -cs) \
      main"

# Docker インストール
sudo apt-get update
sudo apt-get -y install docker-engine
sudo docker --version

sudo docker pull ubuntu:14.04
sudo docker images

# Docker を sudo なしで実行できるようにする
sudo groupadd docker
sudo gpasswd -a vagrant docker
sudo service docker restart
