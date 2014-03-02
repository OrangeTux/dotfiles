# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

length=8
if [ $(date +%H) -gt 9 ]; then
    length=9
fi

# Horizontal line.
local prefix='$(if [[ -z $i ]] ; then i=$(tput cols) ; while (( i-- > $length )) ; do echo -n '—' ; done ; echo -n " " ; unset i ; fi)%F{cyan}%*%f'

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" [%F{cyan}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{green}o"

# Prompt format: \n # USER at MACHINE in DIRECTORY on git:BRANCH STATE [TIME] \n $
PROMPT="${prefix}%B%F{blue}#%F \
%B%F{yellow}${current_dir}%f%b\
${git_info} \
%B%F{red}$ %f%b"
