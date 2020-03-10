# Basic environment
export TERM=xterm-256color
export EDITOR=/usr/bin/nano
export HISTCONTROL=ignoreboth

export PS1="\[\033[38;5;4m\]\w\[\033[38;5;15m\] \[\033[38;5;5m\]\\$ \[\033[00m\]"

# My aliases
if [[ "$(uname)" == "Darwin" ]]; then
    alias l="ls -FG"
    alias ls="ls -FG"
    alias ll="ls -lhFG"
    alias la="ls -ahFG"
    alias lal="ls -lahFG"
    alias d="pwd && echo && ls -FG"
else
    alias l="ls --color -F"
    alias ls="ls --color -F"
    alias ll="ls --color -lhF"
    alias la="ls --color -ahF"
    alias lal="ls --color -lahF"
    alias d="pwd && echo && ls --color -F"
fi

alias rm='rm -i'
alias beep="echo -e '\a'"
alias pgrep='ps aux | grep'
alias gs='git status'

