#!/bin/bash

echo "Uninstall fish configuration..."
for file in ~/.config/omf/{bundle,channel,theme,init.fish}; do
  if [ -f ${file} ]; then
    rm ${file}
  fi
done;
unset file;

# TODO: rewrite it to for-in loop lake above.
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
