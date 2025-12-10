## Set XDG directories
export XDG_BIN_HOME=${XDG_BIN_HOME:-$HOME/.local/bin}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export BACKUP_DIR=${BACKUP_DIR:-$HOME/.backup}

path=(
    $HOME/.local/bin
    "${path[@]}"
)
# remove empty components to avoid '::' ending up + resulting in './' being in $PATH
path=( "${path[@]:#}" )

if type brew &> /dev/null
then
    eval "$(brew shellenv)"
fi

eval "$(mise activate zsh)"
