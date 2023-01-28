dir=`fd -Htd . ~ | sk`
tmux new -s dir -d -c $dir
tmux -a dir
