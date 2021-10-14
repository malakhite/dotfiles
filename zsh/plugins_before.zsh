# External plugins (initialized before)

# zsh-completions
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)

# Starship prompt
eval "$(starship init zsh)"

# fuzzy file finder
path_prepend "$HOME/.fzf/bin"

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

autoload -Uz compinit && compinit
