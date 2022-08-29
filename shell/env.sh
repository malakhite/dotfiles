# Opt out of Microsoft dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# History settings
export HISTFILESIZE=100000
export HISTSIZE=10000
export SAVEHIST=100000
export HISTFILE="$HOME/.zsh_history"

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY