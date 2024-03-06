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
end
