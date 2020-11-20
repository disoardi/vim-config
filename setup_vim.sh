#!/bin/env bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vim/vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall
sudo dnf install cmake gcc-c++ make python3-devel
python3 ~/.vim/bundle/install.py --all

