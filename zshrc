# Shell functions
source ~/.shell/functions.sh

# Allow local customizations in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zsh_local_before.zsh ]; then
    source ~/.zsh_local_before.zsh
fi

# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Environment
source ~/.shell/env.sh

# Bootstrap
source ~/.shell/bootstrap.sh

# Aliases
source ~/.shell/aliases.sh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zsh_local_after.zsh ]; then
    source ~/.zsh_local_after.zsh
fi

# Allow private customizations (not checked in to version control)
if [ -f ~/.shell_private ]; then
    source ~/.shell_private
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
