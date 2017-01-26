#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
# ln -s ${BASEDIR}/vimrc ~/.vimrc
# ln -s ${BASEDIR}/vim/ ~/.vim

# bash
ln -s ${BASEDIR}/bash/.aliases ~/.aliases
ln -s ${BASEDIR}/bash/.bash_profile ~/.bash_profile
ln -s ${BASEDIR}/bash/.bash_prompt ~/.bash_prompt
ln -s ${BASEDIR}/bash/.bashrc ~/.bashrc
ln -s ${BASEDIR}/bash/.exports ~/.exports
ln -s ${BASEDIR}/bash/.functions ~/.functions

# git
ln -s ${BASEDIR}/git/.gitconfig ~/.gitconfig
ln -s ${BASEDIR}/git/.gitexcludes ~/.gitexcludes
