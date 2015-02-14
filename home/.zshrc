# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(extract git ssh-agent colored-man colorize cp history vundle autojump pip python fabric debian battery virtualenv autopep8 git-extrasi pylint vi-mode)

# User configuration

source $ZSH/oh-my-zsh.sh
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# Source Fuzzy File Finder if installed.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Don't show duplicate entries in history.
setopt hist_ignore_all_dups

source $HOME/.aliases_and_functions
