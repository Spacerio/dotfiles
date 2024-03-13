#!/bin/env fish

set temp ~/.dotfiles/utils/temp

joshuto --file-chooser --output-file $temp
set file (cat $temp)
set dir (path dirname < $temp)
set name (path basename $dir | tr . _)
rm $temp

if test -z $TMUX && test -z $tmux_running
    tmux new-session -s $name -c $dir
    exit 0
end

if not tmux has-session -t=$name 2> /dev/null
    tmux new-session -ds $name -c $dir
end

tmux switch-client -t $name \; \
	neww "nvim $file"
