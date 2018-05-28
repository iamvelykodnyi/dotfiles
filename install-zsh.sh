#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
echo "Install git configuration"
cp ${BASE_DIR}/git/.gituser ~/.gituser
ln -s ${BASE_DIR}/git/.gitconfig ~/.gitconfig
ln -s ${BASE_DIR}/git/.gitexcludes ~/.gitexcludes
ln -s ${BASE_DIR}/git/.git-completion.bash ~/.git-completion.bash

echo "Set zsh to default shell"
chsh -s $(which zsh)

echo "Install antigen"
curl -L git.io/antigen > ~/antigen.zsh

echo "Install zsh configuration"
mv ~/.zshrc ~/.zshrc-backup
ln -s ${BASE_DIR}/zsh/.zshrc ~/.zshrc

# TODO: Add vim configuration
# vim
