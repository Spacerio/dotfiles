#!/usr/bin/env fish
set name (tmux list-sessions | cut -d ":" -f1 | fzf --tmux)

tmux switch-client -t $name
