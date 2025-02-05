#!/bin/sh

source "$CONFIG_DIR/colors.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  [8-9][0-9] | 100)
    ICON="􀛨"
    ICON_COLOR=$GREEN
    ;;
  7[0-9])
    ICON="􀺸"
    ICON_COLOR=$YELLOW
    ;;
  [4-6][0-9])
    ICON="􀺶"
    ICON_COLOR=$ORANGE
    ;;
  [1-3][0-9])
    ICON="􀛩"
    ICON_COLOR=$MAGENTA
    ;;
  [0-9])
    ICON="􀛪"
    ICON_COLOR=$RED
    ;;
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="􀢋"
  ICON_COLOR=$GREEN
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" icon.color=${ICON_COLOR} \
           label=${PERCENTAGE}%
