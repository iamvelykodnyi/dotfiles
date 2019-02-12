#!/bin/bash

echo "Uninstall git configuration..."
rm ~/.gituser
rm ~/.gitconfig
rm ~/.gitexcludes
rm ~/.git-completion.bash

echo "Uninstall shell files..."
rm ~/.extra
rm ~/.exports
rm ~/.aliases
rm ~/.functions

echo "Uninstall bash files..."
rm ~/.bash_profile
rm ~/.bash_prompt
rm ~/.bashrc
