#############
# Variables #
#############

fpath=("$ZSH_CONF_DIR/completions" $fpath)

# Binary paths
typeset -U path PATH
path=(
    "~/.local/bin"
    $path
)
export PATH

# Set editor to neovim
EDITOR="/bin/nvim"

# History
HISTSIZE=1000
SAVEHIST=1000
