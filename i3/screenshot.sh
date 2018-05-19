#!/usr/bin/env bash

SCREENSHOT_LOCATION=~/Pictures/screenshots
mkdir -p $SCREENSHOT_LOCATION
TIMESTAMP=$(date +"%d-%m-%Y_%T")
FILENAME=screenshot-$TIMESTAMP.png
maim -i $(xdotool getactivewindow) $SCREENSHOT_LOCATION/$FILENAME
notify-send -t 500 "Screenshot taken" -u low

