dotfiles
========
Synchronize dotfiles with [homeshick][1].

Installation
============
Get and enable homesick:

    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    source $HOME/.homesick/repos/homeshick/homeshick.sh

Download this repo:
    
    homeshick --batch clone git@github.com:OrangeTux/dotfiles

Link the dotfiles.
    
    homeshick link --force

Install Vim bundles:

    vim +BundleInstall +qall

Make zsh default shell and restart the terminal:

    chsh -s /usr/bin/zsh

Dependencies
------------
Vim bundle, [Vim-EasyTags][2] requires [`exuberant-ctags`][3].

[1]:https://github.com/andsens/homeshick
[2]:https://github.com/xolox/vim-easytags
[3]:http://ctags.sourceforge.net/
