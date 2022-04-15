unsetopt BEEP

eval "$(dircolors -b $ZDOTDIR/dircolors)"

source $ZDOTDIR/completion.zsh

if [[ -f $ZDOTDIR/aliases.zsh ]]; then
	source $ZDOTDIR/aliases.zsh
fi

source $ZDOTDIR/ssh_agent.zsh

bindkey -v
bindkey -v '^R' history-incremental-pattern-search-backward

eval "$(starship init zsh)"
