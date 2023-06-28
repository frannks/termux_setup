# Source scripts
source "$HOME"/.scripts # My Scripts

# Prompt
eval "$(starship init zsh)"  # Theme Starship

# History ZSH
HISTFILE=~/.zhistory # My zsh history
HIST_SIVE=1000 # Size history list
SAVEHIST=500 # Size history list

# Configurations
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]= r:|=' 'l:|=* r:|=*'
zstyle :compinstall filename '/data/data/com.termux/files/home/.zshrc'

autoload -Uz compinit
compinit

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

# Aliases
alias c='clear'
alias upall='pkg update && pkg upgrade'
alias up='pkg update'
alias q='exit'
alias gc='git clone'
alias vim='nvim'
alias mirror='termux-change-repo'
alias st='termux-setup-storage'
