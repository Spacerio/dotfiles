<<<<<<<<< Temporary merge branch 1
#!/bin/env fish

set wd ~/.dotfiles
set temp ~/.dotfiles/utils/temp

yazi $wd --chooser-file $temp
if ! test -f $temp
	exit 0
end
set dir (cat $temp)
set name (path basename $dir | tr . _)
rm $temp

if ! test -d $dir
	set dir (path dirname $dir)
end

if test -z $TMUX && test -z $tmux_running
    tmux new-session -s $name -c $dir
    exit 0
end

if not tmux has-session -t=$name 2> /dev/null
    tmux new-session -ds $name -c $dir
end

tmux switch-client -t $name
||||||||| 6916b72
=========
#!/bin/env fish

set wd ~/.dotfiles
set temp ~/.dotfiles/utils/temp

yazi $wd --chooser-file $temp
if ! test -f $temp
	exit 0
end
set dir (cat $temp)
set name (path basename $dir | tr . _)
rm $temp

if ! test -d $dir
	set dir (path dirname $dir)
end

if test -z $TMUX && test -z $tmux_running
    tmux new-session -s $name -c $dir
    exit 0
end

if not tmux has-session -t=$name 2> /dev/null
    tmux new-session -ds $name -c $dir
end

tmux switch-client -t $name
>>>>>>>>> Temporary merge branch 2
