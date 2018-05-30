source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh
# Load the oh-my-zsh's plugins
antigen bundle gitfast
antigen bundle vi-mode
antigen bundle npm
antigen bundle node

# Load other plugins
antigen bundle lukechilds/zsh-nvm

# Load the theme
antigen theme sergiivelykodnyi/vigeo-zsh-theme

# Tell antigen that you're done
antigen apply

# Aliases
alias zsh-config="code ~/.zshrc"
alias zsh-update-plugin="antigen update && antigen cache-gen"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
