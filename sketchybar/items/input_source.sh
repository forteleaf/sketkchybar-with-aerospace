#!/bin/sh

sketchybar --add item input_source right
sketchybar --set input_source \
    icon.font="$FONT:Regular:20.0" \
    script="$PLUGIN_DIR/get_input_source.sh" \
    icon.color=0xffffffff \
    update_freq=1 


