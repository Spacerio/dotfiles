#!/usr/bin/env fish

set paths (string collect (cat ~/.dotfiles/utils/tmux_dirs))

# set single_dirs ~/.config ~/.dotfiles ~
set single_dirs (cat ~/.dotfiles/utils/paths)
# set paths (fd -d 1 -t d . (string split " " (echo $paths | string replace "~" "/home/user"))) $single_dirs 
set paths (find (string split " " (echo $paths)) -mindepth 0 -maxdepth 1 -type d) $single_dirs

if test -z argv
	set selected $argv[1]
else
	set selected (string collect $paths | string replace "/home/lait" "~" | sort | fzf)
end

if ! set -q selected
	exit 0
end

set dir (echo $selected | string replace "~" "/home/lait")
# set dir $selected
set name (path basename $dir | tr . _)
echo dir $dir
echo name $name

if test -z $TMUX && test -z $tmux_running
    tmux new-session -s $name -c $dir
    exit 0
end
if not tmux has-session -t=$name 2> /dev/null
    tmux new-session -ds $name -c $dir
end
tmux switch-client -t $name
