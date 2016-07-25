#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./vimrc ~/.vim/vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +PlugInstall +qall

echo "dont forget to install / update YoucompleteMe"
echo "https://github.com/j1z0/dotfiles.git"

