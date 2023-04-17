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
local nerddir=$HOME/.local/share/fonts/NerdFonts
mkdir -p $nerddir
local hack_root=https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack
curl $hack_root/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete.ttf > $nerddir/hack_bold_complete.ttf
curl $hack_root/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete.ttf > $nerddir/hack_bolditalic_complete.ttf
curl $hack_root/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete.ttf > $nerddir/hack_italic_complete.ttf
curl $hack_root/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf > $nerddir/hack_regular_complete.ttf
