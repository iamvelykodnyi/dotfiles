#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Install git configuration"
for file in {.gituser,.gitconfig,.gitexcludes}; do
  if [ -f ~/${file} ]; then
    rm ~/${file} | echo Removed ~/${file}
  fi
  ln -s ${BASE_DIR}/git/${file} ~/${file} | echo Added ~/${file}
done;
unset file;

echo "==> Install nvm configuration"
for file in default-packages; do
  if [ -f ~/.nvm/${file} ]; then
    rm ~/.nvm/${file} | echo Removed ~/${file}
  fi
  ln -s ${BASE_DIR}/nvm/${file} ~/.nvm/${file} | echo Added ~/.nvm/${file}
done;
unset file;

# echo "==> Install nvm configuration"
for file in .vimrc; do
  if [ -f ~/${file} ]; then
    rm ~/${file} | echo Removed ~/${file}
  fi
  ln -s ${BASE_DIR}/vim/${file} ~/${file}  | echo Added ~/${file}
done;
unset file;

# DEPRECATED: save for having example how to use loop in shell script.
# echo "Install fish functions..."
# if [ ! -d ~/.config/omf/functions ]; then
#   mkdir ~/.config/omf/functions
# fi
# for file in {git_dirty_count,git_staged_count,git_stashed_count,git_untracked_count,git_ahead_count}.fish; do
#   if [ -f ~/.config/omf/functions/${file} ]; then
#     rm ~/.config/omf/functions/${file}
#   fi

#   ln -s ${BASE_DIR}/omf/functions/${file} ~/.config/omf/functions/${file}
# done;
# unset file;

# echo "Install fish configuration..."
# for file in {bundle,channel,theme,init.fish,before.init.fish}; do
#   if [ -f ~/.config/omf/${file} ]; then
#     rm ~/.config/omf/${file}
#   fi
#   ln -s ${BASE_DIR}/omf/${file} ~/.config/omf/${file}
# done;
# unset file;
