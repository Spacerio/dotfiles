#!/usr/bin/env bash

if [ -f shell.nix ]; then
	nix-shell
else
	fish
fi

exit 0

# TODO: check if this actually works
# if [ "$(command -v nix &> /dev/null)" ] && [ -f flake.nix ] && [ "$(nix develop check)" ]; then
# 	nix develop
# fi
