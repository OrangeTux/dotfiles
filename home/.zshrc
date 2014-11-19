# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_CUSTOM=$HOME/.zsh-custom/
ZSH_THEME="solarized-powerline"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vagrant git ssh-agent colored-man colorize cp history tmux vundle autojump pip python fabric debian battery virtualenv autopep8 git-extrasi pylint vi-mode, web-search)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#eval "$(fasd --init auto)"
alias a="source .env/bin/activate"

# Combine `git add` and `git status`.
function gad () {
    git add $@ && git status
}

export EDITOR='vim'
bindkey "^R" history-incremental-search-backward

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

if [ -n "$TERM" ]; then
    export TERM=screen-256color
fi

alias tmux="tmux -2"
alias v=vim
alias s=ssh

# Fix virtualenv error: ImportError: No module named pkg_resources
alias fix_python="curl https://bootstrap.pypa.io/ez_setup.py | python && rm setuptools-[0-9].[0-9].zip"

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/auke/bin
export GOPATH=$HOME/projects/go
export PATH=$PATH:/home/auke/projects/go/bin
export PATH=$PATH:/home/auke/downloads/activator

alias ut="sudo service ntp stop ; sudo ntpdate -s time.nist.gov ; sudo service ntp start"
