#################
# Config unstow #
#################

# Stow directories to `$HOME`
for dir in $(ls home); do
    stow -Dd home -t $HOME $dir
done

# Stow directories to `$HOME/.config`
for dir in $(ls config); do
    stow -Dd config -t $HOME/.config $dir
done
