#!/usr/bin/env sh

# PID로 해당 application의 space ID를 찾아서 focus 이동
space_id=$(yabai -m query --windows | jq -r ".[] | select(.pid == $YABAI_PROCESS_ID) | .space" | head -n 1)

if [ -n "$space_id" ]; then
  yabai -m space --focus "$space_id"
fi
