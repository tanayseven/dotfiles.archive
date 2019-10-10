#!/usr/bin/env bash

killall polybar

xrdb ~/.Xresources

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload tanaybar &
  done
else
  polybar --reload example &
fi

