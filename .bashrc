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

# File navigation
alias ll='ls -al'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Miscellaneous
alias md='mkdir -p'

# Get Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Format to user@host:/path/to/directory (branch-name)
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\$(parse_git_branch)\[\033[m\]\$\n==> "

# Path
export PATH=$HOME/bin:$PATH
