#!/bin/env fish
set wd ~

set dir (broot -fh ~)
if ! test -d $dir
	set dir (path dirname $dir)
end
set name (path basename $dir | tr . _)

if test -z $TMUX && test -z $tmux_running
    tmux new-session -s $name -c $dir
    exit 0
end

if not tmux has-session -t=$name 2> /dev/null
    tmux new-session -ds $name -c $dir
end

tmux switch-client -t $name
