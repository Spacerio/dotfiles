#!/usr/bin/env bash

shader=$(find "$HOME"/.config/hypr/shaders/ | grep "frag" | cat - <(echo "[[EMPTY]]")| rofi -dmenu)

opacity=$(rofi -dmenu -p "opacity (%)")
opacity=$(echo "print $opacity/100" | perl)
filter=$(rofi -dmenu -p "filter (%)")
filter=$(echo "print $filter/100" | perl)

# TODO: figure out a way that will not intervene with git updates
sed -i "s/#define CUSTOM_FILTER .*/#define CUSTOM_FILTER $filter/" ~/.config/hypr/shaders/night.frag
sed -i "s/#define CUSTOM_OPACITY .*/#define CUSTOM_OPACITY $opacity/" ~/.config/hypr/shaders/night.frag

hyprctl keyword decoration:screen_shader "$shader"
