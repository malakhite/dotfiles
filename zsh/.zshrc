for cfg in $HOME/.config/zsh/*.zsh; do
    . "$cfg"
done
unset -v cfg

autoload -Uz compinit
compinit

# pnpm
export PNPM_HOME="/Users/scottabbey/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
