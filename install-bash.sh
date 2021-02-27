#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Install git configuration..."
cp ${BASE_DIR}/git/.gituser ~/.gituser
ln -s ${BASE_DIR}/git/.gitconfig ~/.gitconfig
ln -s ${BASE_DIR}/git/.gitexcludes ~/.gitexcludes
ln -s ${BASE_DIR}/git/.git-completion.bash ~/.git-completion.bash

echo "Install shell files..."
cp ${BASE_DIR}/shell/source/.extra ~/.extra
ln -s ${BASE_DIR}/shell/source/.exports ~/.exports
ln -s ${BASE_DIR}/shell/source/.aliases ~/.aliases
ln -s ${BASE_DIR}/shell/source/.functions ~/.functions

echo "Install bash files..."
ln -s ${BASE_DIR}/shell/bash/.bash_profile ~/.bash_profile
ln -s ${BASE_DIR}/shell/bash/.bash_prompt ~/.bash_prompt
ln -s ${BASE_DIR}/shell/bash/.bashrc ~/.bashrc
