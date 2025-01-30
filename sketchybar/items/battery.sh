#!/bin/sh

battery=(
  script="$PLUGIN_DIR/battery.sh"
  icon.font="$FONT:Regular:16.0"
  padding_right=3
  padding_left=0
  label.drawing=off
  update_freq=120
  updates=when_shown
)
sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --subscribe battery power_source_change \
           mouse.clicked

