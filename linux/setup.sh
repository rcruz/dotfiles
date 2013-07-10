#!/bin/sh
cp .bashrc ~
cp .vimrc ~
sudo apt-get install vim
git clone git@github.com:tomasr/molokai.git ~/.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
