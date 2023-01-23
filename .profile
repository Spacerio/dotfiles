# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

alias cls='clear'
alias winuser='cd /mnt/c/Users/Omistaja'
alias br='br -h'
alias e='exit'
alias alacritty='cd /mnt/c/Users/Omistaja/AppData/Roaming/alacritty'
alias lg='lazygit'
alias t='tmux'
alias tconfig='nvim ~/.tmux.conf'
alias v='nvim'
alias stmux='tmux source ~/.tmux.conf'
alias ta='tmux a'
alias apexconfig='cd /mnt/c/Program Files (x86)/Steam/steamapps/common/Apex Legends/cfg'
alias ghc='git clone https://github.com/' 
alias nvim='nvim.appimage'
