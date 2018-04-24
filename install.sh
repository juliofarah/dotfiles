#!/usr/bin/env bash

set -o errexit
set -o nounset

readonly dir=$(cd $(dirname "$0"); pwd)

function backup_old_configuration() {
  if [ ! -d "old_dotfiles" ]
  then
    mkdir old_dotfiles
  fi

  local files=".vimrc .zshrc .gitconfig .gitignore_global"
  for file in $files; do
    if [ -f "$file" ]
    then
      cp $file old_dotfiles/
    fi
  done
}

echo "== Backing up old configuration (if any) =="
backup_old_configuration

echo ""

echo "== Loading /brew/install.sh =="
bash $dir/brew/install.sh

echo ""

echo "== Setting to zsh and installing oh-my-zsh =="
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

function symlink_oh_my_zsh() {
  if [ -d ~/.oh-my-zsh ]
  then
    rm -rf ~/.oh-my-zsh/custom
    ln -s $dir/zsh/custom ~/.oh-my-zsh/custom
  fi
}
echo "== Symlinking oh-my-zsh aliases =="
symlink_oh_my_zsh

ln -s $dir/slate ~/.slate
ln -s $dir/gitconfig ~/.gitconfig
ln -s $dir/gitconfig_global ~/.gitconfig_global
ln -s $dir/karabiner.json ~/.karabiner.json

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $dir/vim/colors .vim/colors
ln -s $dir/vim/vimrc .vimrc
vim +PluginInstall +qall
