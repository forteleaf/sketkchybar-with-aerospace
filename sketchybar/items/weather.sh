#!/bin/sh

source "$CONFIG_DIR/colors.sh"

weather=(
  script="$PLUGIN_DIR/weather.sh"
  click_script="$PLUGIN_DIR/weather.sh"
  icon=󰖐
  icon.font="$FONT:Black:12.0"
)

sketchybar --add item weather right \
  --set weather "${weather[@]}"\
  update_freq=1500 \
  --subscribe weather mouse.clicked

