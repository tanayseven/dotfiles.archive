#!/usr/bin/env bash

killall polybar

xrdb ~/.Xresources

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top-bar &
    MONITOR=$m polybar --reload bottom-bar &
  done
else
  polybar --reload top-bar &
  polybar --reload bottom-bar &
fi

