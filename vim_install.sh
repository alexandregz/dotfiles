#!/bin/sh

# VIM
# -------------------------------------------
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# plugins
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/docunext/closetag.vim.git ~/.vim/bundle/closetag.vim
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree

git clone https://github.com/Raimondi/delimitMate.git ~/.vim/bundle/delimitMate
# git clone https://github.com/tomtom/tlib_vim.git ~/.vim/tomtom/tlib_vim

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
