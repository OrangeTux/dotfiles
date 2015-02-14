dotfiles
========
Synchronize dotfiles with [homeshick][homeshick].

Installation
============
Setup everything automatically with...:

    $ curl -s https://raw.githubusercontent.com/OrangeTux/dotfiles/master/automate.sh | bash

...or do it manually. Get and enable homesick:

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

Make zsh default shell and restart the terminal:

    chsh -s /usr/bin/zsh

Screenshot
----------
![Screenshot](screenshot.png?raw=true "Screenshot")

Dependencies
------------
The following system binaries are required.

* [ag][ag] a code searching tool similar to `ack`, with a focus on speed
* [autojump][autojump] a `cd` command that learns
* [dunst][dunst], a notification daemon.
* [feh][feh] is required for setting the background of desktop
* [fzf][fzf] a fuzzy finder for your shell
* [irssi][irssi] an IRC client
* [newsbeuter][newsbeuter], a RSS reader
* [tmux][tmux], a terminal multiplexer
* [scrot][scrot], for taking screenshots
* [vifm][vifm], a ncurses based file manager
* [zsh][zsh], an alternative Unix shell

[ag]:https://github.com/ggreer/the_silver_searcher
[autojump]:https://github.com/joelthelion/autojump
[dunst]:http://knopwob.org/dunst/index.html
[feh]:http://feh.finalrewind.org/
[fzf]:https://github.com/junegunn/fzf
[irssi]:http://www.irssi.org/
[newsbeuter]:http://www.newsbeuter.org/
[tmux]:http://tmux.sourceforge.net/
[scrot]:https://launchpad.net/ubuntu/+source/scrot
[vifm]:http://vifm.sourceforge.net/
[zsh]:http://www.zsh.org/

[homeshick]:https://github.com/andsens/homeshick
[vundle]:https://github.com/gmarik/Vundle.vim
