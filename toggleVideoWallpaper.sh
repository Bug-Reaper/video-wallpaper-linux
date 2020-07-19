#!/bin/bash

SERVICE="mplayer"

if pgrep -x "$SERVICE" >/dev/null

then

    echo "$SERVICE is running"
    killall mplayer &

else

    echo "$SERVICE stopped"
    xwinwrap -ov -fs  -- mplayer -loop 0 -fixed-vo -wid WID -ao null -noconsolecontrols -fs /path/to/your/video.mp4  </dev/null >/dev>

fi

