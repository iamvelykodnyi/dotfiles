source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh
# Load the oh-my-zsh's plugins
antigen bundle git
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
alias zshconfig="code ~/.zshrc"
