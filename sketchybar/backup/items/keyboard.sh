#!/bin/bash

keyboard=(
    icon.drawing=off
    label.font="$FONT:Semibold:14.0"
    click_script="osascript -e 'tell application \"System Events\" to keystroke \" \" using {control down, option down}'" # my shortcut to change layout
    script="$PLUGIN_DIR/keyboard.sh"
)

sketchybar --add item keyboard right        \
           --set keyboard "${keyboard[@]}"  \
           --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
           --subscribe keyboard keyboard_change
