#!/bin/bash

# Sistem paketlerini güncelle
sudo apt-get update

# Vim, Git, wget, curl ve lynx paketlerini yükle

sudo apt-get install -y vim git wget curl lynx terminator htop
sudo dnf install -y vim git wget curl lynx terminator htop


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



mv ~/.bashrc ~/.bashrc.old
mv ~/.vimrc ~/.vimrc.old
mv ~/.alias ~/.alias.old

cp -r . ~/

echo "Files have been successfully installed."



set -e


echo "Installed Vim configuration successfully!"
