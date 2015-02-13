dotfiles
========
Synchronize dotfiles with [homeshick][1].

Installation
============
Or do it manually. Get and enable homesick:

    $ git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    $ source $HOME/.homesick/repos/homeshick/homeshick.sh

Download this repo:
    
    $ homeshick --batch clone https://github.com/OrangeTux/dotfiles.git

Link the dotfiles.
    
    $ homeshick link --force

Install [Vundle][vundle]:

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Install Vim bundles:

    vim +PluginInstall +qall

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
The following system binaries are required.

    - `[autojump][autojump]`, a `cd` command that learns
    - `[dunst][dunst]`, a notification daemon.
    - `[feh][feh]` is required for setting the background of desktop
    - `[irssi][irrsi]`, an IRC client
    - `[newsbeuter][newsbeuter]`, a RSS reader
    - `[tmux][tmux]`, a terminal multiplexer
    - `[vifm][vifm]`, a ncurses based file manager
    - `[zsh][zsh]`, an alternative Unix shell

`feh` 
Vim bundle, [AutoTag][2], requires [`exuberant-ctags`][3]. [Tmux][4] and [Zsh][5] are also required.
..
[autojump]:https://github.com/joelthelion/autojump
[dunst]:http://knopwob.org/dunst/index.html
[feh]:http://feh.finalrewind.org/
[irssi]:http://feh.finalrewind.org/
[newsbeuter]:http://www.newsbeuter.org/
[tmux]:http://tmux.sourceforge.net/
[scrot]:https://launchpad.net/ubuntu/+source/scrot
[vifm]:http://vifm.sourceforge.net/
[zsh]:http://www.zsh.org/


[1]:https://github.com/andsens/homeshick
[2]:http://www.vim.org/scripts/script.php?script_id=1343
[3]:http://ctags.sourceforge.net/
[4]:http://tmux.sourceforge.net/
[5]:http://www.zsh.org/
