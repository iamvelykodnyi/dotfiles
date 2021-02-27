#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Fish Shell https://fishshell.com
# The Fishshell Framework https://github.com/oh-my-fish/oh-my-fish
echo "Install fish functions..."
if [ ! -d ~/.config/omf/functions ]; then
  mkdir ~/.config/omf/functions
fi
for file in {git_dirty_count,git_staged_count,git_stashed_count,git_untracked_count,git_ahead_count}.fish; do
  if [ -f ~/.config/omf/functions/${file} ]; then
    rm ~/.config/omf/functions/${file}
  fi

  ln -s ${BASE_DIR}/omf/functions/${file} ~/.config/omf/functions/${file}
done;
unset file;

echo "Install fish configuration..."
for file in {bundle,channel,theme,init.fish,before.init.fish}; do
  if [ -f ~/.config/omf/${file} ]; then
    rm ~/.config/omf/${file}
  fi
  ln -s ${BASE_DIR}/omf/${file} ~/.config/omf/${file}
done;
unset file;

# Node Version Manager: https://github.com/nvm-sh/nvm
echo "Install nvm configuration..."
ln -s ${BASE_DIR}/nvm/default-packages ~/.nvm

# Git: https://git-scm.com
echo "Install git configuration..."
if [ -f ~/.gituser ]; then
  cp ~/.gituser ~/.gituser-backup
fi
cp ${BASE_DIR}/git/.gituser ~/.gituser
for file in {.gitconfig,.gitexcludes,}; do
  if [ -f ~/${file} ]; then
    rm ~/${file}
  fi
  ln -s ${BASE_DIR}/git/${file} ~/${file}
done;

# Vim.
echo "Install vim configuration..."
if [ -f ~/.vimrc ]; then
  cp ~/.vimrc ~/.vimrc-backup
fi
ln -s ${BASE_DIR}/vim/.vimrc ~/.vimrc
