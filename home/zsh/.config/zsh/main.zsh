########
# Main #
########

ZSH_CONF_DIR="$HOME/.config/zsh"

for file in $ZSH_CONF_DIR/include/*.zsh; do
    source $file
done
