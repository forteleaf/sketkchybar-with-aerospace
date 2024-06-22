#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting
#

if [ "$SENDER" = "front_app_switched" ]; then
  #echo name:$NAME INFO: $INFO SENDER: $SENDER, SID: $SID >> ~/aaaa
  sketchybar --set "$NAME" label="$INFO" icon.background.image="app.$INFO" icon.background.image.scale=0.8

  apps=$(aerospace list-windows --workspace $(aerospace list-workspaces --focused) | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app
    do
      icon_strip+=" $($CONFIG_DIR/plugins/icon_map.sh "$app")"
    done <<< "${apps}"
  else
    icon_strip=" —"
  fi
  sketchybar --animate sin 10 --set space.$(aerospace list-workspaces --focused) label="$icon_strip"
fi
