#!/bin/sh

source "$CONFIG_DIR/colors.sh"

volume_slider=(
  script="$PLUGIN_DIR/volume.sh"
  updates=on
  label.drawing=off
  icon.drawing=off
  slider.highlight_color=$COLOR_BLUE
  slider.background.height=5
  slider.background.corner_radius=16
  slider.background.color=$BACKGROUND_2
  slider.knob=􀀁
  slider.knob.drawing=on
)

volume_icon=(
  click_script="$PLUGIN_DIR/volume_click.sh"
  label.font="$FONT:Regular:14.0"
)

status_bracket=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
)
# check -> OK
# echo "items_volume.sh" $CONFIG_DIR $PLUGIN_DIR >> ~/aaaa

sketchybar --add slider volume right              \
           --set volume "${volume_slider[@]}"     \
           --subscribe volume volume_change       \
                              mouse.clicked       \
                              mouse.entered       \
                              mouse.exited        \
                              mouse.exited.global \
           --add item volume_icon right           \
           --set volume_icon "${volume_icon[@]}"

sketchybar --add bracket status brew github.bell wifi volume_icon \
           --set status "${status_bracket[@]}"

