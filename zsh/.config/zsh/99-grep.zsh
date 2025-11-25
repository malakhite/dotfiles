typeset -ga grep_options

## grep colors
if grep --color=auto -q "a" <<< "a" >/dev/null 2>&1; then
	grep_options+=( --color=auto )
fi

if (( $#grep_options > 0 )); then
	o=${grep_options:+"${grep_options[*]}"}
	#a2# Execute \kbd{grep -{}-color=auto}
	alias grep='grep '$o
	alias egrep='egrep '$o
	unset o
fi
