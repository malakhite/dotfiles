for cfg in $HOME/.config/zsh/*.zsh; do
    . "$cfg"
done
unset -v cfg

export GPG_TTY=$tty

fpath=(/Users/scottabbey/.docker/completions $fpath)

autoload -Uz compinit
compinit

