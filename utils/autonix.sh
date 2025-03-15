#!/usr/bin/env bash

# TODO: further testing, works for now
if [ -f flake.nix ] && [ -n "$(nix flake show | grep shell)" ]; then
	fish -c "nix develop"
elif [ -f shell.nix ]; then
	fish -c "nix-shell --run $SHELL"
else
	fish
fi

exit 0
