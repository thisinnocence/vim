#!/bin/bash

basePath=$(dirname $(readlink -f "$0"))
cd $basePath

mkdir -p autoload && cd autoload
if [ ! -f plug.vim ]; then
    curl -fsSL -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Backup existing Vim config
[ -h ~/.vimrc ] && rm -vf ~/.vimrc
[ -h ~/.vim ] && rm -vf ~/.vim
[ -f ~/.vimrc ] && mv -v ~/.vimrc ~/.vimrc_bak
[ -d ~/.vim ] && mv -v ~/.vim ~/.vim_bak

ln -sv ${basePath} ~/.vim
ln -sv ${basePath}/vimrc ~/.vimrc
