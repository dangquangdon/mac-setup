#!/bin/bash

FONT_FACE="JetBrainsMono Nerd Font"
PLUGIN_SHARED_DIR="$HOME/.config/sketchybar/plugins"

sketchybar --add item weather.moon right \
	--set weather.moon \
	background.color=0x667dc4e4 \
	background.padding_right=-1 \
	icon.color=0xff181926 \
	icon.font="$FONT_FACE:Bold:22.0" \
	icon.padding_left=4 \
	icon.padding_right=3 \
	label.drawing=off \
	--subscribe weather.moon mouse.clicked

sketchybar --add item weather right \
	--set weather \
	icon= \
	icon.color=0xfff5bde6 \
	icon.font="$FONT_FACE:Bold:15.0" \
	update_freq=1800 \
	script="$PLUGIN_SHARED_DIR/weather.sh" \
	--subscribe weather system_woke
