#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ "$SHELL" != *"zsh"* ]]; then
  echo "==> Set zsh to default shell"
  chsh -s $(which zsh)
fi

echo "==> Install Antigen"
curl -L git.io/antigen > ~/antigen.zsh | echo antigen installed

echo "==> Install zsh configuration"
if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc-backup | echo make a backup for current .szshrc file.
fi
ln -s ${BASE_DIR}/zsh/.zshrc ~/.zshrc

echo "==> Install config for Powerlevel10k theme"
if [ -f ~/.p10k.zsh ]; then
  mv ~/.p10k.zsh ~/.p10k.zsh-backup | echo make a backup for current .p10k.zsh file.
fi
ln -s ${BASE_DIR}/zsh/.p10k.zsh ~/.p10k.zsh
