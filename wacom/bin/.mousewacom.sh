#!/bin/bash

DEVICE="Wacom Intuos PT M"

STYLUS="$DEVICE Pen stylus"
PAD="$DEVICE Pad pad"
ERASER="$DEVICE Pen eraser"

# STYLUS
xsetwacom set "$STYLUS" TabletPCButton on # Activate seperate button only on click
xsetwacom set "$STYLUS" Button 1 1 # Left click
xsetwacom set "$STYLUS" Button 2 2 # Middle click
xsetwacom set "$STYLUS" Button 3 3 # Right click

xsetwacom set "$STYLUS" Mode "Relative"

# PAD
xsetwacom set "$PAD" Button 9 "key ctrl y" # Step forward
xsetwacom set "$PAD" Button 8 "key ctrl z" # Step back
xsetwacom set "$PAD" Button 3 "key plus" # zoom in
xsetwacom set "$PAD" Button 1 "key minus" # zoom out

### PAD BELEGUNG:
# lower left: 1
# upper left: 3
# lower right: 8
# upper right: 9
