#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SH_VARIANT=$1

echo "Instal sh configuration"
if [ "$SH_VARIANT" == "bash" ]; then
  # bash
  ln -s ${BASE_DIR}/bash/.bash_aliases ~/.bash_aliases
  ln -s ${BASE_DIR}/bash/.bash_profile ~/.bash_profile
  ln -s ${BASE_DIR}/bash/.bash_prompt ~/.bash_prompt
  ln -s ${BASE_DIR}/bash/.bashrc ~/.bashrc
  ln -s ${BASE_DIR}/bash/.bash_exports ~/.bash_exports
  ln -s ${BASE_DIR}/bash/.bash_functions ~/.bash_functions
else
  # zsh
  ln -s ${BASEDIR}/zsh/.zshrc ~/.zshrc
fi

# TODO: Add vim configuration
# vim
# echo "Install vim"
# ln -s ${BASE_DIR}/vimrc ~/.vimrc
# ln -s ${BASE_DIR}/vim/ ~/.vim

# nvm
echo "Install NVM"
NVM_DIR="$HOME/.nvm"
git clone https://github.com/creationix/nvm.git "$NVM_DIR"
cd "$NVM_DIR"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
ln -s ${BASE_DIR}/nvm/default-packages ~/.nvm/default-packages

# git
echo "Install git configuration"
cp ${BASE_DIR}/git/.gituser ~/.gituser
ln -s ${BASE_DIR}/git/.gitconfig ~/.gitconfig
ln -s ${BASE_DIR}/git/.gitexcludes ~/.gitexcludes
ln -s ${BASE_DIR}/git/.git-completion.bash ~/.git-completion.bash
