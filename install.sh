#!/bin/bash

# Sistem paketlerini güncelle
sudo apt-get update

# Vim, Git, wget, curl ve lynx paketlerini yükle

sudo apt-get install -y vim git wget curl lynx terminator

mv ~/.bashrc ~/.bashrc.old
mv ~/.vimrc ~/.vimrc.old
mv ~/.alias ~/.alias.old

cp -r . ~/

echo "Files have been successfully installed."



set -e

cd ~/.vim_runtime

echo '" DO NOT EDIT THIS FILE
" Add your own customizations in ~/.vim_runtime/my_config.vim

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/basic.vim
source ~/.vim_runtime/filetypes.vim
source ~/.vim_runtime/plugins_config.vim
source ~/.vim_runtime/extended.vim
try
  source ~/.vim_runtime/my_config.vim
catch
endtry' > ~/.vimrc

echo "Installed Vim configuration successfully!"
