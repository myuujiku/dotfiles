#!/bin/sh

git clone -n --depth=1 --filter=tree:0 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts && git sparse-checkout set --no-cone patched-fonts/Noto /install.sh
git checkout
./install.sh && cd .. && rm -rf nerd-fonts
