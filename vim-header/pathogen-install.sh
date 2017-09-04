#!/bin/sh
url="https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim"

if [ -x "$(command -v vim)" ]; then
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim $url
    touch ~/.vimrc
    echo "execute pathogen#infect()" >> ~/.vimrc
    echo "Pathogen installed to ~/.vim/autoload/pathogen.vim"
else
    echo "We're having some trouble finding vim on your system."
    which vim
fi
