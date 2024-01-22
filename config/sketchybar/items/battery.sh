#!/bin/bash

battery=(
	script="$PLUGIN_DIR/battery.sh"
	icon.font="$FONT:Medium:19.0"
	padding_right=5
	padding_left=0
	label.drawing=off
	update_freq=120
	updates=on
)

sketchybar --add item battery right \
	--set battery "${battery[@]}" \
	--subscribe battery power_source_change system_woke

# sketchybar --add item battery right \
# 	--set battery \
# 	update_freq=20 \
# 	script="$PLUGIN_DIR/battery.sh"
