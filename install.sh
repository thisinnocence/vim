#!/bin/bash

basePath=$(dirname $(readlink -f "$0"))
echo "cwd is: $basePath"

# https://github.com/junegunn/vim-plug
if [ ! -f "${basePath}/autoload/plug.vim" ]; then
    curl -fLo ${basePath}/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# -h means if file is symbol link or not
[ -h ~/.vimrc ] && rm -vf ~/.vimrc
[ -h ~/.vim ] && rm -vf ~/.vim

[ -f ~/.vimrc ] && mv -v ~/.vimrc ~/.vimrc_bak
[ -d ~/.vim ] && mv -v ~/.vim ~/.vim_bak

ln -sv ${basePath} ~/.vim
ln -sv ${basePath}/vimrc ~/.vimrc

