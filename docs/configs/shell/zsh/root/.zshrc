# Created by `pipx` on 2025-01-01 07:56:22
export PATH="$PATH:/root/.local/bin"

# Load colors for zsh
autoload -U colors && colors

# Define the prompt (similar to your current user prompt)
PROMPT=$'┌─[%F{#FF6B6B}root%f@%F{#FF6B6B}cloud%f]─[%F{#6FFF4F}%~%f]\n└──╼ %F{#FF6B6B}#%f '

# Enable color support for ls and set LS_COLORS
export LS_COLORS="di=36:ln=36:so=32:pi=33:ex=38;5;203:bd=36:cd=36:su=38;5;203:sg=38;5;203:tw=32:ow=33"
alias ls='ls --color=auto'

# Ensure history is enabled, as it is for your user
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=10000
setopt SHARE_HISTORY
