#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
# ln -s ${BASEDIR}/vimrc ~/.vimrc
# ln -s ${BASEDIR}/vim/ ~/.vim

# nvm
# NVM_DIR="$HOME/.nvm"
# git clone https://github.com/creationix/nvm.git "$NVM_DIR"
# cd "$NVM_DIR"
# git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
# ln -s ${BASEDIR}/nvm/default-packages ~/.nvm/default-packages

# bash
rm ~/.bash_aliases
rm ~/.bash_profile
rm ~/.bash_prompt
rm ~/.bashrc
rm ~/.bash_exports
rm ~/.bash_functions

# git
rm ~/.gituser
rm ~/.gitconfig
rm ~/.gitexcludes
rm ~/.git-completion.bash
