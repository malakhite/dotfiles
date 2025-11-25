for cfg in $HOME/.config/zsh/*.zsh; do
    . "$cfg"
done
unset -v cfg
