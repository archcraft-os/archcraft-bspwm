#!/usr/bin/env bash

## Copyright (C) 2020-2026 Aditya Shakya <adi1090x@gmail.com>
##
## Apply wallpaper on bspwm startup

WALLPAPER="$HOME/.config/bspwm/themes/default/wallpaper"

## For single monitor
#hsetroot -root -cover "$WALLPAPER"

## For all monitors
hsetroot -cover "$WALLPAPER"
