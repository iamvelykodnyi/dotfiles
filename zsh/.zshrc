# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source $HOME/antigen.zsh
# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
# Fish-like auto suggestions
# antigen bundle zsh-users/zsh-autosuggestions
# Extra zsh completions
# antigen bundle zsh-users/zsh-completions
# nmv
antigen bundle lukechilds/zsh-nvm

# Load the theme
antigen theme robbyrussell

# Tell antigen that you're done
antigen apply

# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
