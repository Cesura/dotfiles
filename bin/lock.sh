#!/bin/bash
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
composite -geometry +576+336 /home/brad/.i3/lock.png /tmp/screenshotblur.png /tmp/screenshotblur.png
i3lock --textcolor=ffffff00 --insidecolor=ffffff00 --ringcolor=ffffff00 \
        --linecolor=feefff00 --keyhlcolor=3bdbbc80 --ringvercolor=00000000 \
        --insidevercolor=0000001c --ringwrongcolor=00000055 --insidewrongcolor=0000001c \
  	-i /tmp/screenshotblur.png
