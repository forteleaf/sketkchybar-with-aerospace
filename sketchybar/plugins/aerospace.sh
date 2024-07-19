#!/usr/bin/env bash

echo \$FOCUSED_WORKSPACE: $FOCUSED_WORKSPACE, \$NAME: $NAME \$1: $1 >> ~/aaaa

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi



# MAIN_COLOR=0xffa17fa7
# ACCENT_COLOR=0xffe19286
#
# echo $NAME > ~/debug_skekychybar
#
# if [ "$1" = "change-focused-window" ]; then
#     echo "change-focused-window"
#     focused_window_info=$(aerospace list-windows --focused)
#     focused_window_id=$(echo $focused_window_info | awk -F ' \\| ' '{print $1}')
#     if [ "$2" = "$focused_window_id" ]; then
#         sketchybar --set $NAME icon.color=$ACCENT_COLOR
#     else
#         sketchybar --set $NAME icon.color=$MAIN_COLOR
#     fi
# fi
#
# if [ "$1" = "change-focused-workspace" ]; then
#     echo "change-focused-workspace"
#     focused_workspace=$(aerospace list-workspaces --focused)
#     if [ "$2" = "$focused_workspace" ]; then
#         sketchybar --set $NAME label.color=$ACCENT_COLOR
#     else
#         sketchybar --set $NAME label.color=$MAIN_COLOR
#     fi
# fi
#
# if [ "$1" = "move-window-within-workspace" ]; then
#     echo "move-window-within-workspace"
#     focused_workspace=$(aerospace list-workspaces --focused)
#     if [ "$2" = "$focused_workspace" ]; then
#         sketchybar --set $NAME label.color=$ACCENT_COLOR
#     else
#         sketchybar --set $NAME label.color=$MAIN_COLOR
#     fi
# fi
