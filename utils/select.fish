#!/usr/bin/env fish
set name (tmux list-sessions | cut -d ":" -f1 | fzf --tmux)

if [ -z $name ]
	exit 0
end

tmux switch-client -t $name
