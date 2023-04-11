mkdir $HOME/.config/zsh/include -p

./stow.sh

# Install cargo dependencies
cargo install fd-find starship --locked
