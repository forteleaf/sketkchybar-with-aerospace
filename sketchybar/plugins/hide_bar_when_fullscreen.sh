#!/bin/bash

# 전체 화면 모드 감지
is_fullscreen() {
    osascript -e 'tell application "System Events" to return value of attribute "AXFullScreen" of first window of (first application process whose frontmost is true)'
}

# Sketchybar 상태 변경
toggle_sketchybar() {
    if [ "$(is_fullscreen)" = "true" ]; then
        sketchybar --bar hidden=true
    else
        sketchybar --bar hidden=false
    fi
}

toggle_sketchybar
