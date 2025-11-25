typeset -ga ls_options

## ls colors
if ls --color=auto / >/dev/null 2>&1; then
	ls_options+=( --color=auto )
elif ls -G / >/dev/null 2>&1; then
	ls_options+=( -G )
fi

## ls natural sort order
if ls --version |& grep -q 'GNU' >/dev/null 2>&1 && ls -v / >/dev/null 2>&1; then
	ls_options+=( -v )
fi

# do we have GNU ls with color-support?
if [[ "$TERM" != dumb ]]; then
	#a1# List files with colors (\kbd{ls \ldots})
	alias ls="command ls ${ls_options:+${ls_options[*]}}"
	#a1# List all files, with colors (\kbd{ls -la \ldots})
	alias la="command ls -la ${ls_options:+${ls_options[*]}}"
	#a1# List files with long colored list, without dotfiles (\kbd{ls -l \ldots})
	alias ll="command ls -l ${ls_options:+${ls_options[*]}}"
	#a1# List files with long colored list, human readable sizes (\kbd{ls -hAl \ldots})
	alias lh="command ls -hAl ${ls_options:+${ls_options[*]}}"
	#a1# List files with long colored list, append qualifier to filenames (\kbd{ls -l \ldots})\\&\quad(\kbd{/} for directories, \kbd{@} for symlinks ...)
	alias l="command ls -l ${ls_options:+${ls_options[*]}}"
else
	alias la='command ls -la'
	alias ll='command ls -l'
	alias lh='command ls -hAl'
	alias l='command ls -l'
fi
