#!/bin/bash

basePath=$(dirname $(readlink -f "$0"))
cd $basePath

# https://github.com/junegunn/vim-plug
mkdir -p autoload && cd autoload
[ ! -f plug.vim ] && wget \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# backup old config
[ -h ~/.vimrc ] && rm -vf ~/.vimrc
[ -h ~/.vim ] && rm -vf ~/.vim
[ -f ~/.vimrc ] && mv -v ~/.vimrc ~/.vimrc_bak
[ -d ~/.vim ] && mv -v ~/.vim ~/.vim_bak

ln -sv ${basePath} ~/.vim
ln -sv ${basePath}/vimrc ~/.vimrc
