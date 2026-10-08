export FZF_DEFAULT_COMMAND="fd --type file --strip-cwd-prefix --color=always"
export FZF_DEFAULT_OPTS="--ansi"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

