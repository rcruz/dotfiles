#!/bin/sh
cp .bashrc ~
cp .vimrc ~
sudo apt-get install vim
mkdir -p ~/.vim/colors
cp molokai.vim ~/.vim/colors
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
