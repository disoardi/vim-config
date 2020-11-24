#!/bin/env bash

cp $(dirname "$0")/base.vimrc ~/.vim/vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +PlugInstall +qall

