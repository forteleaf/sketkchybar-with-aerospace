#!/bin/sh

sketchybar --add item input_source right
sketchybar --set input_source \
    script="$PLUGIN_DIR/get_input_source.sh" \
    update_freq=1 \
    label.color=0xff000000 \
    icon.font="$FONT:Regular:15.0" \


