#!/bin/zsh

mkdir $HOME/.config/zsh/include -p

echo Stowing files...
./stow.sh

echo -n "Do you want to install additional packages with cargo (bat, cargo-update, topgrade)? (y/n) "
if read -q; then
    local EXTRA_PACKAGES='bat cargo-update topgrade'
fi
echo

echo Installing dependencies with cargo...
eval "cargo install fd-find starship $EXTRA_PACKAGES --locked"

echo Updating neovim plugins...
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

echo Installing NerdFonts...
./font_inst.sh
