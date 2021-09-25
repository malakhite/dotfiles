# Use colors in coreutils
alias ls='ls --color=auto'
alias grep='grep --color'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls'

# Protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# cd to git root
alias cdgr='cd "$(git root)"'
