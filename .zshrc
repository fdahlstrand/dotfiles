# Turn of all beeps
unsetopt BEEP

alias ls="ls -hN --color=auto --group-directories-first"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias vi=$EDITOR
alias v=vi


# Startup SSH agent
SSH_ENV="$HOME/.ssh/environment"
function start_agent {
    echo "Starting new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo "Success"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
}

# Source existing SSH settings, or start server
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

eval "$(starship init zsh)"
