#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Install fish functions..."
if [ ! -d ~/.config/omf/functions ]; then
  mkdir ~/.config/omf/functions
fi
for file in {git_dirty_count,git_staged_count,git_stashed_count,git_untracked_count}.fish; do
  if [ -f ~/.config/omf/functions/${file} ]; then
    rm ~/.config/omf/functions/${file}
  fi

  ln -s ${BASE_DIR}/omf/functions/${file} ~/.config/omf/functions/${file}
done;
unset file;

echo "Install fish configuration..."
for file in {bundle,channel,theme,init.fish}; do
  if [ -f ~/.config/omf/${file} ]; then
    rm ~/.config/omf/${file}
  fi
  ln -s ${BASE_DIR}/omf/${file} ~/.config/omf/${file}
done;
unset file;

# TODO: rewrite it to for-in loop lake above.
# ln -s ${BASE_DIR}/omf/channel ~/.config/omf/channel
# ln -s ${BASE_DIR}/omf/theme ~/.config/omf/theme
# ln -s ${BASE_DIR}/omf/init.fish ~/.config/omf/init.fish

# echo "Install git configuration..."
# cp ${BASE_DIR}/git/.gituser ~/.gituser
# ln -s ${BASE_DIR}/git/.gitconfig ~/.gitconfig
# ln -s ${BASE_DIR}/git/.gitexcludes ~/.gitexcludes
# ln -s ${BASE_DIR}/git/.git-completion.bash ~/.git-completion.bash

# echo "Install shell files..."
# cp ${BASE_DIR}/shell/source/.extra ~/.extra
# ln -s ${BASE_DIR}/shell/source/.exports ~/.exports
# ln -s ${BASE_DIR}/shell/source/.aliases ~/.aliases
# ln -s ${BASE_DIR}/shell/source/.functions ~/.functions

# echo "Install bash files..."
# ln -s ${BASE_DIR}/shell/bash/.bash_profile ~/.bash_profile
# ln -s ${BASE_DIR}/shell/bash/.bash_prompt ~/.bash_prompt
# ln -s ${BASE_DIR}/shell/bash/.bashrc ~/.bashrc

# echo "Install vim configuration..."
# if [ -f ~/.vimrc ]; then
#   cp ~/.vimrc ~/.vimrc-backup
# fi
# ln -s ${BASE_DIR}/vim/.vimrc ~/.vimrc
