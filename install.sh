#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
# ln -s ${BASEDIR}/vimrc ~/.vimrc
# ln -s ${BASEDIR}/vim/ ~/.vim

# nvm
NVM_DIR="$HOME/.nvm"
git clone https://github.com/creationix/nvm.git "$NVM_DIR"
cd "$NVM_DIR"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
ln -s ${BASEDIR}/nvm/default-packages ~/.nvm/default-packages

# bash
ln -s ${BASEDIR}/bash/.bash_aliases ~/.bash_aliases
ln -s ${BASEDIR}/bash/.bash_profile ~/.bash_profile
ln -s ${BASEDIR}/bash/.bash_prompt ~/.bash_prompt
ln -s ${BASEDIR}/bash/.bashrc ~/.bashrc
ln -s ${BASEDIR}/bash/.bash_exports ~/.bash_exports
ln -s ${BASEDIR}/bash/.bash_functions ~/.bash_functions

# git
cp ${BASEDIR}/git/.gituser ~/.gituser
ln -s ${BASEDIR}/git/.gitconfig ~/.gitconfig
ln -s ${BASEDIR}/git/.gitexcludes ~/.gitexcludes
ln -s ${BASEDIR}/git/.git-completion.bash ~/.git-completion.bash
