if status is-interactive
    # not fish compliant
    # [ -f "/home/user/.ghcup/env" ] && source "/home/user/.ghcup/env" # ghcup-env

    if command -q tmux && [ "$TERM" != "tmux" ] && [ -z "$TMUX" ]
		tmux attach
    end

    if command -q fd
		export FZF_DEFAULT_COMMAND='fd -H -E .git .'
    end


    fish_add_path $HOME/.cargo/bin $HOME/.local/share/bob/nvim-bin

    alias cls='clear'
    alias winuser='cd /mnt/c/Users/Omistaja'
    alias br='br -h'
    alias e='exit'
    alias alacritty='cd /mnt/c/Users/Omistaja/AppData/Roaming/alacritty'
    alias lg='lazygit'
    alias t='tmux'
    alias ta='tmux attach'
    alias tconfig='nvim ~/.tmux.conf'
    alias v='nvim'
    alias stmux='tmux source ~/.tmux.conf'
    alias ta='tmux a'
    alias apexconfig='cd /mnt/c/Program Files (x86)/Steam/steamapps/common/Apex Legends/cfg'
    alias ghclone='git clone https://github.com/' 
    alias l='ls -CF'
    alias la='ls -A'
    alias ll='ls -alF'
    alias ls='ls --color=auto'
    alias sl="ls"
    alias ..="cd .."
    alias ...="cd ../.."
    alias ....="cd ../../.."
    alias s="sk --preview='bat {} --color=always'"
    alias ns="nvim -c SessionsLoad"
    alias so="exec zsh"
    alias sk="rg --files -L -. | sk --bind 'ctrl-t:execute(nvim {})+abort' --preview 'bat {} --color=always'"
    alias make="make -s"
end
