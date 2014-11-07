dotfiles
========
Synchronize dotfiles with [homeshick][1].

Installation
============
Automate installation with:

    curl -s https://raw.githubusercontent.com/OrangeTux/dotfiles/master/automate.sh | bash

Or do it manually. Get and enable homesick:

    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    source $HOME/.homesick/repos/homeshick/homeshick.sh

Download this repo:
    
    homeshick --batch clone https://github.com/OrangeTux/dotfiles.git

Link the dotfiles.
    
    homeshick link --force

Install Vim bundles:

    vim +BundleInstall +qall

Install Go binaries:

    :GoInstallBinaries

Install jshint via NPM:

   npm install jshint -g

Make zsh default shell and restart the terminal:

    chsh -s /usr/bin/zsh

Screenshot
----------
![Screenshot](screenshot.png?raw=true "Screenshot")

Dependencies
------------
Vim bundle, [AutoTag][2], requires [`exuberant-ctags`][3]. [Tmux][4] and [Zsh][5] are also required.

[1]:https://github.com/andsens/homeshick
[2]:http://www.vim.org/scripts/script.php?script_id=1343
[3]:http://ctags.sourceforge.net/
[4]:http://tmux.sourceforge.net/
[5]:http://www.zsh.org/
