# Use colors in coreutils
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# ls aliases
alias ll='ls -lahH'
alias la='ls -AH'
alias l='ls -H'

# Protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# cd to git root
alias cdgr='cd "$(git root)"'

# vim launches nvim
alias vim='nvim'

# disk usage
alias df='df -h'
alias du='du -h -c'

alias lpath='echo $PATH | tr ":" "\n"'		# list the PATH separated by new lines
