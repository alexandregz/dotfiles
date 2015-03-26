#!/bin/sh

# VIM
# -------------------------------------------
#
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic

#
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

#
git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
# -------------------------------------------
