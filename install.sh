####################
# Config installer #
####################

mkdir $HOME/.config/zsh/include -p

# Stow directories to `$HOME`
for dir in $(ls home); do
    stow -d home -t $HOME $dir
done

# Stow directories to `$HOME/.config`
for dir in $(ls config); do
    stow -d config -t $HOME/.config $dir
done

# Install cargo dependencies
cargo install fd-find starship --locked
