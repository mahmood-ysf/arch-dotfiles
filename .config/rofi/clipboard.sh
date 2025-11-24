#!/bin/zsh
cliphist list | rofi -dmenu -i -matching fuzzy -p "Clipboard" | cliphist decode | wl-copy
