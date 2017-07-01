#!/usr/bin/env bash

set -o errexit
set -o nounset


echo "== VIM configuration =="
echo "= Cloning vundle ="
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

function symlink_vim_config() {
  ln -s vimrc ~/.vimrc
  ln -s colors ~/.colors
}

echo "=== Installing vim plugins"
vim +BundleInstall +qall
