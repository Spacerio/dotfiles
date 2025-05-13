#!/usr/bin/env bash

ROOT_DIR="$HOME/.config/hypr/shaders"
shader=$(find "$ROOT_DIR" | grep "frag" | cat - <(echo "[[EMPTY]]") | rofi -dmenu)

if [[ $shader = "$ROOT_DIR/night.frag" ]]; then
	opacity=$(rofi -dmenu -p "opacity (%)")
	opacity=$(echo "print $opacity/100" | perl)
	filter=$(rofi -dmenu -p "filter (%)")
	filter=$(echo "print $filter/100" | perl)
	# make a temp file so that the modifications won't show up in the git logs
	cp "$ROOT_DIR/night.frag" "$ROOT_DIR/temp.frag"
	[[ $opacity != '' ]] && sed -i "s/#define CUSTOM_FILTER .*/#define CUSTOM_FILTER $filter/" "$ROOT_DIR/temp.frag"
	[[ $filter != '' ]]  && sed -i "s/#define CUSTOM_OPACITY .*/#define CUSTOM_OPACITY $opacity/" "$ROOT_DIR/temp.frag"
	hyprctl keyword decoration:screen_shader "$ROOT_DIR/temp.frag"
	sleep 0.1 # this is needed to give hyprland enough time to read the file
	rm "$ROOT_DIR/temp.frag"
else 
	hyprctl keyword decoration:screen_shader "$shader"
fi

