alias v "nvim"
alias vi "nvim"
alias vim "nvim"

alias a ". .env/bin/activate.fish"

alias gst "git status"
alias gc "git checkout"
alias gd "git diff"
alias gcmsg "git commit -m"
alias gm "git merge --no-ff"
alias gpsh "git push origin HEAD"
alias gplh "git push origin HEAD"

function gad
	git add $argv; and git status
end


alias ai "sudo apt-get install $argv"
alias adu "sudo apt-get update && and sudo apt-get upgrade"

# Launch ssh-agent. Copied from https://gist.github.com/rsff/9366074.
function start_ssh_agent
	setenv SSH_ENV $HOME/.ssh/environment
	if [ -n "$SSH_AGENT_PID" ]
    		ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
    		if [ $status -eq 0 ]
        		test_identities
    		end
	else
    		if [ -f $SSH_ENV ]
        		. $SSH_ENV > /dev/null
    		end
    	ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null
    	if [ $status -eq 0 ]
        	test_identities
    	else
    		echo "Initializing new SSH agent ..."
	        ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
    		echo "succeeded"
		chmod 600 $SSH_ENV 
		. $SSH_ENV > /dev/null
    		ssh-add
	end
	end
end


function test_identities
    ssh-add -l | grep "The agent has no identities" > /dev/null
    if [ $status -eq 0 ]
        ssh-add
        if [ $status -eq 2 ]
            start_agent
        end
    end
end
