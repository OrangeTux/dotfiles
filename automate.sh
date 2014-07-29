#!/usr/bin/env bash
HOMESHICK_DIR="$HOME"/.homesick/repos/homeshick

# Get Homeshick
if [ ! -d "$HOMESHICK_DIR" ]; then
    git clone git://github.com/andsens/homeshick.git $HOMESHICK_DIR
fi

source $HOMESHICK_DIR/homeshick.sh

# Get dotfiles
homeshick --batch clone https://github.com/OrangeTux/dotfiles.git
homeshick link --force

# Install Vim bundles
vim +BundleInstall +qall

# Change shell
echo "Provide your password to change shell."
chsh -s /usr/bin/zsh
echo "Done!"
