## ZSH Options
setopt append_history	# append history list to the history file
setopt share_history	# make history available to multiple sessions
setopt extended_history	# save timestamps and duration
setopt histignorespace	# remove command lines starting with a space from history
setopt auto_cd		# if command is just a directory, cd to that directory
setopt extended_glob	# allows globs for filename generation (grep)
setopt longlistjobs	# display PID when suspending a process
setopt notify		# report status of background jobs immediately
setopt hash_list_all	# hash entire command for completions
setopt completeinword	# allow partial completions
setopt nohup		# don't SIGHUP backgrounded processes
setopt auto_pushd	# push the old directory to history when cd
setopt pushd_ignore_dups	# don't push the same dir twice
setopt noglobdots	# don't include dotfiles in globs
setopt noshwordsplit	# ZSH style word splitting
setopt unset		# don't error for unset parameters
