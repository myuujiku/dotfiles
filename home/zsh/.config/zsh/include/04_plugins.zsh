###########
# Plugins #
###########

_plugins=(
    fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
)

for (( i = 1; i <= $#_plugins; i++ )) do
    source $ZSH_CONF_DIR/include/plugins/$_plugins[i]
done
