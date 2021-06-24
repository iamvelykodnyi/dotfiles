# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh
# Load the plugins
antigen bundle lukechilds/zsh-nvm

# Load the theme
# https://github.com/romkatv/powerlevel10k
antigen theme romkatv/powerlevel10k

# Tell antigen that you're done
antigen apply

# Use the oh-my-zsh's plugins
plugins=(
  gh
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Aliases
alias zshconfig="code ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
