# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load custom aliases and functions.
. $HOME/.config/fish/functions/aliases.fish 

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'robbyrussell'
Plugin 'theme'
Plugin 'ssh'

# Enable the autojump plugin.
if test -f /home/auke/.autojump/share/autojump/autojump.fish; 
	. /home/auke/.autojump/share/autojump/autojump.fish; 
end

# Auto-start ssh-agent
start_ssh_agent
