#!/bin/sh

STATUS=$(sudo ufw status | grep Status | tr -d ' ' | cut -d ':' -f2)
if  [ "$STATUS" = "active" ]; then
    icon=" "
    echo "%{F#00994C}$icon%{F- } [On]"
else
    icon=" "
    echo %{F#FF6666}$icon%{F- } [Off]
fi

echo "$icon"
