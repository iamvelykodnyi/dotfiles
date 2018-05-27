#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SH_VARIANT=$1

# vim
# TODO: Create UNINSTALL functionality
# ln -s ${BASE_DIR}/vimrc ~/.vimrc
# ln -s ${BASE_DIR}/vim/ ~/.vim

# nvm
# TODO: Create UNINSTALL functionality
# NVM_DIR="$HOME/.nvm"
# git clone https://github.com/creationix/nvm.git "$NVM_DIR"
# cd "$NVM_DIR"
# git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
# ln -s ${BASE_DIR}/nvm/default-packages ~/.nvm/default-packages

if [ ${SH_VARIANT} == "bash" ]; then
  # bash
  echo "Uninstal bash configuration"

else
  # zsh
  echo "Uninstal zsh configuration"
fi


# git
echo "Uninstal git configuration"
rm ~/.gituser
rm ~/.gitconfig
rm ~/.gitexcludes
rm ~/.git-completion.bash
