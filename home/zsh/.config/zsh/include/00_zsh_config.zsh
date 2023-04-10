##############
# ZSH Config #
##############

# Disable sounds
unset beep

# Extended globbing
setopt extendedglob

# Load autocompletion
autoload -Uz compinit
compinit

# Completion use 'select' menu
zstyle ':completion:*' menu select

# Match anywhere
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
